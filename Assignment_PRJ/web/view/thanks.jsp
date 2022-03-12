<%-- 
    Document   : shop
    Created on : Feb 22, 2022, 9:47:59 PM
    Author     : Minh-PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sunshine-Farm</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="startbootstrap-shop-homepage-gh-pages/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="startbootstrap-shop-homepage-gh-pages/css/styles.css" rel="stylesheet" />
    </head>

    <body>
        <%@include file="../components/narbarComponents_1.jsp" %>
        <div class="container" style="min-height: 500px">
            <div class="alert alert-danger text-center md-10" role="alert" >
                Thanh toan thanh cong !! Cam an ban da su dung dich vu cua chung toi !!
                <div class="text-center">
                    <a class="btn btn-outline-success" href="shop">Quay lai Shop</a>
                </div>
            </div>
        </div>
        <%@include file="../components/footerCompomemts.jsp" %>
    </body>
</html>
