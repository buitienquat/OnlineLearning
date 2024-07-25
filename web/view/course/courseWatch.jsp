<%-- 
    Document   : courseView
    Created on : Jun 4, 2024, 2:05:49 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <!-- META ============================================= -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="keywords" content="" />
        <meta name="author" content="" />
        <meta name="robots" content="" />

        <!-- DESCRIPTION -->
        <meta name="description" content="EduChamp : Education HTML Template" />

        <!-- OG -->
        <meta property="og:title" content="EduChamp : Education HTML Template" />
        <meta property="og:description" content="EduChamp : Education HTML Template" />
        <meta property="og:image" content="" />
        <meta name="format-detection" content="telephone=no">

        <!-- FAVICONS ICON ============================================= -->
        <link rel="icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/assets/images/favicon.png" />

        <!-- PAGE TITLE HERE ============================================= -->
        <title>EduChamp : Education HTML Template </title>

        <!-- MOBILE SPECIFIC ============================================= -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--[if lt IE 9]>
        <script src="${pageContext.request.contextPath}/assets/js/html5shiv.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
        <![endif]-->

        <!-- All PLUGINS CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/assets.css">

        <!-- TYPOGRAPHY ============================================= -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/typography.css">

        <!-- SHORTCODES ============================================= -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/style.css">
        <link class="skin" rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/color/color-1.css">

    </head>
    <body id="bg">
        <div class="page-wraper">
            <div id="loading-icon-bx"></div>
            <!-- Header Top ==== -->
            <header class="header rs-nav">
                <div class="top-bar">
                    <div class="container">
                        <div class="row d-flex justify-content-between">
                            <div class="topbar-left">
                                <ul>
                                    <li><a href="faq-1.html"><i class="fa fa-question-circle"></i>Ask a Question</a></li>
                                    <li><a href="javascript:;"><i class="fa fa-envelope-o"></i>Support@website.com</a></li>
                                </ul>
                            </div>
                           <div class="topbar-right">
                                <ul>
                                    <c:if test="${account != null}">
                                        <li>
                                            <c:if test="${account.getFullName() != null}">
                                                <span>Xin chào, ${account.getFullName()}</span>
                                            </c:if>

                                        </li>
                                        <!--  Student-->
                                        <c:if test="${account.getRoleID()== 3}">
                                            <li>
                                                <a href="#">My Account</a>                              
                                            </li>
                                        </c:if>
                                        <!--  Teacher-->
                                        <c:if test="${account.getRoleID() == 2}">
                                            <li>
                                                <a href="#">My Account</a>                              
                                            </li>
                                        </c:if>
                                        <!--  Admin -->
                                        <c:if test="${account.getRoleID() == 1}">
                                            <li>
                                                <a href="#">My Account</a>
                                            </li>
                                        </c:if>
                                    </c:if>
                                    <c:if test="${account == null}">
                                        <li><a href="authen?action=login">Login</a></li>
                                        <li><a href="authen?action=register">Register</a></li>
                                        </c:if>
                                        <c:if test="${account != null}">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/authen?action=log-out">Sign Out</a>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sticky-header navbar-expand-lg">
                    <div class="menu-bar clearfix">
                        <div class="container clearfix">
                            <!-- Header Logo ==== -->
                            <div class="menu-logo">
                                <a href="/OnlineLearning/home"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=""></a>
                            </div>
                            <!-- Mobile Nav Button ==== -->
                            <button class="navbar-toggler collapsed menuicon justify-content-end" type="button" data-toggle="collapse" data-target="#menuDropdown" aria-controls="menuDropdown" aria-expanded="false" aria-label="Toggle navigation">
                                <span></span>
                                <span></span>
                                <span></span>
                            </button>
                            <!-- Author Nav ==== -->
                            
                            <!-- Search Box ==== -->
                            <div class="nav-search-bar">
                                <form action="#">
                                    <input name="search" value="" type="text" class="form-control" placeholder="Type to search">
                                    <span><i class="ti-search"></i></span>
                                </form>
                                <span id="search-remove"><i class="ti-close"></i></span>
                            </div>
                            <!-- Navigation Menu ==== -->
                            <div class="menu-links navbar-collapse collapse justify-content-start" id="menuDropdown">
                                <div class="menu-logo">
                                    <a href="/OnlineLearning/home"><img src="${pageContext.request.contextPath}/assets/images/logo.png" alt=""></a>
                                </div>
                                <ul class="nav navbar-nav">	
                                    <li class="active"><a href="/OnlineLearning/home">Home</a>
                                       
                                    </li>
                                    <li><a href="javascript:;">Pages </a>
                                     
                                    </li>
                                    <li class="add-mega-menu"><a href="/OnlineLearning/course">Our Courses</a>
                              
                                    </li>
                                    <li><a href="javascript:;">Blog </a>
                                      
                                    </li>
                                   
                                </ul>
                                <div class="nav-social-link">
                                    <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                                    <a href="javascript:;"><i class="fa fa-google-plus"></i></a>
                                    <a href="javascript:;"><i class="fa fa-linkedin"></i></a>
                                </div>
                            </div>
                            <!-- Navigation Menu END ==== -->
                        </div>
                    </div>
                </div>
            </header>
            <!-- header END ==== -->
            <!-- Content -->
            <div class="page-content bg-white">

                <!-- Breadcrumb row -->
                <div class="breadcrumb-row">
                    <div class="container">
                        <ul class="list-inline">
                            <li><a href="/OnlineLearning/course">Home</a></li>

                            <li>Our course</li>

                        </ul>
                    </div>
                </div>
                <!-- Breadcrumb row END -->
                <!-- inner page banner END -->
                <div class="content-block">
                    <!-- About Us -->
                    <div class="section-area section-sp1">
                        <div class="container">
                            <div class="row d-flex flex-row-reverse">
                                <div class="col-lg-3 col-md-4 col-sm-12 m-b30">

                                    <div class="course-detail-bx">
                                        <div class="course-buy-now text-center">
                                            <c:if test="${autoFirstCourse.getNumberLesson() == 1}">
                                                <button class="btn radius-xl text-uppercase"><a href="coursewatch?id=${autoFirstCourse.getCourse_courseID()}&numberLesson=1&quizid=${autoFirstCourse.getQuizId_Quiz()}" >back</a></button>
                                            </c:if>
                                            <c:if test="${autoFirstCourse.getNumberLesson() != 1}">
                                                <button class="btn radius-xl text-uppercase"><a href="coursewatch?id=${autoFirstCourse.getCourse_courseID()}&numberLesson=${autoFirstCourse.getNumberLesson()- 1}&quizid=${autoFirstCourse.getQuizId_Quiz()}" >back</a></button>
                                            </c:if>
                                            <c:if test="${autoFirstCourse.getNumberLesson() == pageControl.getTotalRecord()}">
                                                <button class="btn radius-xl text-uppercase"><a href="coursewatch?id=${autoFirstCourse.getCourse_courseID()}&numberLesson=${pageControl.getTotalRecord()}&quizid=${autoFirstCourse.getQuizId_Quiz()}">next</a></button>
                                            </c:if>
                                            <c:if test="${autoFirstCourse.getNumberLesson() != pageControl.getTotalRecord()}">
                                                <button class="btn radius-xl text-uppercase"><a href="coursewatch?id=${autoFirstCourse.getCourse_courseID()}&numberLesson=${autoFirstCourse.getNumberLesson()+ 1}&quizid=${autoFirstCourse.getQuizId_Quiz()}">next</a></button>
                                            </c:if>

                                        </div>
                                        <div class="teacher-bx">
                                            <div class="teacher-info">
                                                <div class="teacher-thumb">
                                                    <img src="${pageContext.request.contextPath}/assets/images/testimonials/pic1.jpg" alt=""/>
                                                </div>
                                                <div class="teacher-name">
                                                    <h5>Hinata Hyuga</h5>
                                                    <span>Science Teacher</span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="course-info-list scroll-page">
                                            <ul class="navbar">
                                                <c:forEach items="${findLesson}" var="les">
                                                    <li><a class="nav-link" href="coursewatch?id=${les.getCourse_courseID()}&numberLesson=${les.getNumberLesson()}&quizid=${les.getQuizId_Quiz()}">${les.getNumberLesson()}:   ${les.getTitle()}

                                                        </a></li>
                                                    </c:forEach> 
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-9 col-md-8 col-sm-12">
                                    <div class="courses-post">
                                        <div class="ttr-post-title ">
                                            <h2 class="post-title">${autoFirstCourse.getNumberLesson()}:   ${autoFirstCourse.getTitle()}</h2>
                                        </div>  
                                        <div class="ttr-post-media media-effect">
                                            <iframe width="847" height="508" src="${autoFirstCourse.getVideo()}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                        </div>
                                        <div class="ttr-post-info">

                                            <div class="ttr-post-text">
                                                <p>Video được đăng tải ${autoFirstCourse.getTime()}</p>
                                                <c:if test="${quiztest.getQuizId() != 1}">
                                                    <c:if test="${autoFirstCourse.getQuizId_Quiz() == quiztest.getQuizId()}">
                                                        <form action="coursequiz" method="GET">
                                                  
                                                                <input type="hidden" name="action" value="resetquiz">
                                                                <button style="background-color: #4CAF50; color: #fff">
                                                                    <a href="coursequiz?quizid=${autoFirstCourse.getQuizId_Quiz()}" onclick="return confirmQuiz('${autoFirstCourse.getQuizId_Quiz()}');">Exercise: ${quiztest.getTitle()} </a>
                                                                </button>
                                                            </c:if>
                                                        </form>
                                                
                                                    </c:if>
                                              

                                                <b style="font-size: 20px">Describe:</b>  <br>
                                                <pre style="white-space: pre-wrap;">${autoFirstCourse.getNote()}</pre>


                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- contact area END -->

            </div>
            <!-- Content END-->
            <button class="back-to-top fa fa-chevron-up" ></button>
        </div>
        <!-- External JavaScripts -->
        <script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/magnific-popup/magnific-popup.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/counter/waypoints-min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/counter/counterup.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/imagesloaded/imagesloaded.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/masonry/masonry.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/masonry/filter.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/owl-carousel/owl.carousel.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.scroller.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/functions.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/contact.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/switcher/switcher.js"></script>
        <script>
                                                                    function confirmQuiz(quizId) {
                                                                        var confirmAction = confirm("Bạn chắc chắn muốn làm bài Quiz chứ?");
                                                                        if (confirmAction) {
                                                                            window.location.href = "coursequiz?quizid=" + quizId;
                                                                            return true; // Chuyển hướng trang
                                                                        } else {
                                                                            return false; // Không làm gì
                                                                        }
                                                                    }
        </script>
    </body>

</html>

