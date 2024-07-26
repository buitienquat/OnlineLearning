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
        <%@include file="/view/common/commonTeacher/header.jsp"%>
       
        <!--Main container start -->
        <main class="ttr-wrapper">
            <div class="container-fluid">
                <div class="db-breadcrumb">
                    <h4 class="breadcrumb-title">Manage Course</h4>
                    <ul class="db-breadcrumb-list">
                        <li><a href="home"><i class="fa fa-home"></i>Home</a></li>
                        <li><a href="coursemanage?status=0"><i class=" ${statusValue==0 ? 'active' : ''}"></i>Save</a></li>
                        <li><a href="coursemanage?status=1"><i class=" ${statusValue==1 ? 'active' : ''}"></i>Publish</a></li>
                        <li><a href="coursemanage?status=2"><i class=" ${statusValue==2 ? 'active' : ''}"></i>Pending</a></li>
                        <a href="#" class="btn radius-xl" data-bs-toggle="modal" data-bs-target="#newcourseadd">Add Course</a>                             
                    </ul>
                </div>	
                <div class="content-block">
                    <!-- Your Profile Views Chart -->
                    <div >
                        <div class="container">
                            <div >
                                <h4>My Course</h4>
                            </div>
                            <div class="ttr-blog-grid-3 row" id="masonry">
                                <c:forEach items="${cList}" var ="o">
                                    <div class="post action-card col-lg-4 col-md-6 col-sm-12 col-xs-12 m-b40">
                                        <div class="recent-news">
                                            <div class="action-box"> 
                                                <img src="assets/images/courses/${o.getImage() != null && !o.getImage().isEmpty() ? o.getImage() : 'default.jpg'}" alt=""/>    
                                            </div>     
                                            <div class="info-bx">
                                                <div class="card-courses-full-dec">
                                                    <div class="card-courses-title">
                                                        <a href="lessonmanage?courseid=${o.getCouseraID()}&coursename=${o.getName()}"> <h4  class="m-b5">${o.getName()}</h4></a>
                                                    </div>
                                                    <h5 class="m-b5">
                                                        <c:out value="${Utility.shortenText(o.getDescription(), 20)}"/>
                                                    </h5>
                                                    <div class="card-courses-list-bx">
                                                        <ul class="card-courses-view">
                                                            <li class="card-courses-categories">
                                                                <h4>Category</h4>
                                                                <c:forEach items="${cateList}" var="tag">
                                                                    <c:if test="${tag.getCategoryID() == o.getCategory_categoryID()}">
                                                                        <h4>${tag.getName()}</h4>
                                                                    </c:if>
                                                                </c:forEach>    
                                                            </li>
                                                            <li class="card-courses-categories">
                                                                <h4>Price</4>

                                                                    <h4>${o.getOriginalPrice()} </h4>
                                                            </li>
                                                        </ul>
                                                    </div>                                                          
                                                </div>
                                                <div class="row card-courses-dec">
                                                    <div class="col-md-12">
                                                        <a href="#" class="btn btn-primary edit-button" data-bs-toggle="modal" data-bs-target="#newcourseadd"
                                                           data-courseid="${o.getCouseraID()}"
                                                           data-title="${o.getName()}"
                                                           data-course-image="${o.getImage()}"
                                                           data-category="${o.getCategory_categoryID()}"
                                                           data-fee="${o.getFeestatus()}"
                                                           data-price="${o.getOriginalPrice()}"
                                                           data-description="${o.getDescription()}"
                                                           data-introduce="${o.getIntroduce()}">Edit</a>
                                                        <a href="coursemanage?type=0&id=${o.getCouseraID()}&status=${statusValue}&page=${currentPage}" class="btn red outline radius-xl delete-button">Delete</a>
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
                                                <li class="page-item"><a class="page-link" href="coursemanage?page=${currentPage - 1}&status=${statusValue}" aria-label="Previous">< Prev</a></li>
                                                </c:when>
                                                <c:otherwise>
                                                <li class="page-item disabled"><a class="page-link" href="#" aria-label="Previous">< Prev</a></li>
                                                </c:otherwise>
                                            </c:choose>
                                            <c:forEach begin="1" end="${totalPages}" var="i">
                                            <li class="page-item ${currentPage == i ? 'active' : ''}"><a class="page-link" href="coursemanage?page=${i}&status=${statusValue}">${i}</a></li>
                                            </c:forEach>
                                            <c:choose>
                                                <c:when test="${currentPage < totalPages}">
                                                <li class="page-item"><a class="page-link" href="coursemanage?page=${currentPage + 1}&status=${statusValue}" aria-label="Next">Next ></a></li>
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

        <div class="modal fade" id="newcourseadd" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xxl modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header border-bottom p-3">
                        <h5 class="modal-title" id="exampleModalLabel">Add Course</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form class="edit-profile m-b30" action="coursemanage" enctype="multipart/form-data" method="post">
                        <div class="modal-body p-3 pt-4">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="d-grid">
                                        <p class="text-muted">Upload your picture of course</p>
                                        <div class="preview-box d-block justify-content-center rounded shadow overflow-hidden bg-light p-1" id="courseImagePreview">
                                            <img src="assets/images/courses/pic1.png" alt="Course Image" name="courseImage" id="courseImage">
                                        </div>
                                        <input type="file" id="input-file" name="image" accept="image/*" onchange="handleChange()" hidden/>
                                        <input type="hidden" id="current-image-filename" name="currentImageFilename" value="">
                                        <label class="btn-upload btn btn-primary mt-4" for="input-file">Upload Image</label>
                                    </div>
                                </div>

                                <input type="hidden" name="courseid" value="">
                                <div class="col-md-8 mt-4 mt-sm-0">
                                    <div class="ms-md-4">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Course Title</label>
                                                    <div>
                                                        <input name="title" id="coursetitle" class="form-control" type="text" value="" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Category</label>
                                                    <select class="form-control" name="cate" id="cateSelect" title="Select Category" required>
                                                        <c:forEach items="${cateList}" var="i">
                                                            <option value="${i.getCategoryID()}">${i.getName()}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Fee</label>
                                                    <div>
                                                        <input name="fee" id="coursefee" class="form-control" type="text" value="" required>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Price</label>
                                                    <div>
                                                        <input name="price" class="form-control" type="text" value="" required>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Description <span class="text-danger">*</span></label>
                                                    <br>
                                                    <textarea name="description"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Introduce <span class="text-danger">*</span></label>
                                                    <br>
                                                    <textarea name="introduce"></textarea>
                                                </div>
                                            </div>

                                            <div class="col-lg-12 text-end">
                                                <button type="submit" class="btn btn-primary" name="action" value="save">Save Course</button>
                                                <button type="submit" class="btn btn-primary" name="action" value="send">Send Course</button>
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

                                            document.addEventListener('DOMContentLoaded', function () {
                                                const courseModal = document.getElementById('newcourseadd');
                                                const courseTitle = document.getElementById('coursetitle');
                                                const courseImage = document.getElementById('courseImage');
                                                const courseId = document.querySelector('input[name="courseid"]');
                                                const tagSelect = document.getElementById('cateSelect');
                                                const courseFee = document.querySelector('input[name="fee"]');
                                                const coursePrice = document.querySelector('input[name="price"]');
                                                const courseDescription = document.querySelector('textarea[name="description"]');
                                                const courseIntroduce = document.querySelector('textarea[name="introduce"]');
                                                const currentImageFilename = document.getElementById('current-image-filename');

                                                courseModal.addEventListener('show.bs.modal', function (event) {
                                                    const button = event.relatedTarget;
                                                    const courseTitleValue = button.getAttribute('data-title');
                                                    const courseImageValue = button.getAttribute('data-course-image');
                                                    const courseIdValue = button.getAttribute('data-courseid');
                                                    const courseFeeValue = button.getAttribute('data-fee');
                                                    const coursePriceValue = button.getAttribute('data-price');
                                                    const courseDescriptionValue = button.getAttribute('data-description');
                                                    const courseIntroduceValue = button.getAttribute('data-introduce');

                                                    courseTitle.value = courseTitleValue || '';
                                                    courseImage.src = courseImageValue ? 'assets/images/courses/' + courseImageValue : 'assets/images/courses/default.jpg';
                                                    courseId.value = courseIdValue || '';
                                                    currentImageFilename.value = courseImageValue || '';
                                                    courseFee.value = courseFeeValue || '';
                                                    coursePrice.value = coursePriceValue || '';
                                                    courseDescription.value = courseDescriptionValue || '';
                                                    courseIntroduce.value = courseIntroduceValue || '';
                                                });

                                                courseModal.addEventListener('hidden.bs.modal', function () {
                                                    courseTitle.value = '';
                                                    courseImage.src = 'assets/images/courses/default.jpg';
                                                    courseId.value = '';
                                                    currentImageFilename.value = '';
                                                    courseFee.value = '';
                                                    coursePrice.value = '';
                                                    courseDescription.value = '';
                                                    courseIntroduce.value = '';
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