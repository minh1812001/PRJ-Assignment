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
        <title>TM Shop</title>
        <!--         Favicon-->
        <link rel="icon" type="image/x-icon" href="startbootstrap-shop-homepage-gh-pages/assets/favicon.ico" />
        Bootstrap icons
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="startbootstrap-shop-homepage-gh-pages/css/styles.css" rel="stylesheet" />
    </head>

    <body>
        <%@include file="../components/narbarComponents_1.jsp" %>
        <!-- Section-->
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row">
                    <div class="col-md-3 mb-5">
                        <h3>Loại sản phẩm</h3>
                        <ul class="list-group">
                            <c:forEach items="${sessionScope.listCategories}" var="C">
                                <li class="list-group-item"><a href="filter-category?categoryId=${C.id}">${C.name}</a></li>
                                </c:forEach>
                        </ul>
                        <br/>
                        <br/>
                        <br/>
                        <ul>
                            <c:if test="${sessionScope.acc.role_id==2}">
                                <div class="text-center">
                                                <a class="btn btn-outline-dark mt-auto" href="/Assignment_PRJ/productshop"
                                                   >Thêm sản phẩm</a
                                                >
                                            </div>
                            </c:if>
                        </ul>
                    </div>
                    <div class="col-md-9">
                        <h3>Sản phẩm</h3>
                        <c:choose>
                            <c:when test="${listProducts == null || listProducts.size() == 0}">
                                không có sản phẩm nào !!
                            </c:when>
                            <c:otherwise>
                                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="shop?page=${page-1}">Previous</a></li>
                                            <c:forEach begin="1" end="${totalPage}" var="i">
                                            <li class="page-item ${i==page?"active":""}"><a class="page-link" href="shop?page=${i}">${i}</a></li>
                                            </c:forEach>
                                        <li class="page-item"><a class="page-link" href="shop?page=${page+1}">Next</a></li>
                                    </ul>
                                </nav>
                            </c:otherwise>
                        </c:choose>

                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center">
                            <c:forEach items="${listProducts}" var="P">
                                <div class="col mb-5">
                                    <div class="card h-100">

                                        <!-- Product image-->
                                        <a href="detail?productId=${P.id}">
                                            <img class="card-img-top"
                                                 src="images/shop/${P.imageURL}"
                                                 alt="..."
                                                 />
                                        </a>


                                        <!-- Product details-->
                                        <div class="card-body p-4">
                                            <div class="text-center">
                                                <!-- Product name-->
                                                <h5 class="fw-bolder">${P.name}</h5>
                                                <!-- Product reviews-->
                                                <div
                                                    class="d-flex justify-content-center small text-warning mb-2"
                                                    >
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                    <div class="bi-star-fill"></div>
                                                </div>
                                                <!-- Product price-->
                                                <c:if test="${P.category_id==1}">${P.price} VND /1 kg</c:if>
                                                <c:if test="${P.category_id==2}">${P.price} VND /1 kg</c:if>
                                                <c:if test="${P.category_id==3}">
                                                    <c:choose>
                                                        <c:when test="${P.id==6}">${P.price} VND / 1 lit</c:when>
                                                        <c:otherwise>${P.price} VND / 1 ngay</c:otherwise>
                                                    </c:choose>>
                                                </c:if>


                                            </div>
                                        </div>
                                        <!-- Product actions-->
                                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                            <div class="text-center">
                                                <a class="btn btn-outline-dark mt-auto" href="add-to-cart?productId=${P.id}"
                                                   >Thêm vào giỏ hàng</a
                                                >
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="shop?page=${page-1}">Previous</a></li>
                                    <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="page-item ${i==page?"active":""}"><a class="page-link" href="shop?page=${i}">${i}</a></li>
                                    </c:forEach>
                                <li class="page-item"><a class="page-link" href="shop?page=${page+1}">Next</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="../components/homefooter.jsp" %>
    </body>

</html>
