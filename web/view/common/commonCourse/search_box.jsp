<%-- 
    Document   : search_box
    Created on : Jul 9, 2024, 2:03:02 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="nav-search-bar">
    <form action="course">
        <input type="hidden" name="action" value="searchByName"/>
        <input name="keyword" value="" type="text" class="form-control" placeholder="Type to search">
        <span><i class="ti-search" onclick="return this.closest('form').submit()"></i></span>
    </form>
    <span id="search-remove"><i class="ti-close"></i></span>
</div>
