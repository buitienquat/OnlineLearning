<%-- 
    Document   : bloglist
    Created on : Jun 24, 2024, 12:33:13 AM
    Author     : hienhack
--%>
<%@ page import="Utility.Utility" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
        <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon" />
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png" />

        <!-- PAGE TITLE HERE ============================================= -->
        <title>EduChamp : Education HTML Template </title>

        <!-- MOBILE SPECIFIC ============================================= -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--[if lt IE 9]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->

        <!-- All PLUGINS CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/assets.css">

        <!-- TYPOGRAPHY ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/typography.css">

        <!-- SHORTCODES ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link class="skin" rel="stylesheet" type="text/css" href="assets/css/color/color-1.css">

    </head>
    <body id="bg">
        <div class="page-wraper">
            <div id="loading-icon-bx"></div>

            <header class="header rs-nav">
                <div class="top-bar">
                    <div class="container">
                        <div class="row d-flex justify-content-between">
                            <div class="topbar-left">
                                <ul>
                                    <li><a href="assets/faq-1.html"><i class="fa fa-question-circle"></i>Ask a Question</a></li>
                                    <li><a href="assets/javascript:;"><i class="fa fa-envelope-o"></i>Support@website.com</a></li>
                                </ul>
                            </div>
                            <div class="topbar-right">
                                <ul>
                                    <c:if test="${account != null}">
                                        <li>
                                            <c:if test="${account.getFullName() != null}">
                                                <span>Xin ch�o, ${account.getFullName()}</span>
                                            </c:if>

                                        </li>
                                        <!--  Student-->
                                        <c:if test="${account.getRoleID()== 3}">
                                            <li>
                                                <a href="adminprofile">My Account</a>                              
                                            </li>
                                        </c:if>
                                        <!--  Teacher-->
                                        <c:if test="${account.getRoleID() == 2}">
                                            <li>
                                                <a href="blog">My Account</a>                              
                                            </li>
                                        </c:if>
                                        <!--  Admin -->
                                        <c:if test="${account.getRoleID() == 1}">
                                            <li>
                                                <a href="dashboardmanager">My Account</a>
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
                                    <a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png" alt=""></a>
                                </div>
                                <ul class="nav navbar-nav">	
                                    <li class="active"><a href="/OnlineLearning/home">Home</a>

                                    </li>

                                    <li class="add-mega-menu"><a href="/OnlineLearning/course">Our Courses</a>

                                    </li>
                                    <li><a href="/OnlineLearning/blogview">Blog </a>

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
                <!-- inner page banner -->
                <div class="page-banner ovbl-dark" style="background-image:url(assets/images/banner/banner2.jpg);">
                    <div class="container">
                        <div class="page-banner-entry">
                            <h1 class="text-white">Blog List</h1>
                        </div>
                    </div>
                </div>
                <!-- Breadcrumb row -->
                <div class="breadcrumb-row">
                    <div class="container">
                        <ul class="list-inline">
                            <li><a href="#">Home</a></li>
                            <li>Blog List</li>
                        </ul>
                    </div>
                </div>
                <!-- Breadcrumb row END -->
                <!-- contact area -->
                <div class="content-block">
                    <div class="section-area section-sp1">
                        <div class="container">
                            <div class="row">
                                <!-- Left part start -->
                                <div class="col-lg-8">
                                    <c:forEach items="${bList}" var ="o"> 
                                        <div class="blog-post blog-md clearfix">
                                            <div class="ttr-post-media"> 
                                                <img src="assets/images/blog/${o.blogImage != null && !o.blogImage.isEmpty() ? o.blogImage : 'default.jpg'}" alt=""/> 
                                            </div>
                                            <div class="ttr-post-info">
                                                <ul class="media-post">
                                                    <li><a href="#"><i class="fa fa-calendar"></i>
                                                            <i class="uil uil-calendar-alt text-dark h6 me-1"></i>
                                                            <script>
                                                                var postDate = new Date("${o.getPostDate()}");
                                                                var day = postDate.getDate();
                                                                var month = postDate.getMonth() + 1;
                                                                var year = postDate.getFullYear();
                                                                if (day < 10) {
                                                                    day = "0" + day;
                                                                }
                                                                if (month < 10) {
                                                                    month = "0" + month;
                                                                }
                                                                var formattedDate = day + "/" + month + "/" + year;
                                                                document.write(formattedDate);
                                                            </script>
                                                        </a></li>
                                                    <li>
                                                        <c:forEach items="${TagList}" var="tag">
                                                            <c:if test="${tag.getBlogTagID() == o.getBlogTagID()}">
                                                                <a href="#" class="comments-bx"><i class="fa fa-tag"></i>${tag.getName()}</a>
                                                                </c:if>
                                                            </c:forEach> 
                                                        </a></li>
                                                    <li><a href="#"><i class="fa fa-user"></i>By William</a></li>
                                                </ul>
                                                <h5 class="post-title"><a href="blogdetail?id=${o.getBlogId()}">${o.getBlogTitle()}</a></h5>
                                                    <c:out value="${Utility.shortenText(o.getBlogDetail(), 20)}"/>

                                                <div class="post-extra">
                                                    <a href="#" class="btn-link">READ MORE</a>


                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>	
                                    <!-- Pagination start -->
                                    <div class="pagination-bx rounded-sm gray clearfix">
                                        <ul class="pagination">
                                            <c:choose>
                                                <c:when test="${currentPage > 1}">
                                                    <li class="page-item"><a class="page-link" href="blogview?page=${currentPage - 1}" aria-label="Previous">< Prev</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item disabled"><a class="page-link" href="#" aria-label="Previous">< Prev</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:forEach begin="1" end="${totalPages}" var="i">
                                                <li class="page-item ${currentPage == i ? 'active' : ''}"><a class="page-link" href="blogview?page=${i}">${i}</a></li>
                                                </c:forEach>
                                                <c:choose>
                                                    <c:when test="${currentPage < totalPages}">
                                                    <li class="page-item"><a class="page-link" href="blogview?page=${currentPage + 1}" aria-label="Next">Next ></a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item disabled"><a class="page-link" href="#" aria-label="Next">Next ></a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                        </ul>
                                    </div>
                                    <!-- Pagination END -->
                                </div>
                                <!-- Left part END -->
                                <!-- Side bar start -->
                                <div class="col-lg-4 col-xl-4">
                                    <aside  class="side-bar sticky-top">  
                                        <div class="widget">
                                            <h6 class="widget-title">Search</h6>
                                            <div class="search-bx style-1">
                                                <form role="search" method="get" action="blogview">
                                                    <div class="input-group">
                                                        <input name="query" class="form-control" placeholder="Enter your keywords..." type="text">
                                                        <span class="input-group-btn">
                                                            <button type="submit" class="fa fa-search text-primary"></button>
                                                        </span> 
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="widget recent-posts-entry">
                                            <h6 class="widget-title">Recent Posts</h6>
                                            <div class="widget-post-bx">
                                                <c:forEach items="${randList}" var ="b"> 
                                                    <div class="widget-post clearfix">
                                                        <div class="ttr-post-media"> <img src="assets/images/blog/${b.blogImage != null && !b.blogImage.isEmpty() ? b.blogImage : 'default.jpg'}" alt=""/>  </div>
                                                        <div class="ttr-post-info">
                                                            <div class="ttr-post-header">
                                                                <h6 class="post-title"><a href="blogdetail?id=${b.getBlogId()}">${b.getBlogTitle()}</a></h6>
                                                            </div>
                                                            <ul class="media-post">
                                                                <li><a href="#"><i class="fa fa-calendar"></i>
                                                                        <script>
                                                                            var postDate = new Date("${b.getPostDate()}");
                                                                            var day = postDate.getDate();
                                                                            var month = postDate.getMonth() + 1;
                                                                            var year = postDate.getFullYear();
                                                                            if (day < 10) {
                                                                                day = "0" + day;
                                                                            }
                                                                            if (month < 10) {
                                                                                month = "0" + month;
                                                                            }
                                                                            var formattedDate = day + "/" + month + "/" + year;
                                                                            document.write(formattedDate);
                                                                        </script>
                                                                    </a></li>
                                                                <li><a href="#">
                                                                        <c:forEach items="${TagList}" var="tag">
                                                                            <c:if test="${tag.getBlogTagID() == b.getBlogTagID()}">
                                                                                <a href="#" class="comments-bx"><i class="fa fa-tag"></i>${tag.getName()}</a>
                                                                                </c:if>
                                                                            </c:forEach> 
                                                                    </a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>                                      
                                        <div class="widget widget_tag_cloud">
                                            <h6 class="widget-title">Tags</h6>
                                            <div class="tagcloud"> 
                                                <c:forEach items="${TagList}" var="tag">

                                                    <a href="blogview?tagid=${tag.getBlogTagID()}">${tag.getName()}</a>

                                                </c:forEach> 
                                            </div>
                                        </div>
                                    </aside>
                                </div>
                                <!-- Side bar END -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Content END-->
            <!-- Footer ==== -->
            <footer>
                <div class="footer-top">
                    <div class="pt-exebar">
                        <div class="container">
                            <div class="d-flex align-items-stretch">
                                <div class="pt-logo mr-auto">
                                    <a href="index.html"><img src="assets/images/logo-white.png" alt=""/></a>
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
                                        <li><a href="assets/images/gallery/pic1.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic1.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic2.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic2.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic3.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic3.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic4.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic4.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic5.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic5.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic6.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic6.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic7.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic7.jpg" alt=""></a></li>
                                        <li><a href="assets/images/gallery/pic8.jpg" class="magnific-anchor"><img src="assets/images/gallery/pic8.jpg" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 text-center"> <a target="_blank" href="https://www.templateshub.net">Templates Hub</a></div>
                        </div>
                    </div>
            </footer>
            <!-- Footer END ==== -->
            <!-- scroll top button -->
            <button class="back-to-top fa fa-chevron-up" ></button>
        </div>
        <!-- External JavaScripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/vendors/bootstrap/js/popper.min.js"></script>
        <script src="assets/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
        <script src="assets/vendors/magnific-popup/magnific-popup.js"></script>
        <script src="assets/vendors/counter/waypoints-min.js"></script>
        <script src="assets/vendors/counter/counterup.min.js"></script>
        <script src="assets/vendors/imagesloaded/imagesloaded.js"></script>
        <script src="assets/vendors/masonry/masonry.js"></script>
        <script src="assets/vendors/masonry/filter.js"></script>
        <script src="assets/vendors/owl-carousel/owl.carousel.js"></script>
        <script src="assets/js/functions.js"></script>
        <script src="assets/js/contact.js"></script>
        <script src='assets/vendors/switcher/switcher.js'></script>



    </body>

</html>
