<%-- 
    Document   : home
    Created on : Feb 20, 2022, 10:13:21 AM
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
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#"/></div>
      </div>
      <header class="full_bg">
      <!-- end loader -->
      <%@include file="../components/homeheader.jsp" %>
         <!-- banner -->
         <section class="banner_main">
            <div class="container">
               <div class="banner_po">
                  <div class="row">
                     <div class="col-md-7">
                        <div class="text_box">
                           <span>TM Farm</span>
                           <h1> <strong>Th???c ph???m s???ch  </strong> <br> V?? nh???ng tr???i nghi???m vui v??? </h1>
<!--                           <a class="read_more" href="#about" role="button">About us</a>-->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </header>

      <!-- our products -->
      <div class="products">
         <div class="container">
            <div class="row">
               <div class="col-md-7">
                  <div class="titlepage">
                     <h2>????y l?? m???t s??? lo???i hoa qu??? v?? ?????ng v???t m?? ch??ng t??i c?? th??? nu??i ???????c..</h2>
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
                     <h3>Xo??i c??t H??a L???c</h3>
                     <span></span>
                     <p>Xo??i c??t H??a L???c l?? lo???i qu??? ?????c s???n n???i ti???ng c???a v??ng ?????ng b???ng s??ng C???u Long. Qu??? xo??i c?? tr???ng l?????ng trung b??nh t??? 350-450 g,
                         h??nh d???ng thu??n d??i, khi ch??n v??? c?? m??u v??ng nh???t, th???t qu??? m??u v??ng t????i, c???u tr??c th???t ch???c, m???n v?? ??t x??. </p>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6">
                  <div id="ho_bo" class="our_products">
                     <div class="product">
                         <figure><img src="images/pro3.png" alt="#"/></figure>
                     </div>
                     <h3>Cam Vinh</h3>
                     <span></span>
                     <p>Cam Vinh th?????ng ra hoa v?? k???t qu??? v??o th??ng 4 ?????n th??ng 5 ??m l???ch v?? cam ch??n v??o kho???ng th??ng 9-10 ??m l???ch, 
                         th???i ??i???m n??y cam c?? h????ng v??? v?? ch???t l?????ng t???t nh???t, kh??ng m???c c??c lo???i b???nh ???nh h?????ng ?????n m??u s???c v?? ch???t l?????ng c???a qu??? Cam. </p>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6">
                  <div id="ho_bo" class="our_products">
                     <div class="product">
                         <figure><img src="images/pro3.jpg" alt="#"/></figure>
                     </div>
                     <h3>D?? n??i</h3>
                     <span></span>
                     <p>????y l?? lo???i d?? ???????c nu??i th??? m???t c??ch t??? nhi??n trong n??ng tr???i,bu???i s??ng s??? ???????c ????a l??n ?????i,
                     bu???i t???i s??? ???????c mang v??? chu???ng tr???i ????? ch??m s??c</p>
                  </div>
               </div>
               <div class="col-lg-3 col-md-6 col-sm-6">
                  <div id="ho_bo" class="our_products">
                     <div class="product">
                         <figure><img src="images/pro4.jpg" alt="#"/></figure>
                     </div>
                     <h3>G??</h3>
                     <span></span>
                     <p>Nh???ng ch?? g?? ??? ????y ch??? d??ng ????? l???y th???t ,ch??ng ???????c nu??i theo h??nh th???c chu???ng tr???i 
                     ?????m b???o v??? sinh an to??n th???c ph???m</p>
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
                     <h2>B??? s??u t???p</h2>
                     <span>M???t s??? h??nh ???nh b??n trong n??ng tr???i </span>
                  </div>
               </div>
            </div>
             <div class="row">
                 <div class="col-md-4 col-sm-6">
                     <div class="gallery_img">
                         <figure><img src="images/gallery1.jpg" alt="#"/></figure>
                     </div>
                 </div>
                 <div class="col-md-4 col-sm-6">
                     <div class="gallery_img">
                         <figure><img src="images/gallery2 (1).jpg" alt="#"/></figure>
                     </div>
                 </div>
                 <div class="col-md-4 col-sm-6">
                     <div class="gallery_img">
                         <figure><img src="images/gallery3.png" alt="#"/></figure>
                     </div>
                 </div>
                 <div class="col-md-4 col-sm-6">
                     <div class="gallery_img">
                         <figure><img src="images/gallery4.jpg" alt="#"/></figure>
                     </div>
                 </div>
                 <div class="col-md-4 col-sm-6">
                     <div class="gallery_img">
                         <figure><img src="images/gallery5.jpg" alt="#"/></figure>
                     </div>
                 </div>
                 <div class="col-md-4 col-sm-6">
                     <div class="gallery_img">
                         <figure><img src="images/gallery6.jpeg" alt="#"/></figure>
                     </div>
                 </div>
             </div>
         </div>
      </div>
      <%@include file="../components/homefooter.jsp" %>
   </body>
</html>