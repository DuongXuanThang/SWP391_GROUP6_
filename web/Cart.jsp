<%-- 
    Document   : Cart
    Created on : Jan 16, 2022, 8:38:58 AM
    Author     : Duong Xuan Thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

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
    <link rel="stylesheet" href="css2/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css2/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css2/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css2/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css2/style.css" type="text/css">
</head>

<body>
   

     <jsp:include page="Header.jsp"></jsp:include>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Giỏ hàng</h2>
                        <div class="breadcrumb__option">
                            <a href="Home">Trang chủ</a>
                            <span>Giỏ hàng</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th class="shoping__product">Sản phẩm</th>
                                    <th>Giá</th>
                                    <th>Số lượng</th>
                                    <th>Thành tiền</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:set var="o" value="${sessionScope.cart}" />
                            <c:set var="t" value="0" />
                            <c:forEach items="${o.items}" var="i">
                              <c:set var="t" value="${t+1}" />
                            
                                <tr>
                                    <td>${t}</td>
                                    <td class="shoping__cart__item">
                                        <img src="${i.product.image}" alt="">
                                        <h5>${i.product.name}</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                       ${i.product.price}
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" readonly value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        $110.00
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                                </c:forEach>
                               
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="Shopgrid" class="primary-btn cart-btn">Tiếp tục mua </a>
                        
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                      
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Tổng giỏ hàng</h5>
                        <ul>
                            <li>Subtotal <span>$454.98</span></li>
                            <li>Total <span>$454.98</span></li>
                        </ul>
                        <a href="Checkout.jsp" class="primary-btn">Tiếp tục thanh toán</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->

    <!-- Footer Section Begin -->
  <jsp:include page="Footer.jsp"></jsp:include>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js2/jquery-3.3.1.min.js"></script>
    <script src="js2/bootstrap.min.js"></script>
    <script src="js2/jquery.nice-select.min.js"></script>
    <script src="js2/jquery-ui.min.js"></script>
    <script src="js2/jquery.slicknav.js"></script>
    <script src="js2/mixitup.min.js"></script>
    <script src="js2/owl.carousel.min.js"></script>
    <script src="js2/main.js"></script>


</body>

</html>