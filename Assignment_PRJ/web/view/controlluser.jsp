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

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    </head>
    <body>
        <%@include file="../components/homeheader.jsp" %>
        <!-- Product section-->
        <section class="py-5">
            <div class="container" style="min-height: 500px">
                <c:choose>
                    <c:when test="${sessionScope.listUsers.size()==0}">
                        Not Found
                    </c:when>
                    <c:otherwise>
                        <div class="row">
                            <div class="col-md-6"> <h3>Danh sách người dùng</h3></div>
                            <div class="col-md-6">
                                <form action="search-user" class="d-flex mx-auto">
                                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="keyword">
                                    <button class="btn btn-outline-success" type="submit">Search</button>
                                </form>
                            </div>
                        </div>
                        <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                            <ul class="pagination">                  
                                    <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="page-item ${i==page?"active":""}"><a class="page-link" href="controlluser?page=${i}">${i}</a></li>
                                    </c:forEach>                               
                            </ul>
                        </nav>
                    </c:otherwise>
                </c:choose>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Ảnh đại diện</th>
                            <th scope="col">Tên người dùng</th>
                            <th scope="col">Số điện thoại </th>
                            <th scope="col">Email</th>
                            <th scope="col">vai trò</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${sessionScope.listUsers}" var="au">
                        <form action="controlluser">
                            <tr>
                            <input type="hidden" name="userId" value="${au.id}"/>
                            <th scope="row">${au.id}</th>
                            <td><img src="${au.avatar}" width="50"/></td>
                            <td>${au.full_name}</td>
                            <td>${au.phone}</td>
                            <td>${au.email}</td>
                            <td>${au.role_id}</td>      

                            <c:if test="${au.role_id==1}">
                                <td><a href="update-user?userId=${au.id}" class="btn btn-outline-danger"><i class="bi bi-trash"></i>Cập nhật</a>
                                </c:if>
                               
                                </tr>
                        </form>

                    </c:forEach>
                    </tbody>
                </table>
                        <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                            <ul class="pagination">                  
                                    <c:forEach begin="1" end="${totalPage}" var="i">
                                    <li class="page-item ${i==page?"active":""}"><a class="page-link" href="controlluser?page=${i}">${i}</a></li>
                                    </c:forEach>                               
                            </ul>
                        </nav>
            </div>
        </section>

        <%@include file="../components/homefooter.jsp" %>
    </body>
</html>