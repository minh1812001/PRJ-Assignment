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
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <!--         Favicon-->
        <link rel="icon" type="image/x-icon" href="startbootstrap-shop-homepage-gh-pages/assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="startbootstrap-shop-homepage-gh-pages/css/styles.css" rel="stylesheet" />
    </head>

    <body>
        <%@include file="../components/narbarComponents_1.jsp" %>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="images/shop/${product.imageURL}" alt="..." /></div>
                    <div class="col-md-6">

                        <h1 class="display-5 fw-bolder">${product.name}</h1>
                        <div class="fs-5 mb-5">
                            <c:if test="${product.category_id==1}">${product.price} VND /1 kg</c:if>
                            <c:if test="${product.category_id==2}">${product.price} VND /1 kg</c:if>
                            <c:if test="${product.category_id==3}">
                                <c:choose>
                                    <c:when test="${product.id==6}">${product.price} VND / 1 lit</c:when>
                                    <c:otherwise>${product.price} VND / 1 ngay</c:otherwise>
                                </c:choose>>
                            </c:if>
                        </div>
                        <p>M?? t??? :</p>
                        <p class="lead">${product.description}</p>
                        </br>
                        <div class="d-flex">
                            <a href="add-to-cart?productId=${product.id}" class="btn btn-outline-success flex-shrink-0" type="button">
                                <i class="bi-cart-fill me-1"></i>
                               Th??m v??o gi??? h??ng
                            </a>
                            <a href="buynow?productId=${product.id}" class="btn btn-outline-success flex-shrink-0 ms-5" type="button">
                                <i class="bi-cart-fill me-1"></i>
                                Mua ngay
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="../components/homefooter.jsp" %>
</html>
