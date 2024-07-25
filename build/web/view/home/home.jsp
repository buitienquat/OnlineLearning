<%-- 
    Document   : home
    Created on : Jun 28, 2024, 3:35:46 PM
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

        <!-- REVOLUTION SLIDER CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendors/revolution/css/layers.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendors/revolution/css/settings.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendors/revolution/css/navigation.css">
        <!-- REVOLUTION SLIDER END -->	
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
                            <div class="secondary-menu">
                                <div class="secondary-inner">
                                    <ul>
                                        <li><a href="javascript:;" class="btn-link"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="javascript:;" class="btn-link"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="javascript:;" class="btn-link"><i class="fa fa-linkedin"></i></a></li>
                                        <!-- Search Button ==== -->

                                    </ul>
                                </div>
                            </div>
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
                                    <li class="add-mega-menu"><a href="/OnlineLearning/course">Our Courses <i class="fa fa-chevron-down"></i></a>
                                        <ul class="sub-menu add-menu">
                                            <li class="add-menu-left">
                                                <h5 class="menu-adv-title">Our Courses</h5>
                                                <ul>
                                                    <c:forEach items="${listCategory}" var="cate">
                                                        <li><a href="course?action=searchCategoryAll&categoryId=${cate.getCategoryID()}">${cate.getName()}</a></li>
                                                        </c:forEach>
                                                </ul>
                                            </li>
                                            <li class="add-menu-right">
                                                <img src="assets/images/adv/adv.jpg" alt=""/>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="javascript:;">Blog</a>
                                        
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
            <!-- Header Top END ==== -->
            <!-- Content -->
            <div class="page-content bg-white">
                <!-- Main Slider -->
                <div class="section-area section-sp1 ovpr-dark bg-fix online-cours" style="background-image:url(assets/images/background/bg1.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center text-white">
                                <h2>Online Courses To Learn</h2>
                                <h5>Own Your Feature Learning New Skills Online</h5>
                                <form action="course"  class="cours-search">
                                    <div class="input-group">
                                        <input type="hidden" name="action" value="searchByName"/>
                                        <input type="text" name="keyword" value="" class="form-control" placeholder="What do you want to learn today?	">
                                        <div class="input-group-append">
                                            <button class="btn" type="submit">Search</button> 
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="mw800 m-auto">
                            <div class="row">
                                <div class="col-md-4 col-sm-6">
                                    <div class="cours-search-bx m-b30">
                                        <div class="icon-box">
                                            <h3><i class="ti-user"></i><span class="counter">5</span>M</h3>
                                        </div>
                                        <span class="cours-search-text">Over 5 million student</span>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="cours-search-bx m-b30">
                                        <div class="icon-box">
                                            <h3><i class="ti-book"></i><span class="counter">30</span>K</h3>
                                        </div>
                                        <span class="cours-search-text">30,000 Courses.</span>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-12">
                                    <div class="cours-search-bx m-b30">
                                        <div class="icon-box">
                                            <h3><i class="ti-layout-list-post"></i><span class="counter">20</span>K</h3>
                                        </div>
                                        <span class="cours-search-text">Learn Anythink Online.</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Main Slider -->
                <div class="content-block">
                    <!-- Popular Courses -->
                    <div class="section-area section-sp2 popular-courses-bx">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 heading-bx left">
                                    <h2 class="title-head">Popular <span>Courses</span></h2>
                                    <p>It is a long established fact that a reader will be distracted by the readable content of a page</p>
                                </div>
                            </div>

                            <div class="row">

                                <div class="courses-carousel owl-carousel owl-btn-1 col-12 p-lr0">
                                    <c:forEach items="${listCourse}" var="course">
                                        <div class="item">

                                            <div class="cours-bx">
                                                <div class="action-box">
                                                    <img src="${course.getImage()}" alt="">
                                                    <a href="coursedetail?id=${course.getCouseraID()}&categoryId=${course.getCategory_categoryID()}" class="btn">Read More</a>
                                                </div>
                                                <div class="info-bx text-center">
                                                    <h5><a href="coursedetail?id=${course.getCouseraID()}&categoryId=${course.getCategory_categoryID()}">${course.getName()}</a></h5>
                                                        <c:forEach items="${listCategory}" var="ca">
                                                            <c:if test="${course.getCategory_categoryID() == ca.getCategoryID()}">
                                                            <span>${ca.getName()}</span>
                                                        </c:if>
                                                    </c:forEach>

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
                                                    <div class="price">
                                                        <del>$${course.getOriginalPrice()}</del>
                                                        <c:if test="${course.getFeestatus() != 0}">
                                                            <h5>$${course.getFeestatus()}</h5>
                                                        </c:if>
                                                        <c:if test="${course.getFeestatus() == 0}">
                                                            <h5 style="color: #328618">Free</h5>
                                                        </c:if> 
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                            </div>

                        </div>
                    </div>
                    <!-- Popular Courses END -->
                    <div class="section-area section-sp2 bg-fix ovbl-dark join-bx text-center" style="background-image:url(assets/images/background/bg1.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="join-content-bx text-white">
                                        <h2>Learn a new skill online on <br> your time</h2>
                                        <h4><span class="counter">57,000</span> Online Courses</h4>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                        <a href="/OnlineLearning/course" class="btn button-md">Join Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Form END -->
                    <div class="section-area section-sp1">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 m-b30">
                                    <h2 class="title-head ">Learn a new skill online<br> <span class="text-primary"> on your time</span></h2>
                                    <h4><span class="counter">57,000</span> Online Courses</h4>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.</p>
                                    <a href="/OnlineLearning/course" class="btn button-md">Join Now</a>
                                </div>
                                <div class="col-lg-6">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 m-b30">
                                            <div class="feature-container">
                                                <div class="feature-md text-white m-b20">
                                                    <a href="#" class="icon-cell"><img src="${pageContext.request.contextPath}/assets/images/icon/icon1.png" alt=""></a> 
                                                </div>
                                                <div class="icon-content">
                                                    <h5 class="ttr-tilte">Our Philosophy</h5>
                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 m-b30">
                                            <div class="feature-container">
                                                <div class="feature-md text-white m-b20">
                                                    <a href="#" class="icon-cell"><img src="${pageContext.request.contextPath}/assets/images/icon/icon2.png" alt=""></a> 
                                                </div>
                                                <div class="icon-content">
                                                    <h5 class="ttr-tilte">Kingster's Principle</h5>
                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 m-b30">
                                            <div class="feature-container">
                                                <div class="feature-md text-white m-b20">
                                                    <a href="#" class="icon-cell"><img src="${pageContext.request.contextPath}/assets/images/icon/icon3.png" alt=""></a> 
                                                </div>
                                                <div class="icon-content">
                                                    <h5 class="ttr-tilte">Key Of Success</h5>
                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 m-b30">
                                            <div class="feature-container">
                                                <div class="feature-md text-white m-b20">
                                                    <a href="#" class="icon-cell"><img src="${pageContext.request.contextPath}/assets/images/icon/icon4.png" alt=""></a> 
                                                </div>
                                                <div class="icon-content">
                                                    <h5 class="ttr-tilte">Our Philosophy</h5>
                                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Testimonials -->
                    <div class="section-area section-sp1 bg-fix ovbl-dark text-white" style="background-image:url(assets/images/background/bg1.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-3 col-md-6 col-sm-6 col-6 m-b30">
                                    <div class="counter-style-1">
                                        <div class="text-white">
                                            <span class="counter">3000</span><span>+</span>
                                        </div>
                                        <span class="counter-text">Completed Projects</span>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 col-6 m-b30">
                                    <div class="counter-style-1">
                                        <div class="text-white">
                                            <span class="counter">2500</span><span>+</span>
                                        </div>
                                        <span class="counter-text">Happy Clients</span>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 col-6 m-b30">
                                    <div class="counter-style-1">
                                        <div class="text-white">
                                            <span class="counter">1500</span><span>+</span>
                                        </div>
                                        <span class="counter-text">Questions Answered</span>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6 col-sm-6 col-6 m-b30">
                                    <div class="counter-style-1">
                                        <div class="text-white">
                                            <span class="counter">1000</span><span>+</span>
                                        </div>
                                        <span class="counter-text">Ordered Coffee's</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Testimonials END -->
                    <!-- Testimonials ==== -->
                    <div class="section-area section-sp2">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 heading-bx left">
                                    <h2 class="title-head text-uppercase">what people <span>say</span></h2>
                                    <p>It is a long established fact that a reader will be distracted by the readable content of a page</p>
                                </div>
                            </div>
                            <div class="testimonial-carousel owl-carousel owl-btn-1 col-12 p-lr0">
                                <div class="item">
                                    <div class="testimonial-bx">
                                        <div class="testimonial-thumb">
                                            <img src="${pageContext.request.contextPath}/assets/images/testimonials/pic1.jpg" alt="">
                                        </div>
                                        <div class="testimonial-info">
                                            <h5 class="name">Peter Packer</h5>
                                            <p>-Art Director</p>
                                        </div>
                                        <div class="testimonial-content">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type...</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimonial-bx">
                                        <div class="testimonial-thumb">
                                            <img src="${pageContext.request.contextPath}/assets/images/testimonials/pic2.jpg" alt="">
                                        </div>
                                        <div class="testimonial-info">
                                            <h5 class="name">Peter Packer</h5>
                                            <p>-Art Director</p>
                                        </div>
                                        <div class="testimonial-content">
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type...</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Testimonials END ==== -->
                </div>
                <!-- contact area END -->
            </div>
            <!-- Content END-->
            <!-- Footer ==== -->
            <footer>
                <div class="footer-top">
                    <div class="pt-exebar">
                        <div class="container">
                            <div class="d-flex align-items-stretch">
                                <div class="pt-logo mr-auto">
                                    <a href="index.html"><img src="${pageContext.request.contextPath}/assets/images/logo-white.png" alt=""/></a>
                                </div>
                                <div class="pt-social-link">
                                    <ul class="list-inline m-a0">
                                        <li><a href="#" class="btn-link"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#" class="btn-link"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" class="btn-link"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#" class="btn-link"><i class="fa fa-google-plus"></i></a></li>
                                    </ul>
                                </div>
                                <div class="pt-btn-join">
                                    <a href="#" class="btn ">Join Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4 col-md-12 col-sm-12 footer-col-4">
                                <div class="widget">
                                    <h5 class="footer-title">Sign Up For A Newsletter</h5>
                                    <p class="text-capitalize m-b20">Weekly Breaking news analysis and cutting edge advices on job searching.</p>
                                    <div class="subscribe-form m-b20">
                                        <form class="subscription-form" action="http://educhamp.themetrades.com/demo/assets/script/mailchamp.php" method="post">
                                            <div class="ajax-message"></div>
                                            <div class="input-group">
                                                <input name="email" required="required"  class="form-control" placeholder="Your Email Address" type="email">
                                                <span class="input-group-btn">
                                                    <button name="submit" value="Submit" type="submit" class="btn"><i class="fa fa-arrow-right"></i></button>
                                                </span> 
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-5 col-md-7 col-sm-12">
                                <div class="row">
                                    <div class="col-4 col-lg-4 col-md-4 col-sm-4">
                                        <div class="widget footer_widget">
                                            <h5 class="footer-title">Company</h5>
                                            <ul>
                                                <li><a href="index.html">Home</a></li>
                                                <li><a href="about-1.html">About</a></li>
                                                <li><a href="faq-1.html">FAQs</a></li>
                                                <li><a href="contact-1.html">Contact</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-4 col-md-4 col-sm-4">
                                        <div class="widget footer_widget">
                                            <h5 class="footer-title">Get In Touch</h5>
                                            <ul>
                                                <li><a href="http://educhamp.themetrades.com/admin/index.html">Dashboard</a></li>
                                                <li><a href="blog-classic-grid.html">Blog</a></li>
                                                <li><a href="portfolio.html">Portfolio</a></li>
                                                <li><a href="event.html">Event</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-4 col-lg-4 col-md-4 col-sm-4">
                                        <div class="widget footer_widget">
                                            <h5 class="footer-title">Courses</h5>
                                            <ul>
                                                <li><a href="courses.html">Courses</a></li>
                                                <li><a href="courses-details.html">Details</a></li>
                                                <li><a href="membership.html">Membership</a></li>
                                                <li><a href="profile.html">Profile</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-lg-3 col-md-5 col-sm-12 footer-col-4">
                                <div class="widget widget_gallery gallery-grid-4">
                                    <h5 class="footer-title">Our Gallery</h5>
                                    <ul class="magnific-image">
                                        <li><a href="${pageContext.request.contextPath}/assets/images/gallery/pic1.jpg" class="magnific-anchor"><img src="${pageContext.request.contextPath}/assets/images/gallery/pic1.jpg" alt=""></a></li>
                                        <li><a href="${pageContext.request.contextPath}/assets/images/gallery/pic2.jpg" class="magnific-anchor"><img src="${pageContext.request.contextPath}/assets/images/gallery/pic2.jpg" alt=""></a></li>
                                        <li><a href="${pageContext.request.contextPath}/assets/images/gallery/pic3.jpg" class="magnific-anchor"><img src="${pageContext.request.contextPath}/assets/images/gallery/pic3.jpg" alt=""></a></li>
                                        <li><a href="${pageContext.request.contextPath}/assets/images/gallery/pic4.jpg" class="magnific-anchor"><img src="${pageContext.request.contextPath}/assets/images/gallery/pic4.jpg" alt=""></a></li>
                                        <li><a href="${pageContext.request.contextPath}/assets/images/gallery/pic5.jpg" class="magnific-anchor"><img src="${pageContext.request.contextPath}/assets/images/gallery/pic5.jpg" alt=""></a></li>
                                        <li><a href="${pageContext.request.contextPath}/assets/images/gallery/pic6.jpg" class="magnific-anchor"><img src="${pageContext.request.contextPath}/assets/images/gallery/pic6.jpg" alt=""></a></li>
                                        <li><a href="${pageContext.request.contextPath}/assets/images/gallery/pic7.jpg" class="magnific-anchor"><img src="${pageContext.request.contextPath}/assets/images/gallery/pic7.jpg" alt=""></a></li>
                                        <li><a href="${pageContext.request.contextPath}/assets/images/gallery/pic8.jpg" class="magnific-anchor"><img src="${pageContext.request.contextPath}/assets/images/gallery/pic8.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 text-center"><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></div>
                        </div>
                    </div>
                </div>
            </footer>
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
        <script src="${pageContext.request.contextPath}/assets/js/functions.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/contact.js"></script>
        <script src="${pageContext.request.contextPath}/assets/vendors/switcher/switcher.js'></script>
                </body>

                </html>
