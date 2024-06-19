<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Online Learning Quiz</title>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
        <style>
            body {
                font-family: 'Roboto', sans-serif;
                background: linear-gradient(135deg, #2980b9, #6dd5fa, #ffffff);
                background-size: 400% 400%;
                animation: gradientAnimation 15s ease infinite;
                color: #333;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                overflow-y: auto;
            }
            @keyframes gradientAnimation {
                0% {
                    background-position: 0% 50%;
                }
                50% {
                    background-position: 100% 50%;
                }
                100% {
                    background-position: 0% 50%;
                }
            }
            .container {
                max-width: 800px;
                width: 100%;
                background: rgba(255, 255, 255, 0.9);
                padding: 40px;
                border-radius: 15px;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
                text-align: center;
                animation: fadeIn 0.5s ease-in-out;
            }
            @keyframes fadeIn {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 1;
                }
            }
            h1 {
                color: #2c3e50;
                margin-bottom: 20px;
                font-size: 36px;
            }
            .question {
                display: none;
            }
            .question.active {
                display: block;
            }
            h3 {
                margin-bottom: 20px;
                font-size: 22px;
                color: #34495e;
            }
            label {
                display: block;
                margin-bottom: 15px;
                font-size: 18px;
                background: #ecf0f1;
                padding: 15px;
                border-radius: 10px;
                cursor: pointer;
                transition: background 0.3s;
            }
            label:hover {
                background: #dcdde1;
            }
            input[type="radio"] {
                margin-right: 10px;
                transform: scale(1.3);
            }
            .pagination {
                display: flex;
                justify-content: center;
                margin-top: 30px;
            }
            .pagination button {
                background-color: #3498db;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                transition: background-color 0.3s, transform 0.3s;
                margin: 0 5px;
            }
            .pagination button:hover {
                background-color: #2980b9;
                transform: scale(1.05);
            }
            .pagination button:disabled {
                background-color: #bdc3c7;
                cursor: not-allowed;
            }
            .submit {
                margin-top: 30px;
            }
            .submit button {
                background-color: #2ecc71;
                color: white;
                border: none;
                padding: 15px 30px;
                border-radius: 10px;
                cursor: pointer;
                font-size: 18px;
                transition: background-color 0.3s, transform 0.3s;
            }
            .submit button:hover {
                background-color: #27ae60;
                transform: scale(1.05);
            }
            .pagination-bx {
                display: flex;
                justify-content: center;
                padding: 10px 0;
            }

            .pagination {
                list-style: none;
                padding: 0;
                margin: 0;
                display: flex;
            }

            .pagination li {
                margin: 0 5px;
            }

            .pagination li a {
                display: block;
                padding: 10px 15px;
                text-decoration: none;
                color: #007bff;
                border: 1px solid #dee2e6;
                border-radius: 4px;
                transition: background-color 0.3s, color 0.3s;
            }

            .pagination li a:hover {
                background-color: #007bff;
                color: #fff;
            }

            .pagination li.active a {
                background-color: #007bff;
                color: #fff;
                border-color: #007bff;
            }

            .pagination li.previous a,
            .pagination li.next a {
                font-weight: bold;
            }

            .pagination li.previous i,
            .pagination li.next i {
                margin-right: 5px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Quiz</h1>

            <form action="coursequiz" method="POST">
                <c:forEach items="${listquestion}" var="question">

                    <div class="question active" data-question="${question.getQuestionId()}">

                        <h3>Câu hỏi ${question.getQuestionId()} : ${question.getQuestionText()}</h3>
                        <input type="hidden" name="questionid" value="${question.getQuestionId()}"/>
                        <c:forEach items="${listanswer}" var="ans">
                            <label>
                                <input type="radio" name="radioANS" value="${ans.getAnswerID()}" 
                                       <c:if test="${selectedAnswer == ans.getAnswerID()}">checked</c:if> />  
                                ${ans.getAnswerText()} 
                            </label>
                        </c:forEach>                       
                    </div>

                </c:forEach>
                <div class="pagination">
                    <c:if test="${pageControl.getPage() > 1}">
                        <button type="button" onclick="navigatePage('${pageControl.getUrlPattern()}page=${pageControl.getPage() - 1}')">Prev</button>
                    </c:if>
                    <!--                    <button type="button" id="prevBtn" onclick="changeQuestion(-1)">Prev</button>-->
                    <c:forEach begin="1" end="${pageControl.totalPage}" var="pageNumber">
                        <li class="${pageNumber == pageControl.page ? 'active' : ''}">
                              <a href="#" onclick="navigatePage('${pageControl.urlPattern}page=${pageNumber}')">${pageNumber}</a>
                        </li>
                    </c:forEach>
                    <c:if test="${pageControl.getPage() < pageControl.getTotalPage()}">
                       <button type="button" onclick="navigatePage('${pageControl.getUrlPattern()}page=${pageControl.getPage() + 1}')">Next</button>
                    </c:if>
                    <!--                    <button type="button" id="nextBtn" onclick="changeQuestion(1)">Next</button>-->
                </div>
                <div class="submit">
                    <button type="submit">Submit</button>
                </div>
                <input type="hidden" name="nextPage" id="nextPage" value=""/>
            </form>


        </div>

    </body>
    <script>
        function navigatePage(url) {
                document.getElementById("nextPage").value = url;
                document.forms[0].submit();
            }
    </script>
</html>
