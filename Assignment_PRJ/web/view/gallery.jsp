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
                            <h2>Bộ sưu tập</h2>
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

                            <span>Một số hình ảnh , hoạt động vui vẻ bên trong nông trại... </span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery1.jpg" alt="#"/></figure>
                        </div>
                         <p>Đến với vườn cam của chúng tôi mọi người được thưởng miễn phí tại vườn 
                            bên cạnh đó nếu ban mua tại vườn giá cả cũng sẻ tốt hơn rất nhiều so với loại cam tương tự trên thị trường</p>
                    </div>
                    </br>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery2 (1).jpg" alt="#"/></figure>
                        </div>
                        <p>Bải bồi gần nông trại,đây là một địa điểm vui của nhiều bạn trẻ , là nơi của những cuôc
                        picnic mang lại nhiều trải nghiệm vui vẻ.</p>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery3.png" alt="#"/></figure>
                        </div>
                          <p>Đốt lữa trại , đây là một hoạt động mang lại sự kết nối của bạn với người thân và bạn bè
                              họ thường ngồi hát bên cạnh đống lữa hay là nướng các lại thực phẩm như khoai sắn tròng đó...</p>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery4.jpg" alt="#"/></figure>    
                        </div>
                         <p>Cắm trại, nó có lẻ là hoạt động mà trong đời mọi người nên thử một lần.
                             Nó là trại nghiệm vô cùng, vô cùng thú vị</p>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery5.jpg" alt="#"/></figure>
                        </div>
                        <p>Đến với vườn Xoài của chúng tôi mọi người được thưởng miễn phí tại vườn 
                            bên cạnh đó nếu ban mua tại vườn giá cả cũng sẻ tốt hơn rất nhiều so với loại cam tương tự trên thị trường</p>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="images/gallery6.jpeg" alt="#"/></figure>
                        </div>
                         <p>Các cần thủ cũng có thể đến đây để trải nghiệm săn tìm thủy quái </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- end gallery -->
        <%@include file="../components/homefooter.jsp" %>
    </body>
</html>