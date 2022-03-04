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
        <title>Shop Homepage - Start Bootstrap Template</title>
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
            <div class="container" >
                <h3>List Products</h3>
                <table class="table" style="min-height: 1000px">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Image</th>
                            <th scope="col">Name</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">total</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${carts}" var="c">
                            <tr>
                                <th scope="row">${c.value.product.id}</th>
                                <td><img src="${c.value.product.imageURL}" width="50"/></td>
                                <td>${c.value.product.name}</td>
                                <td>${c.value.product.price}</td>
                                <td>${c.value.product.quantity}</td>
                                <td>${c.value.product.quantity*c.value.product.price}</td>
                                <td>Delete</td>

                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
            </div>
        </section>

        <%@include file="../components/footerCompomemts.jsp" %>
</html>
