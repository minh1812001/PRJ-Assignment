<%-- 
    Document   : gallery
    Created on : Feb 23, 2022, 2:16:20 PM
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
        <title>sunshine</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" href="../css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="../css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="../images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="../css/jquery.mCustomScrollbar.min.css">
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
            <div class="loader"><img src="../images/loading.gif" alt="#"/></div>
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
                                        <a href="home.jsp"><img src="../images/logo.png" alt="#" /></a>
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
                                        <li class="nav-item ">
                                            <a class="nav-link" href="home.jsp">Trang chủ</a>
                                        </li>
                                        <!--                                        <li class="nav-item">
                                                                                    <a class="nav-link" href="about.html">About</a>
                                                                                </li>-->
                                        <li class="nav-item">
                                            <a class="nav-link" href="product.html">Một số sản phẩm</a>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link" href="#">Bộ sưu tập</a>
                                        </li>
                                        <!--                                        <li class="nav-item">
                                                                                    <a class="nav-link" href="contact.html">Contact Us</a>
                                                                                </li>-->
                                        <li class="nav-item">
                                            <a class="nav-link" href="login.jsp">Sign In/Sign Up</a>
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
                            <figure><img src="../images/gallery1.jpg" alt="#"/></figure>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="../images/gallery2.jpg" alt="#"/></figure>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="../images/gallery31.png" alt="#"/></figure>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="../images/gallery4.jpg" alt="#"/></figure>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="../images/gallery5.jpg" alt="#"/></figure>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="gallery_img">
                            <figure><img src="../images/gallery6.jpeg" alt="#"/></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end gallery -->
        <
        <!--  footer -->
        <footer>
            <div class="footer">
                <div class="container">
                    <!--                    <div class="row">
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
                                <li><a href="home.jsp">Trang chủ</a></li>
                                <li><a href="product.jsp">Sản phẩm nổi bật</a></li>
                                <li><a href="#">Bộ sưu tập</a></li>
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
                                <li><i class="fa fa-map-marker" aria-hidden="true"></i> Location</li>
                                <li> <i class="fa fa-envelope" aria-hidden="true"></i><a href="#"> minh1812001@gmail.com</a></li>
                                <li><i class="fa fa-mobile" aria-hidden="true"></i> Call : +84 343383101</li>
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
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.bundle.min.js"></script>
        <script src="../js/jquery-3.0.0.min.js"></script>
        <!-- sidebar -->
        <script src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="../js/custom.js"></script>
    </body>
</html>