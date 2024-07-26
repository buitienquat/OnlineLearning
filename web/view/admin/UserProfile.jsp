<%-- 
    Document   : UserProfile
    Created on : May 25, 2024, 8:55:14 PM
    Author     : vuduc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="model.User"%>
<%@page import="dal.implement.UserDBContext"%>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript">
        function showAlert1() {
            alert("Update thành công!");
        }
          function showAlert2() {
            alert("Delete thành công !");
        }
    </script>
    <!-- Mirrored from educhamp.themetrades.com/demo/admin/user-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->
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
        <script src="assets/assets_admin/js/html5shiv.min.js"></script>
        <script src="assets/assets_admin/js/respond.min.js"></script>
        <![endif]-->

        <!-- All PLUGINS CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/assets.css">
        <link rel="stylesheet" type="text/css" href="assets/assets_admin/vendors/calendar/fullcalendar.css">

        <!-- TYPOGRAPHY ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/typography.css">

        <!-- SHORTCODES ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/dashboard.css">
        <link class="skin" rel="stylesheet" type="text/css" href="assets/assets_admin/css/color/color-1.css">
<style>
  /* Thiết lập style cho select */
  #dropdown {
    min-width: 50px; /* Chiều rộng tối thiểu của dropdown */
    width: 50px; /* Chiều rộng tự động điều chỉnh dựa trên nội dung */
    float: left; /* Đặt về phía bên phải */
  }
</style>
    </head>
    <body class="ttr-opened-sidebar ttr-pinned-sidebar">
<!-- header start -->
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
                        <a href="dashboardmanager" class="ttr-logo">
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

                        <li>
                            <a href="#" class="ttr-material-button ttr-submenu-toggle"><i class="fa fa-bell"></i></a>
                            <div class="ttr-header-submenu noti-menu">
                                <div class="ttr-notify-header">
                                    <span class="ttr-notify-text-top">9 New</span>
                                    <span class="ttr-notify-text">User Notifications</span>
                                </div>
                                <div class="noti-box-list">
                                    <ul>
                                        <li>
                                            <span class="notification-icon dashbg-gray">
                                                <i class="fa fa-check"></i>
                                            </span>
                                            <span class="notification-text">
                                                <span>Sneha Jogi</span> sent you a message.
                                            </span>
                                            <span class="notification-time">
                                                <a href="#" class="fa fa-close"></a>
                                                <span> 02:14</span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="notification-icon dashbg-yellow">
                                                <i class="fa fa-shopping-cart"></i>
                                            </span>
                                            <span class="notification-text">
                                                <a href="#">Your order is placed</a> sent you a message.
                                            </span>
                                            <span class="notification-time">
                                                <a href="#" class="fa fa-close"></a>
                                                <span> 7 Min</span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="notification-icon dashbg-red">
                                                <i class="fa fa-bullhorn"></i>
                                            </span>
                                            <span class="notification-text">
                                                <span>Your item is shipped</span> sent you a message.
                                            </span>
                                            <span class="notification-time">
                                                <a href="#" class="fa fa-close"></a>
                                                <span> 2 May</span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="notification-icon dashbg-green">
                                                <i class="fa fa-comments-o"></i>
                                            </span>
                                            <span class="notification-text">
                                                <a href="#">Sneha Jogi</a> sent you a message.
                                            </span>
                                            <span class="notification-time">
                                                <a href="#" class="fa fa-close"></a>
                                                <span> 14 July</span>
                                            </span>
                                        </li>
                                        <li>
                                            <span class="notification-icon dashbg-primary">
                                                <i class="fa fa-file-word-o"></i>
                                            </span>
                                            <span class="notification-text">
                                                <span>Sneha Jogi</span> sent you a message.
                                            </span>
                                            <span class="notification-time">
                                                <a href="#" class="fa fa-close"></a>
                                                <span> 15 Min</span>
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <c:if test="${account != null}">
                        <li>
                            <c:if test="${account.getFullName() != null}">
                                <a href="#" class="ttr-material-button ttr-submenu-toggle">Xin chào, ${account.getFullName()}</a>
                            </c:if>

                        </li>
                                      
                    <li>                      
                        <a href="updateAdmin" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-user-avatar"><img alt="" src="${account.getImage()}" width="32" height="32"></span></a>
                        <div class="ttr-header-submenu">
                            <ul>
                                <li><a href="adminprofile">My profile</a></li>
                                <li><a href="authen?action=log-out">Logout</a></li>
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
                            <a href="dashboardmanager" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-home"></i></span>
                                <span class="ttr-label">Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="CourseList?status=1" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-book"></i></span>
                                <span class="ttr-label">Courses list</span>
                            </a>
                        </li>
                 
                      
                      
                        <li>
                            <a href="listuser" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-comments"></i></span>
                                <span class="ttr-label">ManageUser</span>
                            </a>
                        </li>
                        <li>
                            <a href="blogmanager?status=1" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-layout-accordion-list"></i></span>
                                <span class="ttr-label">Blog listing</span>
                            </a>
                        </li>
                      
                        <li class="ttr-seperate"></li>
                    </ul>
                    <!-- sidebar menu end -->
                </nav>
                <!-- sidebar menu end -->
            </div>
        </div>
        <!-- Left sidebar menu end -->

        <!--Main container start -->
        <main class="ttr-wrapper">
            <div class="container-fluid">
                <div class="db-breadcrumb">
                    <h4 class="breadcrumb-title">User Profile</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                        <li>User Profile</li>
                    </ul>
                </div>	
                <div class="row">
                    <!-- Your Profile Views Chart -->
                    <div class="col-lg-12 m-b30">
                        <div class="widget-box">
                            <div class="wc-title">
                                <h4>User Profile</h4>
                            </div>
                            <form class="edit-profile m-b30" action="/OnlineLearning/updateProfile" method="GET">
                            <div class="widget-inner">
                                <%

int userid = Integer.parseInt(request.getParameter("userid"));
String img = request.getParameter("img");
int status=Integer.parseInt(request.getParameter("status"));

                                %>                                

                                
                                    <div class="card-courses-user-pic">
                                        <img src="<%= img%>" alt=""/>
                                    </div>
                                    </br>
                                    <div class="">
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">user Id</label>
                                            <div class="col-sm-7">
                                                <input class="form-control" type="text" value="<%=userid%>" name="userid" readonly>
                                            </div>
                                        </div>
                                       
                                        </div>
                                               <div>change roll</div>
                                            <select id="dropdown" style="width: 50px;" name="role">
                                                    <option value="1">Admin</option>
                                                    <option value="2">Teacher</option>
                                                    <option value="3">User</option>
                                                  </select>
                                            
                                            
                                            <% if(status==1 || status==2){%>
                                            <div>change status</div>
                                            <select id="dropdown" style="width: 50px;" name="status">
                                                    <option value="2">Active</option>
                                                    <option value="3">Banned</option>
                                                  </select>
                                                <%}  else if(status==3){%>
                                                <div>change status</div>
                                                <select id="dropdown" style="width: 50px;" name="status">
                                                    <option value="3">Banned</option>
                                                    <option value="2">Active</option>
                                                    </select>
                                                        <%}%>

                                    </div>
                                            </br>
                                    <div class="">
                                        <div class="">
                                            <div class="row">
                                                <div class="col-sm-2">
                                                </div>
                                                <div class="col-sm-7">
                                                    <button onclick="showAlert1()" type="submit" class="btn" name="btn" value="update">Update</button>
                                                    <button onclick="showAlert2()" type="submit" class="btn-secondry" name="btn" value="delete">Delete</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                    <!-- Your Profile Views Chart END-->
                </div>
            </div>
        </main>
        <div class="ttr-overlay"></div>

        <!-- External JavaScripts -->
        <script src="assets/assets_admin/js/jquery.min.js"></script>
        <script src="assets/assets_admin/vendors/bootstrap/js/popper.min.js"></script>
        <script src="assets/assets_admin/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/assets_admin/vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/assets_admin/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
        <script src="assets/assets_admin/vendors/magnific-popup/magnific-popup.js"></script>
        <script src="assets/assets_admin/vendors/counter/waypoints-min.js"></script>
        <script src="assets/assets_admin/vendors/counter/counterup.min.js"></script>
        <script src="assets/assets_admin/vendors/imagesloaded/imagesloaded.js"></script>
        <script src="assets/assets_admin/vendors/masonry/masonry.js"></script>
        <script src="assets/assets_admin/vendors/masonry/filter.js"></script>
        <script src="assets/assets_admin/vendors/owl-carousel/owl.carousel.js"></script>
        <script src='assets/assets_admin/vendors/scroll/scrollbar.min.js'></script>
        <script src="assets/assets_admin/js/functions.js"></script>
        <script src="assets/assets_admin/vendors/chart/chart.min.js"></script>
        <script src="assets/assets_admin/js/admin.js"></script>
        <script src='assets/assets_admin/vendors/switcher/switcher.js'></script>
        
    </body>

    <!-- Mirrored from educhamp.themetrades.com/demo/admin/user-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->
</html>
