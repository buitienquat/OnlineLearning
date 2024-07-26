<%-- 
    Document   : topbar-right
    Created on : Jul 26, 2024, 11:43:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="topbar-right">
    <ul>
        <c:if test="${account != null}">
            <li>
            <c:if test="${account.getFullName() != null}">
                <span>Xin chào, ${account.getFullName()}</span>
            </c:if>

            </li>
            <!--  Student-->
            <c:choose>
                <c:when test="${account.getRoleID()== 3}"><a href="adminprofile">My Account</a>  </c:when>
                <c:when test="${account.getRoleID()== 2}"><a href="blog">My Account</a>  </c:when>
                <c:when test="${account.getRoleID()== 1}"><a href="dashboardmanager">My Account</a>  </c:when>
            </c:choose>
        </c:if>

        <c:if test="${account == null}">
            <li><a href="authen?action=login">Login</a></li>
            <li><a href="authen?action=register">Register</a></li>
        </c:if>
        <c:if test="${account != null}">
            <li>
                <a href="${pageContext.request.contextPath}/authen?action=log-out">Sign Out</a>
            </li>
        </c:if>
    </ul>
</div>