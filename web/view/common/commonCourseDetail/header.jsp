<%-- 
    Document   : header
    Created on : Jul 9, 2024, 2:07:17 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <li><a href="javascript:;">Pages</a>
                      
                        </li>
                        <li class="add-mega-menu"><a href="/OnlineLearning/course">Our Courses</a>
                            
                        </li>
                        <li><a href="javascript:;">Blog </a>
                            
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
