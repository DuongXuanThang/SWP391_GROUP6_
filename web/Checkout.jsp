<%-- 
    Document   : checkout
    Created on : Jan 16, 2022, 8:41:44 AM
    Author     : Duong Xuan Thang
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
   

    <!-- Header Section Begin -->
    <jsp:include page="Header.jsp"></jsp:include>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Đặt Hàng</h2>
                        <div class="breadcrumb__option">
                            <a href="Home">Trang chủ</a>
                            <span>Đặt Hàng</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    <c:if test="${sessionScope.size == null || sessionScope.size == 0}" >
        <div id="success" style="text-align: center" class="alert alert-danger ">
           
            <strong><i  aria-hidden="true"></i>  Giỏ hàng chưa có sản phẩm </strong> </div>
                </c:if>
    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
               
            </div>
            <div class="checkout__form">
                <h4>Chi tiết hóa đơn</h4>
                <form action="Checkout" method="post">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Họ và tên<span>*</span></p>
                                        <input value="${sessionScope.acc.name}" type="text">
                                    </div>
                                </div>
                                
                            </div>
                          
                            <div class="checkout__input">
                                        <p>Số điện thoại<span>*</span></p>
                                        <input value="${sessionScope.acc.phone}" type="text">
                                    </div>
                           <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input value="${sessionScope.acc.email}" type="text">
                                    </div>
                            
                            
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Số điện thoại<span>*</span></p>
                                        <input value="${sessionScope.acc.phone}" type="text">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email<span>*</span></p>
                                        <input value="${sessionScope.acc.email}" type="text">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="checkout__input__checkbox">
                                <label for="diff-acc">
                                    Ship đến địa điểm khác?
                                    <input type="checkbox" id="diff-acc">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="checkout__input">
                                <p>Ghi chú đơn hàng<span>*</span></p>
                                <input type="text"
                                    placeholder="Notes about your order, e.g. special notes for delivery.">
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h4>Đơn hàng của bạn</h4>
                                
                                <div class="checkout__order__products">Sản phẩm <span>Giá</span></div>
                                <c:set var="o" value="${sessionScope.cart}" />
                                <ul>
                                    <c:forEach items="${o.items}" var="i">
                                    <li>${i.product.name}<span><fmt:formatNumber pattern="#,##0.###" value="${i.product.price}"/> VND</span></li>
                                    </c:forEach>
                                </ul>
                                <div class="checkout__order__subtotal">Phụ phí <span><fmt:formatNumber pattern="#,##0.###" value="${totalMoney}"/> VND</span></div>
                                <div class="checkout__order__total">Tổng tiền <span><fmt:formatNumber pattern="#,##0.###" value="${totalMoney}"/> VND</span></div>
                                
                                <button onclick="CheckOut" type="submit" class="site-btn" >Đặt Hàng</button>
                                
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->

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

 <script type="text/javascript">

         function CheckOut()  {

              var result = confirm("Do you want to continue?");

              if(result)  {
                  alert("OK Next lesson!");
              } else {
                  alert("Bye!");
              }
         }


</body>

</html>
