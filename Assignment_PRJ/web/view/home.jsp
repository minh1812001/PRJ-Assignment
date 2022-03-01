<%-- 
    Document   : home
    Created on : Feb 20, 2022, 10:13:21 AM
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
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#"/></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header class="full_bg">
         <!-- header inner -->
         <div class="header">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                           <div class="logo">
                               <a href="view/home.jsp"><img src="images/logo.png" alt="#" /></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                  <a class="nav-link" href="#">Trang chủ</a>
                              </li>
<!--                              <li class="nav-item">
                                 <a class="nav-link" href="about.html">About</a>
                              </li>-->
                              <li class="nav-item">
                                  <a class="nav-link" href="product.jsp">Một số sản phẩm</a>
                              </li>
                              <li class="nav-item">
                                  <a class="nav-link" href="gallery.jsp">Bộ sưu tập</a>
                              </li>
<!--                              <li class="nav-item">
                                 <a class="nav-link" href="contact.html">Contact Us</a>
                              </li>-->
                              <li class="nav-item">
                                  <a class="nav-link" href="view/login.jsp">Sign In/Sign Up</a>
                              </li>
                           </ul>
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
         <!-- end header inner -->
         <!-- end header -->
         <!-- banner -->
         <section class="banner_main">
            <div class="container">
               <div class="banner_po">
                  <div class="row">
                     <div class="col-md-7">
                        <div class="text_box">
                           <span>TM Farm</span>
                           <h1> <strong>Thực phẩm sạch  </strong> <br> Và những trải nghiệm vui vẻ </h1>
<!--                           <a class="read_more" href="#about" role="button">About us</a>-->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </header>
      <!-- end banner -->
      <!-- about -->
<!--      <div id="about" class="about">
         <div class="container">
            <div class="row">
               <div class="col-md-6 offset-md-3">
                  <div class="titlepage">
                     <h2>About Us</h2>
                     <span>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptu </span>
                  </div>
               </div>
               <div class="col-md-12">
                  <div class="about_img">
                     <figure><img src="images/about.png" alt="#"/></figure>
                     <a class="read_more" href="Javascript:void(0)"> Read More</a>
                  </div>
               </div>
            </div>
         </div>
      </div>-->
      <!-- end about -->
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
      <!-- end our products -->
      <!-- using -->
<!--      <div class="using">
         <div class="container-fluid">
            <div class="row d_flex">
               <div class="col-md-6">
                  <div class="titlepage">
                     <h2 >Lorem Ipsum using</h2>
                     <p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise</p>
                     <a class="read_more white_bg" href="Javascript:void(0)"> Read More</a>
                  </div>
               </div>
               <div class="col-md-5 offset-md-1 padding_right0">
                  <div class="frout_img">
                     <figure><img src="images/frout.png" alt="#"/></figure>
                  </div>
               </div>
            </div>
         </div>
      </div>-->
      <!-- end using -->
      <!-- gallery -->
      <div  class="gallery">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Bộ sưu tập</h2>
                     <span>Một số hình ảnh bên trong nông trại </span>
                  </div>
               </div>
            </div>
             <div class="row">
                 <div class="col-md-4 col-sm-6">
                     <div class="gallery_img">
                         <figure><img src="/images/gallery1.jpg" alt="#"/></figure>
                     </div>
                 </div>
                 <div class="col-md-4 col-sm-6">
                     <div class="gallery_img">
                         <figure><img src="images/gallery2.jpg" alt="#"/></figure>
                     </div>
                 </div>
                 <div class="col-md-4 col-sm-6">
                     <div class="gallery_img">
                         <figure><img src="images/gallery31.png" alt="#"/></figure>
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
      <!-- end gallery -->
      <!--  contact -->
<!--      <div class="contact">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Contact Us</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-6  padding_right0">
                  <div class="map_main">
                     <div class="map-responsive">
                        <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&amp;q=Eiffel+Tower+Paris+France" width="600" height="453" frameborder="0" style="border:0; width: 100%;" allowfullscreen=""></iframe>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 padding_left0">
                  <form id="request" class="main_form">
                     <div class="row">
                        <div class="col-md-12 ">
                           <input class="contactus" placeholder="Name" type="type" name="Name"> 
                        </div>
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Phone" type="type" name="Phone"> 
                        </div>
                        <div class="col-md-12">
                           <input class="contactus" placeholder="Email" type="type" name="Email">                          
                        </div>
                        <div class="col-md-12">
                           <textarea class="textarea" placeholder="Message" type="type" Message="Message">Message</textarea>
                        </div>
                        <div class="col-md-12">
                           <button class="send_btn">Send</button>
                        </div>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>-->
      <!-- end contact -->
      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="container">
<!--               <div class="row">
                  <div class="col-md-8 offset-md-2">
                     <div class="newslatter">
                        <h4>Subscribe Our Newsletter</h4>
                        <form class="bottom_form">
                           <input class="enter" placeholder="Enter your email" type="text" name="Enter your email">
                           <button class="sub_btn">subscribe</button>
                        </form>
                     </div>
                  </div>
                  <div class="col-sm-12">
                     <div class=" border_top1"></div>
                  </div>
               </div>-->
               <div class="row">
                  <div class="col-md-4">
                     <h3>menu LINKS</h3>
                     <ul class="link_menu">
                        <li><a href="#">Trang chủ</a></li>
                        <li><a href="product.jsp">Sản phẩm nổi bật</a></li>
                        <li><a href="gallery.jsp">Bộ sưu tập</a></li>

                     </ul>
                  </div>
                  <div class=" col-md-3">
                     <h3>TOP food</h3>
                     <p class="many">
                        There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected
                     </p>
                  </div>
                  <div class="col-lg-3 offset-mdlg-2     col-md-4 offset-md-1">
                     <h3>Contact </h3>
                     <ul class="conta">
                        <li><i class="fa fa-map-marker" aria-hidden="true"></i> Địa chỉ</li>
                        <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="#"> Email: minh1812001@gmail.com</a></li>
                        <li><i class="fa fa-mobile" aria-hidden="true"></i> Phone : +84 43383101</li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-10 offset-md-1">
                        <p>© 2019 All Rights Reserved. Design by <a href="https://html.design/"> Free Html Templates</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
   </body>
</html>