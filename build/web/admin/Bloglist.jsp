<%-- 
Document   : newjsp
Created on : Jun 16, 2024, 11:15:10 PM
Author     : vuduc
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <script type="text/javascript">
        function showAlert1() {
            alert("Update thành công!");
        }
        function showAlert2() {
            alert("Delete thành công !");
        }
            function confirmAction(action) {
        if (action === 'approve') {
            return confirm("Bạn có chắc chắn muốn chấp nhận không?");
        } else if (action === 'cancel') {
            return confirm("Bạn có chắc chắn muốn Ban khóa học này không?");
        }
        return false;
    }
    </script>
    <!-- Mirrored from educhamp.themetrades.com/demo/admin/courses.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:10:19 GMT -->
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
        <link rel="shortcut icon" type="image/x-icon" href="assets/assetsAdmin/images/favicon.png" />

        <!-- PAGE TITLE HERE ============================================= -->
        <title>EduChamp : Education HTML Template </title>

        <!-- MOBILE SPECIFIC ============================================= -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--[if lt IE 9]>
        <script src="assets/assetsAdmin/js/html5shiv.min.js"></script>
        <script src="assets/assetsAdmin/js/respond.min.js"></script>
        <![endif]-->

        <!-- All PLUGINS CSS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/assetsAdmin/css/assets.css">
        <link rel="stylesheet" type="text/css" href="assets/assetsAdmin/vendors/calendar/fullcalendar.css">

        <!-- TYPOGRAPHY ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/assetsAdmin/css/typography.css">

        <!-- SHORTCODES ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/assetsAdmin/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->
        <link rel="stylesheet" type="text/css" href="assets/assetsAdmin/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/assetsAdmin/css/dashboard.css">
        <link class="skin" rel="stylesheet" type="text/css" href="assets/assetsAdmin/css/color/color-1.css">

    </head>
    <body class="ttr-opened-sidebar ttr-pinned-sidebar">
<!-- Modal Popup -->
<div id="banModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="banModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="banModalLabel">Lý do ban blog</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="banForm" action="/swp-project/updateblog" method="POST">
                <div class="modal-body">
                    <input type="hidden" name="blogId" id="blogId" value="">
                    <div class="form-group">
                        <label for="banReason">Lý do:</label>
                        <textarea class="form-control" id="banReason" name="banReason" rows="3"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                    <button type="submit" class="btn btn-danger" name="btn" value="cancel">Ban</button>
                </div>
            </form>
        </div>
    </div>
</div>

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
                        <a href="index.html" class="ttr-logo">
                            <img alt="" class="ttr-logo-mobile" src="assets/assetsAdmin/images/logo-mobile.png" width="30" height="30">
                            <img alt="" class="ttr-logo-desktop" src="assets/assetsAdmin/images/logo-white.png" width="160" height="27">
                        </a>
                    </div>
                </div>
                <!--logo end -->
                <div class="ttr-header-menu">
                    <!-- header left menu start -->
                    <ul class="ttr-header-navigation">
                        <li>
                            <a href="admin/AdminHomepage.jsp" class="ttr-material-button ttr-submenu-toggle">HOME</a>
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
                        <li>
                            <a href="updateAdmin" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-user-avatar"><img alt="" src="assets/assetsAdmin/images/testimonials/pic3.jpg" width="32" height="32"></span></a>
                            <div class="ttr-header-submenu">
                                <ul>
                                    <li><a href="adminprofile">My profile</a></li>
                                    <li><a href="mailbox.html">Messages</a></li>
                                    <li><a href="../login.html">Logout</a></li>
                                </ul>
                            </div>
                        </li>

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
                    <a href="#"><img alt="" src="assets/assetsAdmin/images/logo.png" width="122" height="27"></a>
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
                            <a href="DashBoard" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-home"></i></span>
                                <span class="ttr-label">Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="CourseList" class="ttr-material-button">
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
                            <a href="BlogList" class="ttr-material-button">
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
    <h4 class="breadcrumb-title">Blog</h4>
    <ul class="db-breadcrumb-list">
        <li><a href="/swp-project/BlogList?status=1">Active</a></li>
        <li><a href="/swp-project/BlogList?status=0">Ban</a></li>
        <li><a href="/swp-project/BlogList?status=2">Pending</a></li>
    </ul>
</div>
                <div class="row">
                    <!-- Your Profile Views Chart -->
                    <div class="col-lg-12 m-b30">
                        <div class="widget-box">
                            <div class="wc-title">
                                <h4>Blog</h4>
                            </div>
                            <div class="widget-inner">

                                <c:forEach var="blog" items="${listBlog}">
                                    <div class="card-courses-list admin-courses">
                                        <div class="card-courses-media">
                                            <img src="${blog.blogImage}" alt=""/>
                                        </div>
                                        <div class="card-courses-full-dec">
                                            <div class="card-courses-title">
                                                <a href="">${blog.blogTitle}</a>
                                                   
                                            </div>
                                            <div class="card-courses-list-bx">
                                                <ul class="card-courses-view">
                                                
		<li class="card-courses-categories">
												<h5> PostDate</h5>
                                                                                                <h5>${blog.postDate}</h5>
											</li>

                                                    <li class="card-courses-stats">
                                                        <c:choose>
                                                            <c:when test="${blog.blogStatus == 0}"><a href="#" class="btn button-sm red radius-xl">inActive</a></c:when>
                                                            <c:when test="${blog.blogStatus == 1}"><a href="#" class="btn button-sm green radius-xl">Active</a></c:when>
                                                            <c:when test="${blog.blogStatus == 2}"><a href="#" class="btn button-sm blue radius-xl">Pending</a></c:when>
                                                        </c:choose>
                                                    </li>
                                                   
                                                </ul>
                                            </div>
                                            <div class="row card-courses-dec">
                                                <div class="col-md-12">
                                                    <h6 class="m-b10">Course Description</h6>
                                                    <p>${blog.blogDetail}</p>	

                                                </div>

                                                <form action="/swp-project/updateblog" method="POST">
                                                    <div class="col-md-12">
                                                        <input type="hidden" name="blogId" value="${blog.blogId}" />
                                                        <button onclick="return confirmAction('approve')" type="submit" class="btn green radius-xl outline" name="btn" value="approve">Approve</button>
                                                      
                                                        <button type="button" class="btn red outline radius-xl" data-toggle="modal" data-target="#banModal" onclick="setCourseID(${blog.blogId})">Reject</button>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>
                                    </div>
                                </c:forEach>
                                

                                
                                <div class="row text-center mt-2 mb-3">
                                <div class="col-12">
                                    <ul class="pagination justify-content-center mb-0 list-unstyled">
                                       <c:if test="${currentPage > 1}">
                                        <a href="?page=${currentPage - 1}&pageSize=${pageSize}&status=${status}" class="btn">Previous</a>
                                    </c:if>
                                    <c:forEach var="i" begin="1" end="${totalPages}">
                                        <a href="?page=${i}&pageSize=${pageSize}&status=${status}" class="${i == currentPage ? 'btn active' : 'btn'}">${i}</a>
                                    </c:forEach>
                                    <c:if test="${currentPage < totalPages}">
                                        <a href="?page=${currentPage + 1}&pageSize=${pageSize}&status=${status}" class="btn">Next</a>
                                    </c:if>
                                    </ul><!--end pagination-->
                                </div><!--end col-->
                            </div>

                            </div>
                        </div>
                    </div>
                    <!-- Your Profile Views Chart END-->
                </div>
            </div>
        </main>
        <div class="ttr-overlay"></div>

        <!-- External JavaScripts -->
        <script src="assets/assetsAdmin/js/jquery.min.js"></script>
        <script src="assets/assetsAdmin/vendors/bootstrap/js/popper.min.js"></script>
        <script src="assets/assetsAdmin/vendors/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/assetsAdmin/vendors/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/assetsAdmin/vendors/bootstrap-touchspin/jquery.bootstrap-touchspin.js"></script>
        <script src="assets/assetsAdmin/vendors/magnific-popup/magnific-popup.js"></script>
        <script src="assets/assetsAdmin/vendors/counter/waypoints-min.js"></script>
        <script src="assets/assetsAdmin/vendors/counter/counterup.min.js"></script>
        <script src="assets/assetsAdmin/vendors/imagesloaded/imagesloaded.js"></script>
        <script src="assets/assetsAdmin/vendors/masonry/masonry.js"></script>
        <script src="assets/assetsAdmin/vendors/masonry/filter.js"></script>
        <script src="assets/assetsAdmin/vendors/owl-carousel/owl.carousel.js"></script>
        <script src='assets/assetsAdmin/vendors/scroll/scrollbar.min.js'></script>
        <script src="assets/assetsAdmin/js/functions.js"></script>
        <script src="assets/assetsAdmin/vendors/chart/chart.min.js"></script>
        <script src="assets/assetsAdmin/js/admin.js"></script>
        <script src='assets/assetsAdmin/vendors/switcher/switcher.js'></script>
  <script>
    function setCourseID(blogId) {
        document.getElementById('blogId').value = blogId;
    }

    function validateBanForm() {
        var banReason = document.getElementById('banReason').value.trim();

        if (banReason === '') {
            alert('Vui lòng nhập lý do ban khóa học.');
            return false;
        }

        return true;
    }

    // Optional: Attach the validation function to the form submit event
    document.getElementById('banForm').addEventListener('submit', function(event) {
        if (!validateBanForm()) {
            event.preventDefault(); // Prevent form submission if validation fails
        }
    });
</script>
    </body>

    <!-- Mirrored from educhamp.themetrades.com/demo/admin/courses.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:11:35 GMT -->
</html>