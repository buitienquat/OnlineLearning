<%-- 
    Document   : courseDetail
    Created on : May 23, 2024, 11:55:50 PM
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
        <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

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
            <jsp:include page="../common/commonCourseDetail/header.jsp"></jsp:include>
                <!-- header END ==== -->
                <!-- Content -->
                <div class="page-content bg-white">
                    <!-- inner page banner -->
                    <div class="page-banner ovbl-dark" style="background-image:url(${pageContext.request.contextPath}/images/banner/banner2.jpg);">
                    <div class="container">
                        <div class="page-banner-entry">
                            <h1 class="text-white">Courses Details</h1>
                        </div>
                    </div>
                </div>
                <!-- Breadcrumb row -->
                <div class="breadcrumb-row">
                    <div class="container">
                        <ul class="list-inline">
                            <li><a href="#">Home</a></li>
                            <li>Courses Details</li>
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
                                        <div class="course-price">
                                            <del>$${findCourseId.getOriginalPrice()}</del>
                                            <c:if test="${findCourseId.getFeestatus() != 0}">
                                                <h4 class="price">$${findCourseId.getFeestatus()}</h4>
                                            </c:if>
                                            <c:if test="${findCourseId.getFeestatus() == 0}">
                                                <h4 style="color: #328618">Free</h4>
                                            </c:if>
                                        </div>	
                                        <div class="course-buy-now text-center">
                                            <c:if test="${findCourseId.getFeestatus() != 0}">
                                                <a href="#" class="btn radius-xl text-uppercase">Buy Now This Courses</a>
                                            </c:if>
                                            <c:if test="${findCourseId.getFeestatus() == 0}">
                                                <a id="enrollBtn" href="coursewatch?id=${findCourseId.getCouseraID()}&numberLesson=1&quizid=1" class="btn radius-xl text-uppercase">
                                                    Enroll Course
                                                </a>
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
                                        <div class="cours-more-info">
                                            <div class="review">
                                                <span>3 Review</span>
                                                <ul class="cours-star">
                                                    <li class="active"><i class="fa fa-star"></i></li>
                                                    <li class="active"><i class="fa fa-star"></i></li>
                                                    <li class="active"><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                </ul>
                                            </div>
                                            <div class="price categories">
                                                <span>Categories</span>

                                                <c:if test="${findCourseId.getCategory_categoryID() == findCategoryId.getCategoryID()}">
                                                    <h5 class="text-primary">${findCategoryId.getName()}</h5>
                                                </c:if>


                                            </div>
                                        </div>
                                        <div class="course-info-list scroll-page">
                                            <ul class="navbar">
                                                <li><a class="nav-link" href="#overview"><i class="ti-zip"></i>Overview</a></li>
                                                <li><a class="nav-link" href="#curriculum"><i class="ti-bookmark-alt"></i>Curriculum</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-9 col-md-8 col-sm-12">
                                    <div class="courses-post">
                                        <div class="ttr-post-media media-effect">
                                            <a href="#"><img src="${findCourseId.getImage()}" alt=""></a>
                                        </div>
                                        <div class="ttr-post-info">
                                            <div class="ttr-post-title ">
                                                <h2 class="post-title">${findCourseId.getName()}</h2>
                                            </div>
                                            <div class="ttr-post-text">
                                                <p>${findCourseId.getIntroduce()}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="courese-overview" id="overview">
                                        <h4>Overview</h4>
                                        <div class="row">
                                            <div class="col-md-12 col-lg-4">
                                                <ul class="course-features">
                                                    <li><i class="ti-book"></i> <span class="label">Lectures</span> <span class="value">8</span></li>
                                                    <li><i class="ti-help-alt"></i> <span class="label">Quizzes</span> <span class="value">1</span></li>
                                                    <li><i class="ti-time"></i> <span class="label">Duration</span> <span class="value">60 hours</span></li>
                                                    <li><i class="ti-stats-up"></i> <span class="label">Skill level</span> <span class="value">Beginner</span></li>
                                                    <li><i class="ti-smallcap"></i> <span class="label">Language</span> <span class="value">English</span></li>
                                                    <li><i class="ti-user"></i> <span class="label">Students</span> <span class="value">32</span></li>
                                                    <li><i class="ti-check-box"></i> <span class="label">Assessments</span> <span class="value">Yes</span></li>
                                                </ul>
                                            </div>
                                            <div class="col-md-12 col-lg-8">
                                                <h5 class="m-b5">Course Description</h5>
                                                <p>${findCourseId.getDescription()}</p>
                                                <h5 class="m-b5">Certification</h5>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                                                <h5 class="m-b5">Learning Outcomes</h5>
                                                <ul class="list-checked primary">
                                                    <li>Over 37 lectures and 55.5 hours of content!</li>
                                                    <li>LIVE PROJECT End to End Software Testing Training Included.</li>
                                                    <li>Learn Software Testing and Automation basics from a professional trainer from your own desk.</li>
                                                    <li>Information packed practical training starting from basics to advanced testing techniques.</li>
                                                    <li>Best suitable for beginners to advanced level users and who learn faster when demonstrated.</li>
                                                    <li>Course content designed by considering current software testing technology and the job market.</li>
                                                    <li>Practical assignments at the end of every session.</li>
                                                    <li>Practical learning experience with live project work and examples.cv</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="m-b30" id="curriculum">
                                        <h4>Curriculum</h4>
                                        <c:forEach items="${findLesson}" var="less">
                                            <ul class="curriculum-list">
                                                <li>
                                                    <ul>
                                                        <li>
                                                            <div class="curriculum-list-box">
                                                                <span>Lesson 1.</span> ${less.getTitle()}
                                                            </div>
                                                            <span>120 minutes</span>
                                                        </li>
                                                        
                                                    </ul>
                                                </li>
                                            </ul>
                                        </c:forEach>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- contact area END -->

            </div>
            <!-- Content END-->
            <!-- Footer ==== -->
            <jsp:include page="../common/commonCourseDetail/footer.jsp"></jsp:include>
                <!-- Footer END ==== -->
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
        
    </body>

</html>




