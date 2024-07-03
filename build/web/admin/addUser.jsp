<%-- 
    Document   : addUser
    Created on : Jun 24, 2024, 12:56:50 PM
    Author     : vuduc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <title>Tải lên tệp</title>
    </head>
    <body>
           <h1>Tải lên tệp hình ảnh</h1>
    <form method="post" action="/swp-project/UploadServlet" enctype="multipart/form-data">
        <input type="file" name="file" />
        <input type="submit" value="Tải lên" />
    </form>
    </body>
</html>
