<%-- 
    Document   : shop
    Created on : Feb 22, 2022, 9:47:59 PM
    Author     : Minh-PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

head>
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
            <div class="container" style="min-height: 500px">
                <c:choose>
                    <c:when test="${sessionScope.carts.size()==0 || sessionScope.carts.size()==null}">
                        <h1>Danh sách sản phẩm trống</h1>
                    </c:when>
                    <c:otherwise>
                        <h3>Danh sách sản phẩm</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Hình ảnh</th>
                                    <th scope="col">Tên</th>
                                    <th scope="col">Giá</th>
                                    <th scope="col">Số lượng</th>
                                    <th scope="col">Tổng</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="c">
                                <form action="update-quantity">
                                    <tr>
                                    <input type="hidden" name="productId" value="${c.value.product.id}"/>
                                    <th scope="row">${c.value.product.id}</th>
                                    <td><img src="images/shop/${c.value.product.imageURL}" width="50"/></td>
                                    <td>${c.value.product.name}</td>
                                    <td>${c.value.product.price}</td>
                                    <td><input onchange="this.form.submit()" type="number" name="quantity" value="${c.value.quantity}"/></td>
                                    <td>${c.value.quantity*c.value.product.price}</td>
                                    <td><a href="delete-cart?productId=${c.value.product.id}" class="btn btn-outline-danger"><i class="bi bi-trash"></i>Xóa</a></td>
                                    </tr>
                                </form>

                            </c:forEach>
                            </tbody>
                        </table>
                        <h3>Tổng tiền: ${totalMoney} VND</h3>
                        <a href="checkout" class="btn btn-outline-success w-20">Tiếp tục</a>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>
        <%@include file="../components/homefooter.jsp" %>
</html>
