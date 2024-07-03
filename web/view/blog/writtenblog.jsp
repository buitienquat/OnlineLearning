<%@ page import="Utility.Utility" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from educhamp.themetrades.com/demo/admin/bookmark.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Feb 2019 13:09:05 GMT -->
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


        <!-- SweetAlert CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
        <!-- SweetAlert JS -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


        <script src="https://cdn.tiny.cloud/1/960h90rahv9jcykqywlacmvxqve30f5e9a1jn5id5msshl6a/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

        <style>
            .form-row {
                display: flex;
                flex-direction: column;
            }

            .form-row input[type="text"],
            .form-row textarea {
                width: 100%;
                border: none;
                outline: none;
            }

            .form-row input[type="text"] {
                height: 60px;
                font-size: 40px;
            }


            .preview-box {
                width: 100%; /* Set the width of the preview box */
                height: auto; /* Let the height adjust based on the image */
                text-align: center; /* Center the image horizontally */
                overflow: hidden; /* Hide any overflowing parts of the image */
            }

            .preview-content {
                max-width: 100%; /* Set a maximum width to prevent the image from exceeding the box width */
                max-height: 100%; /* Set a maximum height to prevent the image from exceeding the box height */
            }
            .modal-xxl {
                max-width: 1600px;
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
                            <a href="../index.html" class="ttr-material-button ttr-submenu-toggle">HOME</a>
                        </li>
                        <li>
                            <a href="#" class="ttr-material-button ttr-submenu-toggle">QUICK MENU <i class="fa fa-angle-down"></i></a>
                            <div class="ttr-header-submenu">
                                <ul>
                                    <li><a href="../courses.html">Our Courses</a></li>
                                    <li><a href="../event.html">New Event</a></li>
                                    <li><a href="../membership.html">Membership</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <!-- header left menu end -->
                </div>
                <div class="ttr-header-right ttr-with-seperator">
                    <!-- header right menu start -->
                    <ul class="ttr-header-navigation">
                        <li>
                            <a href="#" class="ttr-material-button ttr-search-toggle"><i class="fa fa-search"></i></a>
                        </li>
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
                            <a href="#" class="ttr-material-button ttr-submenu-toggle"><span class="ttr-user-avatar"><img alt="" src="assets/assets_admin/images/testimonials/pic3.jpg" width="32" height="32"></span></a>
                            <div class="ttr-header-submenu">
                                <ul>
                                    <li><a href="user-profile.html">My profile</a></li>
                                    <li><a href="list-view-calendar.html">Activity</a></li>
                                    <li><a href="mailbox.html">Messages</a></li>
                                    <li><a href="../login.html">Logout</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="ttr-hide-on-mobile">
                            <a href="#" class="ttr-material-button"><i class="ti-layout-grid3-alt"></i></a>
                            <div class="ttr-header-submenu ttr-extra-menu">
                                <a href="#">
                                    <i class="fa fa-music"></i>
                                    <span>Musics</span>
                                </a>
                                <a href="#">
                                    <i class="fa fa-youtube-play"></i>
                                    <span>Videos</span>
                                </a>
                                <a href="#">
                                    <i class="fa fa-envelope"></i>
                                    <span>Emails</span>
                                </a>
                                <a href="#">
                                    <i class="fa fa-book"></i>
                                    <span>Reports</span>
                                </a>
                                <a href="#">
                                    <i class="fa fa-smile-o"></i>
                                    <span>Persons</span>
                                </a>
                                <a href="#">
                                    <i class="fa fa-picture-o"></i>
                                    <span>Pictures</span>
                                </a>
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
                            <a href="blog" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-marker-alt"></i></span>
                                <span class="ttr-label">Add Blog</span>
                            </a>
                            <a href="writtenblog" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-save-alt"></i></span>
                                <span class="ttr-label">Manage Blog</span>
                            </a>
                        </li>			
                        <li class="ttr-seperate"></li>
                    </ul>
                </nav>
                <!-- sidebar menu end -->
            </div>
        </div>
        <!-- Left sidebar menu end -->

        <!--Main container start -->
        <main class="ttr-wrapper">
            <div class="container-fluid">
                <div class="db-breadcrumb">
                    <h4 class="breadcrumb-title">Manage Blog</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
                        <li><a href="writtenblog?status=0"><i class=" ${statusValue==0 ? 'active' : ''}"></i>Save</a></li>
                        <li><a href="writtenblog?status=1"><i class=" ${statusValue==1 ? 'active' : ''}"></i>Publish</a></li>
                        <a href="#" class="btn radius-xl" data-bs-toggle="modal" data-bs-target="#newblogadd">Add Blog</a>                             
                    </ul>

                </div>	
                <div class="content-block">
                    <!-- Your Profile Views Chart -->
                    <div >
                        <div class="container">
                            <div >
                                <h4>My Blog</h4>
                            </div>
                            <div class="ttr-blog-grid-3 row" id="masonry">
                                <c:forEach items="${bList}" var ="o">
                                    <div class="post action-card col-lg-4 col-md-6 col-sm-12 col-xs-12 m-b40">
                                        <div class="recent-news">
                                            <div class="action-box">
                                                <img src="assets/images/blog/${o.blogImage != null && !o.blogImage.isEmpty() ? o.blogImage : 'default.jpg'}" alt=""/>
                                            </div>     
                                            <div class="info-bx">
                                                <div class="card-courses-full-dec">
                                                    <div class="card-courses-title">
                                                        <h4 class="m-b5">${o.getBlogTitle()}</h4>
                                                    </div>
                                                    <h5 class="m-b5">
                                                        <c:out value="${Utility.shortenText(o.getBlogDetail(), 20)}"/>
                                                    </h5>
                                                    <div class="card-courses-list-bx">
                                                        <ul class="card-courses-view">
                                                            <li class="card-courses-categories">
                                                                <h5>Tag</h5>
                                                                <c:forEach items="${TagList}" var="tag">
                                                                    <c:if test="${tag.getBlogTagID() == o.getBlogTagID()}">
                                                                        <h4>${tag.getName()}</h4>
                                                                    </c:if>
                                                                </c:forEach>    
                                                            </li>
                                                            <li class="card-courses-review">
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
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="row card-courses-dec">

                                                        <div class="col-md-12">
                                                            <a href="#" class="btn radius-xl" data-bs-toggle="modal" data-bs-target="#newblogadd"
                                                               data-blog-id="${o.getBlogID()}"
                                                               data-blog-title="${o.getBlogTitle()}"
                                                               data-blog-image="${o.getBlogImage()}"
                                                               data-post-date="${o.getPostDate()}"
                                                               data-blog-detail='${o.getBlogDetail()}'
                                                               data-blog-tag-id="${o.getBlogTagID()}">Edit</a>
                                                            <a href="writtenblog?type=0&id=${o.getBlogID()}&status=${statusValue}&page=${currentPage}" class="btn red outline radius-xl delete-button">Delete</a>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>

                                        </div>                                              
                                    </div>
                                </c:forEach>	

                            </div>
                            <div class="row text-center mt-2 mb-3">
                                <div class="col-12">
                                    <ul class="pagination justify-content-center mb-0 list-unstyled">
                                        <c:choose>
                                            <c:when test="${currentPage > 1}">
                                                <li class="page-item"><a class="page-link" href="writtenblog?page=${currentPage - 1}&status=${statusValue}" aria-label="Previous">< Prev</a></li>
                                                </c:when>
                                                <c:otherwise>
                                                <li class="page-item disabled"><a class="page-link" href="#" aria-label="Previous">< Prev</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:forEach begin="1" end="${totalPages}" var="i">
                                            <li class="page-item ${currentPage == i ? 'active' : ''}"><a class="page-link" href="writtenblog?page=${i}&status=${statusValue}">${i}</a></li>
                                            </c:forEach>
                                            <c:choose>
                                                <c:when test="${currentPage < totalPages}">
                                                <li class="page-item"><a class="page-link" href="writtenblog?page=${currentPage + 1}&status=${statusValue}" aria-label="Next">Next ></a></li>
                                                </c:when>
                                                <c:otherwise>
                                                <li class="page-item disabled"><a class="page-link" href="#" aria-label="Next">Next ></a></li>
                                                </c:otherwise>
                                            </c:choose>
                                    </ul><!--end pagination-->
                                </div><!--end col-->
                            </div>

                        </div>
                    </div>
                    <!-- Your Profile Views Chart END-->
                </div>
            </div>
        </main>
        <div class="ttr-overlay"></div>

        <div class="modal fade" id="newblogadd" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xxl modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header border-bottom p-3">
                        <h5 class="modal-title" id="exampleModalLabel">Add Blog</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form class="edit-profile m-b30" action="blog" enctype="multipart/form-data" method="post">
                        <div class="modal-body p-3 pt-4">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="d-grid">
                                        <p class="text-muted">Upload your picture of blog</p>
                                        <div class="preview-box d-block justify-content-center rounded shadow overflow-hidden bg-light p-1" id="blogImagePreview">
                                            <img src="assets/images/blog/default.jpg" alt="Blog Image" name="blogImage" id="blogImage">
                                        </div>
                                        <input type="file" id="input-file" name="image" accept="image/*" onchange="handleChange()" hidden/>
                                        <input type="hidden" id="current-image-filename" name="currentImageFilename" value="">
                                        <label class="btn-upload btn btn-primary mt-4" for="input-file">Upload Image</label>
                                    </div>
                                </div><!--end col-->
                                <input type="hidden" name="date" id="currentTimeInput" value="">
                                <input type="hidden" name="blogid" id="blogid" value="">
                                <div class="col-md-8 mt-4 mt-sm-0">
                                    <div class="ms-md-4">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Blog Title</label>
                                                    <div>
                                                        <input name="title" id="blogTitle" class="form-control" type="text" value="" required>
                                                    </div>
                                                </div>
                                            </div><!--end col-->

                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Tag</label>
                                                    <select class="form-control" name="tag" id="tagSelect" title="Select Tag" required>
                                                        <c:forEach items="${TagList}" var="i">
                                                            <option value="${i.getBlogTagID()}">${i.getName()}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div><!--end col-->

                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Description <span class="text-danger">*</span></label>
                                                    <textarea name="texttitle" id="editor"></textarea>
                                                </div>
                                            </div><!--end col-->

                                            <div class="col-lg-12 text-end">
                                                <button type="submit" class="btn btn-primary" name="action" value="save">Save Blog</button>
                                                <button type="submit" class="btn btn-primary" name="action" value="publish">Publish Blog</button>
                                            </div><!--end col-->
                                        </div>
                                    </div>
                                </div><!--end col-->
                            </div><!--end row-->
                        </div>
                    </form>
                </div>
            </div>
        </div>


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
        <script src="assets/assets_admin/js/bootstrap.bundle.min.js"></script>
        <script src='assets/assets_admin/vendors/switcher/switcher.js'></script>
        <script>
                                            document.addEventListener('DOMContentLoaded', (event) => {
                                                const deleteButtons = document.querySelectorAll('.delete-button');
                                                deleteButtons.forEach(button => {
                                                    button.addEventListener('click', function (e) {
                                                        e.preventDefault(); // Ngăn chặn hành động mặc định của thẻ <a>
                                                        const href = this.getAttribute('href');

                                                        Swal.fire({
                                                            title: 'Are you sure?',
                                                            text: "You won't be able to revert this!",
                                                            icon: 'warning',
                                                            showCancelButton: true,
                                                            confirmButtonColor: '#3085d6',
                                                            cancelButtonColor: '#d33',
                                                            confirmButtonText: 'Yes, delete it!'
                                                        }).then((result) => {
                                                            if (result.isConfirmed) {
                                                                window.location.href = href;
                                                            }
                                                        });
                                                    });
                                                });
                                            });
        </script>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const blogModal = document.getElementById('newblogadd');
                const blogTitle = document.getElementById('blogTitle');
                const blogImage = document.getElementById('blogImage');
                const blogId = document.getElementById('blogid');
                const tagSelect = document.getElementById('tagSelect');
                const currentImageFilename = document.getElementById('current-image-filename');
                let editorInitialized = false;

                tinymce.init({
                    selector: 'textarea#editor',
                    width: '100%',
                    height: 600,
                    plugins: 'anchor autolink charmap codesample emoticons image link lists media searchreplace table visualblocks wordcount',
                    toolbar: 'undo redo | blocks fontfamily fontsize | bold italic underline strikethrough | link image media table | align lineheight | numlist bullist indent outdent | emoticons charmap | removeformat',
                    images_upload_url: '/OnlineLearning/upload',
                    images_upload_handler: function (blobInfo, success, failure) {
                        var xhr, formData;
                        xhr = new XMLHttpRequest();
                        xhr.withCredentials = false;
                        xhr.open('POST', '/OnlineLearning/upload');
                        xhr.onload = function () {
                            var json;
                            if (xhr.status != 200) {
                                failure('HTTP Error: ' + xhr.status);
                                return;
                            }
                            json = JSON.parse(xhr.responseText);
                            if (!json || typeof json.location != 'string') {
                                failure('Invalid JSON: ' + xhr.responseText);
                                return;
                            }
                            success(json.location);
                        };
                        formData = new FormData();
                        formData.append('file', blobInfo.blob(), blobInfo.filename());
                        xhr.send(formData);
                    },
                    setup: function (editor) {
                        editor.on('init', function () {
                            editorInitialized = true;
                        });
                    }
                });

                blogModal.addEventListener('show.bs.modal', function (event) {
                    const button = event.relatedTarget;
                    const blogTitleValue = button.getAttribute('data-blog-title');
                    const blogImageValue = button.getAttribute('data-blog-image');
                    const blogIdValue = button.getAttribute('data-blog-id');
                    const blogDetailValue = button.getAttribute('data-blog-detail');
                    const blogTagIdValue = button.getAttribute('data-blog-tag-id');

                    blogTitle.value = blogTitleValue || '';
                    blogImage.src = blogImageValue ? 'assets/images/blog/' + blogImageValue : 'assets/images/blog/default.jpg';
                    blogId.value = blogIdValue || '';
                    currentImageFilename.value = blogImageValue || '';

                    if (editorInitialized) {
                        tinymce.get('editor').setContent(blogDetailValue || '');
                    }

                    if (blogTagIdValue) {
                        tagSelect.value = blogTagIdValue;
                    } else {
                        tagSelect.selectedIndex = 0;
                    }
                });

                blogModal.addEventListener('hidden.bs.modal', function () {
                    blogTitle.value = '';
                    blogImage.src = 'assets/images/blog/default.jpg';
                    blogId.value = '';
                    currentImageFilename.value = '';
                    if (editorInitialized) {
                        tinymce.get('editor').setContent('');
                    }
                    tagSelect.selectedIndex = 0;
                });
            });

            const handleChange = () => {
                const fileUploader = document.querySelector('#input-file');
                const getFile = fileUploader.files;
                if (getFile.length !== 0) {
                    const uploadedFile = getFile[0];
                    readFile(uploadedFile);
                }
            };

            const readFile = (uploadedFile) => {
                if (uploadedFile) {
                    const reader = new FileReader();
                    reader.onload = () => {
                        const parent = document.querySelector('.preview-box');
                        const img = document.createElement('img');
                        img.src = reader.result;
                        img.classList.add('preview-content');
                        img.onload = () => {
                            const parentWidth = parent.offsetWidth;
                            const imgWidth = img.width;
                            const imgHeight = img.height;

                            const scaleFactor = parentWidth / imgWidth;
                            const newWidth = imgWidth * scaleFactor;
                            const newHeight = imgHeight * scaleFactor;

                            img.style.width = `${newWidth}px`;
                            img.style.height = `${newHeight}px`;
                        };
                        parent.innerHTML = "";
                        parent.appendChild(img);
                    };
                    reader.readAsDataURL(uploadedFile);
                }
            };

            document.addEventListener("DOMContentLoaded", function () {
                const currentTimeInput = document.getElementById("currentTimeInput");
                const now = new Date();
                const formattedTime = now.toISOString().slice(0, 10);
                currentTimeInput.value = formattedTime;
            });
        </script>
        <script>
            document.addEventListener('DOMContentLoaded', (event) => {
                const deleteButtons = document.querySelectorAll('.delete-button');
                deleteButtons.forEach(button => {
                    button.addEventListener('click', function (e) {
                        e.preventDefault(); // Ngăn chặn hành động mặc định của thẻ <a>
                        const href = this.getAttribute('href');

                        Swal.fire({
                            title: 'Are you sure?',
                            text: "You won't be able to revert this!",
                            icon: 'warning',
                            showCancelButton: true,
                            confirmButtonColor: '#3085d6',
                            cancelButtonColor: '#d33',
                            confirmButtonText: 'Yes, delete it!'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                window.location.href = href;
                            }
                        });
                    });
                });
            });
        </script>

</html>