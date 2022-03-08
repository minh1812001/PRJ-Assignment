<%-- 
    Document   : narbarComponents
    Created on : Mar 3, 2022, 11:49:37 PM
    Author     : Minh-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Navigation-->
<div class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                <div class="full">
                    <div class="center-desk">
                        <div class="logo">
                            <a href="/Assignment_PRJ/home"><img src="images/logo.png" alt="#" /></a>
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
                                <a class="nav-link" href="/Assignment_PRJ/home">Trang chủ</a>
                            </li>

                            <c:if test="${sessionScope.acc !=null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="/Assignment_PRJ/shop">Cửa hàng</a>
                                </li>
                                <form action="search" class="d-flex mx-auto">
                                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="keyword">
                                    <button class="btn btn-outline-success" type="submit">Search</button>
                                </form>
                                <form class="d-flex my-2">
                                    <a class="btn btn-outline-dark" href="carts">
                                        <i class="bi-cart-fill me-1"></i>
                                        Cart
                                        <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.carts.size()}</span>
                                    </a>
                                </form>
                                <li class="nav-item">
                                    <a class="nav-link" href="/Assignment_PRJ/profile">Xin chào ${sessionScope.acc.full_name}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/Assignment_PRJ/logout">Đăng xuất</a>
                                </li>

                            </c:if>
                            <c:if test="${sessionScope.acc ==null}">
                                <li class="nav-item">
                                    <a class="nav-link" href="/Assignment_PRJ/login">Đăng nhập</a>
                                </li>
                            </c:if>



                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>