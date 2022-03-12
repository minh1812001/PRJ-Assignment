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
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>

    <body>
        <%@include file="../components/narbarComponents_1.jsp" %>
        <!-- Product section-->
        <section class="py-5">

            <div class="container" style="min-height: 500px" >
                <h2>Thanh toán</h2>
                <div    class="row">

                    <div class="col-md-8" style="border: 1px solid #ccc; border-radius: 5px;padding: 1rem"> <h3>List Products</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Hình ảnh</th>
                                    <th scope="col">Tên</th>
                                    <th scope="col">Giá</th>
                                    <th scope="col">Số lượng</th>
                                    <th scope="col">Tổng</th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${carts}" var="c">
                                    <tr>
                                <input type="hidden" name="productId" value="${c.value.product.id}"/>
                                <th scope="row">${c.value.product.id}</th>
                                <td><img src="images/shop/${c.value.product.imageURL}" width="50"/></td>
                                <td>${c.value.product.name}</td>
                                <td>${c.value.product.price}</td>
                                <td>${c.value.quantity}</td>
                                <td>${c.value.quantity*c.value.product.price}</td>
                                </tr>
                                </form
                            </c:forEach>
                            </tbody>
                        </table>
                        <h3>Tổng tiền: $${totalMoney}</h3></div>
                    <div class="col-md-4"style="border: 1px solid #ccc; border-radius: 5px; padding: 1rem">
                        <h3>Thông tin người mua</h3>
                        <form action="checkout" method="POST">
                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="text" class="form-control" id="email" name="email" value="${sessionScope.acc.email}"/>
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text"  class="form-control" id="phone" name="phone" value="${sessionScope.acc.phone}"/>
                            </div>
                            <div class="mb-3">
                                <label for="full_name" class="form-label">Người dùng </label>
                                <input type="text" class="form-control" id="full_name" name="full_name" value="${sessionScope.acc.full_name}" />
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp"/>
                            </div>
                            <div class="mb-3">
                                <label for="note" class="form-label">Note</label>
                                <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Submit</button>
                        </form>

                    </div>
                </div>
            </div>
        </section>
        <%@include file="../components/homefooter.jsp" %>
</html>
