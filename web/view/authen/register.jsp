<%-- 
    Document   : register
    Created on : Jul 1, 2024, 4:28:01 PM
    Author     : Admin
--%>

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

        <script>
            function validateForm() {
                var username = document.forms["registerForm"]["username"].value;
                var email = document.forms["registerForm"]["email"].value;
                var password = document.forms["registerForm"]["password"].value;
                var confirmPassword = document.forms["registerForm"]["confirmPassword"].value;
                var errorMessage = "";
                if (fullname.trim() === "") {
                    errorMessage += "Your name cannot be empty.\n";
                }

                if (username.length < 6) {
                    errorMessage += "Username must be at least 6 characters long.\n";
                }

                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (!emailPattern.test(email)) {
                    errorMessage += "Please enter a valid email address.\n";
                }

                var passwordPattern = /^(?=.*[A-Z])(?=.*[!@#$%^&*()_+]).{8,}$/;
                if (!passwordPattern.test(password)) {
                    errorMessage += "Password must be at least 8 characters long and contain at least one uppercase letter and one special character.\n";
                }

                if (password !== confirmPassword) {
                    errorMessage += "Password confirmation does not match the entered password.\n";
                }

                if (errorMessage) {
                    alert(errorMessage);
                    return false;
                }
                return true;
            }

            function addFocusedClass(element) {
                element.parentNode.parentNode.classList.add('focused');
            }

            function removeFocusedClass(element) {
                element.parentNode.parentNode.classList.remove('focused');
            }
        </script>

    </head>

    <body id="bg">
        <div class="page-wraper">
            <div id="loading-icon-bx"></div>
            <div class="account-form">
                <div class="account-head" style="background-image:url(${pageContext.request.contextPath}/assets/images/background/bg2.jpg);">
                    <a href="index.html"><img src="${pageContext.request.contextPath}/assets/images/logo-white-2.png" alt=""></a>
                </div>
                <div class="account-form-inner">
                    <div class="account-container">
                        <div class="heading-bx left">
                            <h2 class="title-head">Register <span>Now</span></h2>
                            <p>Login to your account <a href="authen?action=login">Click here</a></p>
                        </div>
                        <form action="RegisterServlet" method="POST" class="contact-bx" onsubmit="return validateForm()">
                            <div class="row placeani">  
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="username">Username</label>
                                        <input id="username" name="username" type="text" required class="form-control" placeholder="Enter your username" onfocus="addFocusedClass(this)" onblur="removeFocusedClass(this)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="yourName">Full Name</label>
                                        <input id="yourName" name="fullname" type="text" required class="form-control" placeholder="Enter your name" onfocus="addFocusedClass(this)" onblur="removeFocusedClass(this)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="email">Your Email</label>
                                        <input id="email" name="email" type="email" required class="form-control" placeholder="Enter your email address" onfocus="addFocusedClass(this)" onblur="removeFocusedClass(this)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="password">Your Password</label>
                                        <input id="password" name="password" type="password" required class="form-control" placeholder="Enter your password" onfocus="addFocusedClass(this)" onblur="removeFocusedClass(this)">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label for="confirmPassword">Confirm Password</label>
                                        <input id="confirmPassword" name="confirmPassword" type="password" required class="form-control" placeholder="Re-enter your password" onfocus="addFocusedClass(this)" onblur="removeFocusedClass(this)">
                                    </div>
                                </div>
                                <span class="col-lg-12 m-b30" style="color:red">${error}</span>
                                <div class="col-lg-12 m-b30">
                                    <button type="submit" class="btn button-md">Register</button>
                                </div>
                                <div class="col-lg-12">
                                    <h6>Register with social media</h6>
                                    <div class="d-flex">
                                        <a class="btn flex-fill m-r5 facebook" href="#"><i class="fa fa-facebook"></i>Facebook</a>
                                        <a class="btn flex-fill m-l5 google-plus" href="#"><i class="fa fa-google-plus"></i>Google Plus</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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
        <script src="${pageContext.request.contextPath}/assets/vendors/switcher/switcher.js"></script>
    </body>

</html>
