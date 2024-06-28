<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Kết quả trắc nghiệm</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-color: #f4f4f9;
                color: #333;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                overflow: hidden; /* Prevent body from scrolling */
            }
            .container {
                background-color: #fff;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                max-width: 600px;
                width: 100%;
                max-height: 90vh; /* Limit the height of the container */
                overflow-y: auto; /* Enable vertical scrolling */
                text-align: center; /* Center align text inside the container */
            }
            h1 {
                text-align: center;
                color: #4CAF50;
            }
            .result {
                margin-top: 20px;
                font-size: 20px;
                text-align: center;
            }
            .result p {
                font-size: 18px;
                margin-bottom: 10px;
            }
            .button-group {
                display: flex;
                flex-direction: column; /* Stack buttons vertically */
                align-items: center;
                gap: 10px; /* Space between buttons */
                margin-top: 20px; /* Add margin top to separate button group from the result text */
            }
            .button-group button, .button-group a {
                background-color: #4CAF50;
                color: #fff;
                width: 154px; /* Set fixed width */
                height: 42px; /* Set fixed height */
                display: flex;
                justify-content: center;
                align-items: center;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
                text-decoration: none; /* Remove underline from anchor tag */
                text-align: center;
                word-wrap: break-word; /* Allow text to wrap inside the button */
            }
            .button-group button:hover, .button-group a:hover {
                background-color: #45a049;
            }
        </style>
        <!-- Add SweetAlert2 CSS and JS from CDN -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1>Kết quả trắc nghiệm</h1>
            <div class="result">
                <p>Số câu trả lời đúng: ${correctAnswers}/${totalQuestions}</p>
                <p>Số câu bạn đã điền: ${countUserTick}</p>
                <p>Số câu bạn chưa điền : ${totalQuestions - countUserTick}</p>
                <p>Điểm của bạn: ${score}%</p>
            </div>
            <div class="button-group">
                <form id="resetForm" action="coursequiz" method="GET" style="margin: 0;">
                    <input type="hidden" name="quizid" value="${quizid}">
                    <c:if test="${attemptCount <= 3 }">
                        <input type="hidden" name="action" value="resetquiz">
                        <button type="button" onclick="confirmReset()">Làm lại</button>
                    </c:if>
                    <c:if test="${attemptCount > 3}">
                        <p>Bạn đã làm lại quá 3 lần.</p>
                    </c:if>
                </form>
                <form action="coursequiz" method="GET" style="margin: 0;">
                    <input type="hidden" name="quizid" value="${quizid}">
                    <input type="hidden" name="action" value="viewdetails">
                    <button type="submit">Xem chi tiết bài làm</button>
                </form>
                <a href="/OnlineLearning/course" class="btn">Quay lại trang chủ</a>
            </div>
        </div>
    </body>
</html>
<script>
    function confirmReset() {
        Swal.fire({
            title: 'Bạn có chắc chắn muốn làm lại không?',
            text: 'Hành động này sẽ xóa toàn bộ câu trả lời bạn đã chọn.',
            showCancelButton: true,
            confirmButtonText: 'Làm lại',
            cancelButtonText: 'Hủy',
            icon: 'question',
            customClass: {
                confirmButton: 'btn btn-success',
                cancelButton: 'btn btn-danger'
            },
            padding: '1rem'// Thêm padding vào cửa sổ Swal.fire
        }).then((result) => {
            if (result.isConfirmed) {
                document.getElementById('resetForm').submit();
            }
        });

    }
</script>
