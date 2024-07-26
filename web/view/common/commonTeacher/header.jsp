<%-- 
    Document   : header
    Created on : Jul 26, 2024, 1:24:30 AM
    Author     : hienhack
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
    <link rel="icon" href="../error-404.html" type="image/x-icon" />
    <link rel="shortcut icon" type="image/x-icon" href="assets/assets_admin/images/favicon.png" />

    <!-- PAGE TITLE HERE ============================================= -->
    <title>EduChamp : Education HTML Template </title>

    <!-- MOBILE SPECIFIC ============================================= -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->

    <!-- All PLUGINS CSS ============================================= -->
    <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/assets.css">
    <link rel="stylesheet" type="text/css" href="assets/assets_admin/vendors/calendar/fullcalendar.css">

    <!-- TYPOGRAPHY ============================================= -->
    <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/typography.css">

    <!-- SHORTCODES ============================================= -->
    <link rel="stylesheet" type="text/css" href="assets/css/shortcodes/shortcodes.css">

    <!-- STYLESHEETS ============================================= -->

    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/dashboard.css">
    <link class="skin" rel="stylesheet" type="text/css" href="assets/assets_admin/css/color/color-1.css">


</head>
<body>
    <header class="ttr-header">
        <div class="ttr-header-wrapper">
            <!--sidebar menu toggler start -->
            <div class="ttr-toggle-sidebar ttr-material-button">
                <i class="ti-close ttr-open-icon"></i>
                <i class="ti-menu ttr-close-icon"></i>
            </div>
            <!--sidebar menu toggler end -->
            <!--logo start -->
            <div class="ttr-logo-box">
                <div>
                    <a href="index.html" class="ttr-logo">
                        <img alt="" class="ttr-logo-mobile" src="assets/assets_admin/images/logo-mobile.png" width="30" height="30">
                        <img alt="" class="ttr-logo-desktop" src="assets/assets_admin/images/logo-white.png" width="160" height="27">
                    </a>
                </div>
            </div>
            <!--logo end -->
            <div class="ttr-header-menu">
                <!-- header left menu start -->
                <ul class="ttr-header-navigation">
                    <li>
                        <a href="home" class="ttr-material-button ttr-submenu-toggle">HOME</a>
                    </li>

                </ul>
                <!-- header left menu end -->
            </div>
            <div class="ttr-header-right ttr-with-seperator">
                <!-- header right menu start -->
                <ul class="ttr-header-navigation">  
                    <c:if test="${account != null}">
                        <li>
                            <c:if test="${account.getFullName() != null}">
                                <a href="#" class="ttr-material-button ttr-submenu-toggle">Xin chào, ${account.getFullName()}</a>
                            </c:if>

                        </li>
                                      
                    <li>                      
                        <a href="#" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-user-avatar"><img alt="" src="${account.getImage()}" width="32" height="32"></span></a>
                        <div class="ttr-header-submenu">
                            <ul>
                                <li><a href="adminprofile">My profile</a></li>
                                <li><a href="home">Logout</a></li>
                            </ul>
                        </div>
                        
                        

                    </li>
                    </c:if>  
                </ul>
                <!-- header right menu end -->
            </div>
            <!--header search panel start -->
            <div class="ttr-search-bar">
                <form class="ttr-search-form">
                    <div class="ttr-search-input-wrapper">
                        <input type="text" name="qq" placeholder="search something..." class="ttr-search-input">
                        <button type="submit" name="search" class="ttr-search-submit"><i class="ti-arrow-right"></i></button>
                    </div>
                    <span class="ttr-search-close ttr-search-toggle">
                        <i class="ti-close"></i>
                    </span>
                </form>
            </div>
            <!--header search panel end -->
        </div>
    </header>
    <!-- header end -->
    <!-- Left sidebar menu start -->
    <div class="ttr-sidebar">
        <div class="ttr-sidebar-wrapper content-scroll">
            <!-- side menu logo start -->
            <div class="ttr-sidebar-logo">
                <a href="#"><img alt="" src="assets/assets_admin/images/logo.png" width="122" height="27"></a>
                <!-- <div class="ttr-sidebar-pin-button" title="Pin/Unpin Menu">
                        <i class="material-icons ttr-fixed-icon">gps_fixed</i>
                        <i class="material-icons ttr-not-fixed-icon">gps_not_fixed</i>
                </div> -->
                <div class="ttr-sidebar-toggle-button">
                    <i class="ti-arrow-left"></i>
                </div>
            </div>
            <!-- side menu logo end -->
            <!-- sidebar menu start -->
            <nav class="ttr-sidebar-navi">
                <ul>

                    <li>

                        <a href="writtenblog" class="ttr-material-button">
                            <span class="ttr-icon"><i class="ti-save-alt"></i></span>
                            <span class="ttr-label">Manage Blog</span>
                        </a>
                        <a href="coursemanage" class="ttr-material-button">
                            <span class="ttr-icon"><i class="ti-marker-alt"></i></span>
                            <span class="ttr-label">Manage Course</span>
                        </a>
                    </li>			
                    <li class="ttr-seperate"></li>
                </ul>
            </nav>
            <!-- sidebar menu end -->
        </div>
    </div>

    <script src="../assets/assets_admin/js/jquery.min.js"></script>
    <script src="../assets/assets_admin/vendors/bootstrap/js/popper.min.js"></script>
    <script src="../assets/assets_admin/vendors/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/assets_admin/vendors/bootstrap-select/bootstrap-select.min.js"></script>
    <script src="../assets/assets_admin/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
    <script src="../assets/assets_admin/vendors/magnific-popup/magnific-popup.js"></script>
    <script src="../assets/assets_admin/vendors/counter/waypoints-min.js"></script>
    <script src="../assets/assets_admin/vendors/counter/counterup.min.js"></script>
    <script src="../assets/assets_admin/vendors/imagesloaded/imagesloaded.js"></script>
    <script src="../assets/assets_admin/vendors/masonry/masonry.js"></script>
    <script src="../assets/assets_admin/vendors/masonry/filter.js"></script>
    <script src="../assets/assets_admin/vendors/owl-carousel/owl.carousel.js"></script>
    <script src='../assets/assets_admin/vendors/scroll/scrollbar.min.js'></script>
    <script src="../assets/assets_admin/js/functions.js"></script>
    <script src="../assets/assets_admin/vendors/chart/chart.min.js"></script>
    <script src="../assets/assets_admin/js/admin.js"></script>
    <script src="../assets/assets_admin/js/bootstrap.bundle.min.js"></script>
    <script src='../assets/assets_admin/vendors/switcher/switcher.js'></script>
</body>

