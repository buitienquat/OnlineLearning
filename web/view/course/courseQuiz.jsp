<%-- 
    Document   : check
    Created on : Jun 19, 2024, 10:03:38 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Trắc nghiệm trực tuyến</title>
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
                margin-bottom: 10px;
            }
            .question input[type="radio"] {
                margin-right: 10px;
            }
            .answers {
                list-style-type: none; /* Remove bullet points */
                padding: 0;
            }
            .answers li {
                margin-bottom: 10px; /* Add margin between answers */
            }
            button {
                background-color: #4CAF50;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
                display: block;
                width: 100%;
                margin-top: 20px; /* Add margin top to separate button from last question */
            }
            button:hover {
                background-color: #45a049;
            }
            .result {
                margin-top: 20px;
                font-size: 20px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Trắc nghiệm trực tuyến</h1>
            <form action="coursequiz" method="POST" onsubmit="return onSubmitForm();">
                <c:forEach items="${listquestion}" var="question">
                    <div class="question">
                        <p>Câu hỏi ${question.getQuestionId()}: ${question.getQuestionText()}</p>
                        <input type="hidden" name="questionid" value="${question.getQuestionId()}"/>
                        <input type="hidden" name="idquiz" value="${question.getQuizId_Quiz()}"/>
                        <ol style="list-style-type:upper-alpha;" class="answers">
                            <c:forEach items="${questionAnswersMap[question.getQuestionId()]}" var="ans">
                                <li>

                                    <input type="radio" name="radioANS_${question.getQuestionId()}" value="${ans.getAnswerID()}"> ${ans.getAnswerText()}

                                </li>

                            </c:forEach>
                        </ol>
                    </div>

                </c:forEach>
                
                <button type="submit">Nộp bài</button>
            
            </form>


        </div>
    </body>
</html>
<script>
    function onSubmitForm() {
        // Confirm submission
        var confirmed = confirm("Bạn có chắc muốn nộp bài?");
        return confirmed;
    }
</script>
