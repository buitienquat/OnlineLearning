<%-- 
    Document   : pagination
    Created on : Jul 9, 2024, 2:05:00 PM
    Author     : Admin
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-lg-12 m-b20">
    <div class="pagination-bx rounded-sm gray clearfix">
        <ul class="pagination">
            <c:if test="${pageControl.page == 1}">
                <li class="previous"><a href="${pageControl.urlPattern}page=1"><i class="ti-arrow-left"></i> Prev</a></li>
            </c:if>
            <c:if test="${pageControl.page != 1}">
                <li class="previous"><a href="${pageControl.urlPattern}page=${pageControl.page - 1}"><i class="ti-arrow-left"></i> Prev</a></li>
            </c:if>

            <c:forEach begin="1" end="${pageControl.totalPage}" var="pageNumber">
                <li class="${pageNumber == pageControl.page ? 'active' : ''}">
                    <a href="${pageControl.urlPattern}page=${pageNumber}">${pageNumber}</a>
                </li>
            </c:forEach>
            <c:if test="${pageControl.page == pageControl.totalPage}">
                <li class="next"><a href="${pageControl.urlPattern}page=${pageControl.totalPage}">Next <i class="ti-arrow-right"></i></a></li>
            </c:if>
            <c:if test="${pageControl.page != pageControl.totalPage}">
                <li class="next"><a href="${pageControl.urlPattern}page=${pageControl.page + 1}">Next <i class="ti-arrow-right"></i></a></li>
            </c:if>
            <!--            <li class="next"><a href="#">Next <i class="ti-arrow-right"></i></a></li>-->
        </ul>
    </div>
</div>
