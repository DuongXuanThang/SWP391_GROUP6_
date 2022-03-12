<%-- 
    Document   : Header
    Created on : Jan 22, 2022, 11:58:15 PM
    Author     : Duong Xuan Thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Safety Shop</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css2/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css2/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css2/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css2nice-select.css" type="text/css">
        <link rel="stylesheet" href="css2/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css2/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css2/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css2/style.css" type="text/css">
    </head>
    <body>
        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__left">
                                <ul>
                                   <c:if test="${sessionScope.acc != null}">
                                <li><i class="fa fa-envelope"></i>${sessionScope.acc.email}</li>
                               </c:if>

                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__right">
                                <div class="header__top__right__social">
                                   
                                    <c:if test="${sessionScope.acc != null}">
                                    <a href="LoadInforUser?id=${sessionScope.acc.id}"><i class="fa fa-user"></i> ${sessionScope.acc.username} </a>
                                        <a href="Logout"> Đăng xuất</a>
                                    </c:if>
                                        <c:if test="${sessionScope.acc == null}">
                                         <a href="Signup.jsp"><i class="fa fa-user-plus"></i> Đăng kí</a>
                                         </c:if>
                                </div>

                                <div class="header__top__right__auth">
                                    <c:if test="${sessionScope.acc == null}">
                                        <a href="Login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
                                        
                                    </c:if>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="Home"><img src="img/SAFETY SHOP.png" width="120" height="120" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">

                            <ul>
                                <li ><a href="Home">Trang chủ</a></li>
                                <li class="activeStatus"><a href="Shopgrid">Cửa hàng</a></li>
                                <li><a href="#">Trang</a>
                                    <ul class="header__menu__dropdown">

                                        <li><a href="Cart.jsp">Giỏ hàng</a></li>
                                        <li><a href="Checkout.jsp">Thanh toán</a></li>

                                    </ul>
                                </li>

                                <li id="3"><a href="#">Liên hệ</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3">
                        <div class="header__cart">
                            <ul>
                                <c:set var="size" value="${sessionScope.size}" />
                                <li><a href="Cart.jsp"><i class="fa fa-shopping-bag"></i> <span>${size}</span></a></li>
                            </ul>
                             <c:if test="${size != 0}" >
                            <div class="header__cart__price">Tổng tiền: <span><fmt:formatNumber pattern="#,##0.###" value="${sessionScope.totalMoney}"/> VND</span></div>
                             </c:if>
                        </div>
                    </div>
                </div>
                <div class="humberger__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>
        <!-- Header Section End -->
        <section class="hero">
            <div class="container">
                <div class="row">

                    <div class="col-lg-9">
                        <div class="hero__search">
                            <div class="hero__search__form">
                                <form action="search">
                                    <div class="hero__search__categories">
                                        Tất cả sản phẩm
                                        <span class="arrow_carrot-down"></span>
                                    </div>
                                    <input name="txt" value="${txtS}" type="text" placeholder="Tìm kiếm sản phẩm">
                                    <button type="submit" class="site-btn">Tìm kiếm</button>
                                </form>
                            </div>
                            <div class="hero__search__phone">
                                <div class="hero__search__phone__icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="hero__search__phone__text">
                                    <h5>0362306429</h5>
                                    <span>Hỗ trợ 24/7</span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>

    </body>

</html>
