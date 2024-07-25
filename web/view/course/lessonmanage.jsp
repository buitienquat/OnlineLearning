<%@ page import="Utility.Utility" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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
        <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/shortcodes/shortcodes.css">

        <!-- STYLESHEETS ============================================= -->

        <link rel="stylesheet" type="text/css" href="assets/assets_admin/css/style.css">
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
            textarea {
                width: 100%;
                height: 150px;
                padding: 12px 20px;
                box-sizing: border-box;
                border: 2px solid #ccc;
                border-radius: 4px;
                background-color: #f8f8f8;
                font-size: 16px;
                resize: none;
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

                            <a href="writtenblog" class="ttr-material-button">
                                <span class="ttr-icon"><i class="ti-save-alt"></i></span>
                                <span class="ttr-label">Manage Blog</span>
                            </a>
                            <a href="course" class="ttr-material-button">
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
        <!-- Left sidebar menu end -->

        <!--Main container start -->
        <main class="ttr-wrapper">
            <div class="container-fluid">
                <div class="db-breadcrumb">
                    <h4 class="breadcrumb-title">Manage Lesson</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="index.html"><i class="fa fa-home"></i>Home</a></li>
                        <a href="#" class="btn radius-xl" data-bs-toggle="modal" data-bs-target="#newcourseadd">Add Lesson</a>                             
                    </ul>
                </div>	
                <div class="row">
                    <!-- Your Profile Views Chart -->
                    <div class="col-lg-12 m-b30">
                        <div class="widget-box">
                            <div class="wc-title">
                                <h4>Lesson of : ${param.coursename}</h4>
                            </div>

                            <c:forEach var="lesson" items="${listLesson}">

                                <div class="card-courses-list admin-courses">
                                    <div style="margin:0px 40px 0px 20px;">
                                        <iframe width="560" height="315" data-src="${lesson.video}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                    </div>
                                    <div class="card-courses-full-dec">
                                        <div class="card-courses-title">
                                            <h4>${lesson.title}</h4>
                                        </div>
                                        <div class="card-courses-list-bx">
                                            <ul class="card-courses-view">
                                                <li class="card-courses-categories">
                                                    <h5>Time</h5>
                                                    <h4>${lesson.time}</h4>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="row card-courses-dec">
                                            <div class="col-md-12">
                                                <h6 class="m-b10">Note</h6>
                                                <p>${lesson.note}</p>	
                                            </div>
                                            <div class="col-md-12">
                                                <a href="#" class="btn green radius-xl outline edit-button" data-bs-toggle="modal" data-bs-target="#newcourseadd"
                                                   data-lessonid="${lesson.getLessonID()}"
                                                   data-title="${lesson.getTitle()}"
                                                   data-video="${lesson.getVideo()}"
                                                   data-note="${lesson.getNote()}"
                                                   data-number="${lesson.getNumberLesson()}">Edit</a>
                                                <a href="lessonmanage?type=0&id=${lesson.getLessonID()}&courseid=${param.courseid}&coursename=${param.coursename}&page=${currentPage}" class="btn red outline radius-xl ">Delete</a>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </c:forEach>

                            <div class="row text-center mt-2 mb-3">
                                <div class="col-12">
                                    <ul class="pagination justify-content-center mb-0 list-unstyled">
                                        <c:choose>
                                            <c:when test="${currentPage > 1}">
                                                <li class="page-item"><a class="page-link" href="lessonmanage?courseid=${param.courseid}&coursename=${param.coursename}&page=${currentPage - 1}" aria-label="Previous">< Prev</a></li>
                                                </c:when>
                                                <c:otherwise>
                                                <li class="page-item disabled"><a class="page-link" href="#" aria-label="Previous">< Prev</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:forEach begin="1" end="${totalPages}" var="i">
                                            <li class="page-item ${currentPage == i ? 'active' : ''}"><a class="page-link" href="lessonmanage?courseid=${param.courseid}&coursename=${param.coursename}&page=${i}">${i}</a></li>
                                            </c:forEach>
                                            <c:choose>
                                                <c:when test="${currentPage < totalPages}">
                                                <li class="page-item"><a class="page-link" href="lessonmanage?courseid=${param.courseid}&coursename=${param.coursename}&page=${currentPage + 1}" aria-label="Next">Next ></a></li>
                                                </c:when>
                                                <c:otherwise>
                                                <li class="page-item disabled"><a class="page-link" href="#" aria-label="Next">Next ></a></li>
                                                </c:otherwise>
                                            </c:choose>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- Your Profile Views Chart END-->
                </div>
            </div>
        </main>
        <div class="ttr-overlay"></div>

        <div class="modal fade" id="newcourseadd" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xxl modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header border-bottom p-3">
                        <h5 class="modal-title" id="exampleModalLabel">Add Lesson</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form class="edit-profile m-b30" action="lessonmanage" enctype="multipart/form-data" method="post">
                        <div class="modal-body p-3 pt-4">
                            <div class="row">
                                <input type="hidden" name="lessonid" value="">
                                <div class="col-md-8 mt-4 mt-sm-0">
                                    <div class="ms-md-4">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Title</label>
                                                    <div>
                                                        <input name="title" id="coursetitle" class="form-control" type="text" value="" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Video</label>
                                                    <div>
                                                        <input name="video" id="video" class="form-control" type="text" value="" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Note</label>
                                                    <div>
                                                        <input name="note" id="note" class="form-control" type="text" value="" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <input type="hidden" name="date" id="currentTimeInput" value="">
                                            <input type="hidden" name="courseid" value="${param.courseid}">
                                            <input type="hidden" name="lessonid" value="">
                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Number Lesson<span class="text-danger">*</span></label>
                                                    <br>
                                                    <input name="number" id="number" class="form-control" value="">
                                                </div>
                                            </div>
                                            <div class="col-lg-12 text-end">
                                                <button type="submit" class="btn btn-primary" name="action" value="save">Save Lesson</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
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
            // Function to convert YouTube URL to embed URL
            function convertToEmbedUrl(url) {
                const videoId = url.split('v=')[1];
                const ampersandPosition = videoId.indexOf('&');
                if (ampersandPosition !== -1) {
                    return videoId.substring(0, ampersandPosition);
                }
                return videoId;
            }

// Lấy tất cả các iframe và cập nhật src với URL nhúng
            document.querySelectorAll('iframe[data-src]').forEach(iframe => {
                const youtubeUrl = iframe.getAttribute('data-src');
                const embedUrl = "https://www.youtube.com/embed/" + convertToEmbedUrl(youtubeUrl);
                iframe.src = embedUrl;
            });


            document.addEventListener('DOMContentLoaded', function () {
                const lessonModal = document.getElementById('newcourseadd');
                const lessonIdInput = document.querySelector('input[name="lessonid"]');
                const lessonTitleInput = document.getElementById('coursetitle');
                const lessonVideoInput = document.getElementById('video');
                const lessonNoteInput = document.getElementById('note');
                const lessonNumberInput = document.getElementById('number');

                lessonModal.addEventListener('show.bs.modal', function (event) {
                    const button = event.relatedTarget;
                    const lessonId = button.getAttribute('data-lessonid');
                    const lessonTitle = button.getAttribute('data-title');
                    const lessonVideo = button.getAttribute('data-video');
                    const lessonNote = button.getAttribute('data-note');
                    const lessonNumber = button.getAttribute('data-number');

                    // Kiểm tra nếu dữ liệu không có giá trị hợp lệ, đặt giá trị mặc định
                    lessonIdInput.value = lessonId || '';
                    lessonTitleInput.value = lessonTitle || '';
                    lessonVideoInput.value = lessonVideo || '';
                    lessonNoteInput.value = lessonNote || '';
                    lessonNumberInput.value = lessonNumber || '';
                });

                lessonModal.addEventListener('hidden.bs.modal', function () {
                    // Đặt lại các trường trong modal khi đóng
                    lessonIdInput.value = '';
                    lessonTitleInput.value = '';
                    lessonVideoInput.value = '';
                    lessonNoteInput.value = '';
                    lessonNumberInput.value = '';
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