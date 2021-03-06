<%-- 
    Document   : gallery
    Created on : Feb 23, 2022, 2:16:20 PM
    Author     : Minh-PC
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>Sunshine-Farm</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <!-- body -->
    <body class="main-layout inner_page">
        <!-- loader  -->
        <div class="loader_bg">
            <div class="loader"><img src="images/loading.gif" alt="#"/></div>
        </div>
        <!-- end loader -->
        <header class="full_bg">
            <%@include file="../components/homeheader.jsp" %>
        </header>

        <!-- end banner -->
        <div class="back_re">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="title">
                            <h2>B??? s??u t???p</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- gallery -->
        <div  class="gallery">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage">

                            <span>M???t s??? h??nh ???nh , ho???t ?????ng vui v??? b??n trong n??ng tr???i... </span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery1.jpg" alt="#"/></figure>
                        </div>
                         <p>?????n v???i v?????n cam c???a ch??ng t??i m???i ng?????i ???????c th?????ng mi???n ph?? t???i v?????n 
                            b??n c???nh ???? n???u ban mua t???i v?????n gi?? c??? c??ng s??? t???t h??n r???t nhi???u so v???i lo???i cam t????ng t??? tr??n th??? tr?????ng</p>
                    </div>
                    </br>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery2 (1).jpg" alt="#"/></figure>
                        </div>
                        <p>B???i b???i g???n n??ng tr???i,????y l?? m???t ?????a ??i???m vui c???a nhi???u b???n tr??? , l?? n??i c???a nh???ng cu??c
                        picnic mang l???i nhi???u tr???i nghi???m vui v???.</p>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery3.png" alt="#"/></figure>
                        </div>
                          <p>?????t l???a tr???i , ????y l?? m???t ho???t ?????ng mang l???i s??? k???t n???i c???a b???n v???i ng?????i th??n v?? b???n b??
                              h??? th?????ng ng???i h??t b??n c???nh ?????ng l???a hay l?? n?????ng c??c l???i th???c ph???m nh?? khoai s???n tr??ng ????...</p>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery4.jpg" alt="#"/></figure>    
                        </div>
                         <p>C???m tr???i, n?? c?? l??? l?? ho???t ?????ng m?? trong ?????i m???i ng?????i n??n th??? m???t l???n.
                             N?? l?? tr???i nghi???m v?? c??ng, v?? c??ng th?? v???</p>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery5.jpg" alt="#"/></figure>
                        </div>
                        <p>?????n v???i v?????n Xo??i c???a ch??ng t??i m???i ng?????i ???????c th?????ng mi???n ph?? t???i v?????n 
                            b??n c???nh ???? n???u ban mua t???i v?????n gi?? c??? c??ng s??? t???t h??n r???t nhi???u so v???i lo???i cam t????ng t??? tr??n th??? tr?????ng</p>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery6.jpeg" alt="#"/></figure>
                        </div>
                         <p>C??c c???n th??? c??ng c?? th??? ?????n ????y ????? tr???i nghi???m s??n t??m th???y qu??i </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- end gallery -->
        <%@include file="../components/homefooter.jsp" %>
    </body>
</html>