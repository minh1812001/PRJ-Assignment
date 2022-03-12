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
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sunshine-Farm</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="startbootstrap-shop-homepage-gh-pages/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="startbootstrap-shop-homepage-gh-pages/css/styles.css" rel="stylesheet" />
    </head>

    <body>
        <%@include file="../components/narbarComponents.jsp" %>
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
                                <td><img src="${c.value.product.imageURL}" width="50"/></td>
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
                                <label for="name" class="form-label">Email address</label>
                                <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone" aria-describedby="emailHelp">
                            </div> <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">
                                <div class="mb-3">
                                    <label for="note" class="form-label">Note</label>
                                    <textarea class="form-control" id="note" name="note" rows="3"></textarea>
                                </div>

                                <button type="submit" class="btn btn-primary">Send</button>
                        </form>
                    </div>
                </div>

            </div>
        </section>
         <%@include file="../components/homefooter.jsp" %>
</html>
