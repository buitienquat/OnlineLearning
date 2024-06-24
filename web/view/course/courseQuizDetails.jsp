<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết bài làm</title>
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
            overflow: hidden;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
            max-height: 90vh;
            overflow-y: auto;
        }
        h1 {
            text-align: center;
            color: #4CAF50;
        }
        .question {
            margin-bottom: 20px;
        }
        .question p {
            font-size: 18px;
        }
        .answer {
            margin-left: 20px;
        }
        .correct {
            color: green;
        }
        .incorrect {
            color: red;
        }
        .selected-incorrect {
            color: red;
            font-weight: bold;
        }
        .back-button {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .back-button button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .back-button button:hover {
            background-color: #45a049;
        }
    </style>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Chi tiết bài làm</h1>
        <c:forEach var="userAnswer" items="${listUserAnswers}" varStatus="status">
            <div class="question">
                <p><strong>Câu hỏi ${status.index + 1}::</strong> ${questions[userAnswer.getQuestionId()].getQuestionText()}</p>
                <div class="answers">
                    <c:forEach var="answer" items="${questionAnswersMap[userAnswer.getQuestionId()]}">
                        <p class="answer">
                            <c:choose>
                                <c:when test="${answer.isIsCorrect()}">
                                    <span class="correct">${answer.getAnswerText()} (Đúng)</span>
                                </c:when>
                                <c:otherwise>
                                    <c:if test="${answer.getAnswerID() == selectedAnswers[userAnswer.getQuestionId()].getAnswerID()}">
                                        <span class="selected-incorrect">${answer.getAnswerText()} (Bạn đã chọn)</span>
                                    </c:if>
                                    <c:if test="${answer.getAnswerID() != selectedAnswers[userAnswer.getQuestionId()].getAnswerID()}">
                                        <span>${answer.getAnswerText()}</span>
                                    </c:if>
                                </c:otherwise>
                            </c:choose>
                        </p>
                    </c:forEach>
                </div>
                <p><strong>Đáp án đúng:</strong> ${correctAnswers[userAnswer.getQuestionId()].getAnswerText()}</p>
            </div>
        </c:forEach>
        <div class="back-button">
            <button onclick="goBack()">Quay lại</button>
        </div>
    </div>
</body>
</html>
