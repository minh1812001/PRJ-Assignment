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
        <meta name='viewport' content='width=device-width, initial-scale=1'>
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
        <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' rel='stylesheet'>
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <style>
            body {
                background: #BA68C8
            }

            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: #BA68C8;
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }
        </style>
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
        </header>
        <div class="container rounded bg-white mt-5">
            <form action="productshop" method="POST">
                <div class="row">
                    <div class="col-md-8">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h6 class="text-right">Thêm sản phẩm</h6>
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-6">Product Name: <input type="text" class="form-control" name="name" value="${requestScope.insertProduct.name}"
                                                                     placeholder="Name" ></div>
                                
                                <div class="col-md-6">Số lượng: <input type="text" class="form-control" name="quantity" value="${requestScope.insertProduct.quantity}"  placeholder="Quantity"  ></div>
                                <div class="col-md-6">Giá: <input type="text" class="form-control" name="price" value="${requestScope.insertProduct.price}"  placeholder="price"  ></div>
                                <div class="col-md-6">Mô tả : <input type="text" class="form-control" name="description" value="${requestScope.insertProduct.description}"  placeholder="description"  ></div>
                                <div class="col-md-6">Hình ảnh : <input type="text" class="form-control" name="imageURL" value="${requestScope.insertProduct.imageURL}"  placeholder="image"  ></div>
                               
                            </div>
                           
                            <div class="row mt-3">
                                 <div class="col-md-6">Loại hàng:<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="category_id">

                                        <option value="1">Hoa qua</option>
                                        <option value="2">Dong vat</option>
                                        <option value="3">Khac</option>
                                    </select></div>
                               
                            </div>
                            <div class="mt-5 text-right"><button class="btn btn-primary profile-button" type="submit" value="save product">Thêm</button></div>

                        </div>
                    </div>
                </div>
            </form>

        </div>
        <script type='text/javascript'
        src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript' src=''></script>
        <script type='text/javascript' src=''></script>
        <script type='text/Javascript'></script>

        <%@include file="../components/homefooter.jsp" %>
    </body>
</html>