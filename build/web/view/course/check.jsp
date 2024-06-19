<%-- 
    Document   : check
    Created on : Jun 19, 2024, 10:03:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trắc nghiệm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f0f0f0;
        }
        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
        }
        .question {
            margin-bottom: 20px;
        }
        .question h3 {
            margin-bottom: 10px;
        }
        .question label {
            display: block;
            margin-bottom: 5px;
        }
        button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
        .result {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bài Trắc Nghiệm</h1>
        <form id="quizForm">
            <div class="question">
                <h3>Câu 1: Thủ đô của Việt Nam là?</h3>
                <label><input type="radio" name="question1" value="a"> TP. Hồ Chí Minh</label>
                <label><input type="radio" name="question1" value="b"> Hà Nội</label>
                <label><input type="radio" name="question1" value="c"> Đà Nẵng</label>
                <label><input type="radio" name="question1" value="d"> Cần Thơ</label>
            </div>
            <div class="question">
                <h3>Câu 2: 2 + 2 bằng bao nhiêu?</h3>
                <label><input type="radio" name="question2" value="a"> 3</label>
                <label><input type="radio" name="question2" value="b"> 4</label>
                <label><input type="radio" name="question2" value="c"> 5</label>
                <label><input type="radio" name="question2" value="d"> 6</label>
            </div>
            <div class="question">
                <h3>Câu 3: Con sông dài nhất thế giới là?</h3>
                <label><input type="radio" name="question3" value="a"> Sông Amazon</label>
                <label><input type="radio" name="question3" value="b"> Sông Nile</label>
                <label><input type="radio" name="question3" value="c"> Sông Mississippi</label>
                <label><input type="radio" name="question3" value="d"> Sông Hằng</label>
            </div>
            <div class="question">
                <h3>Câu 4: Thành phố nào là lớn nhất ở Mỹ?</h3>
                <label><input type="radio" name="question4" value="a"> Los Angeles</label>
                <label><input type="radio" name="question4" value="b"> New York</label>
                <label><input type="radio" name="question4" value="c"> Chicago</label>
                <label><input type="radio" name="question4" value="d"> Houston</label>
            </div>
            <div class="question">
                <h3>Câu 5: Ai là người sáng lập Microsoft?</h3>
                <label><input type="radio" name="question5" value="a"> Steve Jobs</label>
                <label><input type="radio" name="question5" value="b"> Bill Gates</label>
                <label><input type="radio" name="question5" value="c"> Mark Zuckerberg</label>
                <label><input type="radio" name="question5" value="d"> Elon Musk</label>
            </div>
            <button type="button" onclick="submitQuiz()">Submit</button>
        </form>
        <div class="result" id="result"></div>
    </div>

    <script>
        function submitQuiz() {
            const answers = {
                question1: 'b',
                question2: 'b',
                question3: 'b',
                question4: 'b',
                question5: 'b'
            };

            let score = 0;
            const form = document.getElementById('quizForm');
            const formData = new FormData(form);

            for (const [question, answer] of Object.entries(answers)) {
                if (formData.get(question) === answer) {
                    score++;
                }
            }

            document.getElementById('result').textContent = `Bạn đã trả lời đúng ${score} trên 5 câu.`;
        }
    </script>
</body>
</html>

