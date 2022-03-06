<%-- 
    Document   : product
    Created on : Feb 27, 2022, 9:35:36 AM
    Author     : Minh-PC
--%>

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
        <title>TM Farm</title>
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
        <%@include file="../components/homeheader.jsp" %>
        <!-- end banner -->
        <div class="back_re">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="title">
                            <h2>Sản phẩm nổi bật</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- our products -->
        <div class="products">
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <div class="titlepage">
                            <h2>Đây là một số loại hoa quả và động vật mà chúng tôi có thể nuôi được..</h2>
                            <!--                     <span>Đây là một số loại hoa quả và động vật mà chúng tôi có thể nuôi được...
                                                 </span>-->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div id="ho_bo" class="our_products">
                            <div class="product">
                                <figure><img src="images/pro1.png" alt="#"/></figure>
                            </div>
                            <h3>Xoài cát Hòa Lộc</h3>
                            <span></span>
                            <p>Xoài cát Hòa Lộc là loại quả đặc sản nổi tiếng của vùng đồng bằng sông Cửu Long. Quả xoài có trọng lượng trung bình từ 350-450 g,
                                hình dạng thuôn dài, khi chín vỏ có màu vàng nhạt, thịt quả màu vàng tươi, cấu trúc thịt chắc, mịn và ít xơ. </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div id="ho_bo" class="our_products">
                            <div class="product">
                                <figure><img src="images/pro3.png" alt="#"/></figure>
                            </div>
                            <h3>Cam Vinh</h3>
                            <span></span>
                            <p>Cam Vinh thường ra hoa và kết quả vào tháng 4 đến tháng 5 Âm lịch và cam chín vào khoảng tháng 9-10 âm lịch, 
                                thời điểm này cam có hương vị và chất lượng tốt nhất, không mắc các loại bệnh ảnh hưởng đến màu sắc và chất lượng của quả Cam. </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div id="ho_bo" class="our_products">
                            <div class="product">
                                <figure><img src="images/pro3.jpg" alt="#"/></figure>
                            </div>
                            <h3>Dê núi</h3>
                            <span></span>
                            <p>Đây là loại dê được nuôi thả một cách tự nhiên trong nông trại,buổi sáng sẽ được đưa lên đồi,
                                buổi tối sẽ được mang về chuồng trại để chăm sóc</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div id="ho_bo" class="our_products">
                            <div class="product">
                                <figure><img src="images/pro4.jpg" alt="#"/></figure>
                            </div>
                            <h3>Gà</h3>
                            <span></span>
                            <p>Những chú gà ở đây chỉ dùng để lấy thịt ,chúng được nuôi theo hình thức chuồng trại 
                                đảm bảo vệ sinh an toàn thực phẩm</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../components/homefooter.jsp" %>
    </body>
</html>