<%-- 
    Document   : pagination
    Created on : May 23, 2024, 3:15:17 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-lg-12 m-b20">
    <div class="pagination-bx rounded-sm gray clearfix">
        <ul class="pagination">
            <li class="previous"><a href="#"><i class="ti-arrow-left"></i> Prev</a></li>
                <c:forEach begin="1" end="${pageControl.totalPage}" var="pageNumber">
                <li class="${pageNumber == pageControl.page ? 'active' : ''}">
                    <a href="${pageControl.urlPattern}page=${pageNumber}">${pageNumber}</a>
                    </li>
                </c:forEach>
            <li class="next"><a href="#">Next <i class="ti-arrow-right"></i></a></li>
        </ul>
    </div>
</div>
