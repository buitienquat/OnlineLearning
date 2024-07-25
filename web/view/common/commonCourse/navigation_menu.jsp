<%-- 
    Document   : navigation_menu
    Created on : Jul 9, 2024, 2:03:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="menu-links navbar-collapse collapse justify-content-start" id="menuDropdown">
    <div class="menu-logo">
        <a href="/OnlineLearning/home"><img src="images/logo.png" alt=""></a>
    </div>
    <ul class="nav navbar-nav">	
        <li class="active"><a href="/OnlineLearning/home">Home</a>
       
        </li>
        <li><a href="javascript:;">Pages</a>
            
        </li>
        <li class="add-mega-menu"><a href="javascript:;">Our Courses <i class="fa fa-chevron-down"></i></a>
            <ul class="sub-menu add-menu">
                <li class="add-menu-left">
                    <h5 class="menu-adv-title">Our Courses</h5>
                    <ul>
                        <c:forEach items="${category}" var="ca">
                            <li><a href="course?action=searchCategory&categoryId=${ca.getCategoryID()}">${ca.getName()}</a></li>
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

