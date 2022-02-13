<%-- 
    Document   : Home
    Created on : Jan 14, 2022, 7:16:23 PM
    Author     : Duong Xuan Thang
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <ul> <c:if test="${sessionScope.acc != null}">
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
                            <li class="active"><a href="Home">Trang chủ</a></li>
                            <li><a href="Shopgrid">Cửa hàng</a></li>
                            <li><a href="#">Trang</a>
                                <ul class="header__menu__dropdown">
                                    
                                    <li><a href="Cart.jsp">Giỏ hàng</a></li>
                                    <li><a href="Checkout.jsp">Thanh toán</a></li>
                                   
                                </ul>
                            </li>
                            
                            <li><a href="#">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="Cart"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>$150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Loại sản phẩm</span>
                        </div>
                        <ul>
                            <c:forEach items="${listCate}" var="o">
                                <li class="list-group-item text-white"><a href="Category?cid=${o.cid}">${o.cname}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="search">
                                <div class="hero__search__categories">
                                    Tất cả sản phẩm
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input name="txt"  type="text" placeholder="Tìm kiếm sản phẩm">
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
                    <div class="hero__item set-bg" data-setbg="img/hero/thuoc1.png">
                        <div class="hero__text">
                            <span><h2>Glumet</h2></span>
                            <h2>Feel better<br />Live longer</h2>
                            <p>Chăm sóc sức khỏe – chia sẻ niềm vui</p>
                            <a href="Shopgrid" class="primary-btn">Mua ngay!</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat_thuoc1.jpg">
                            <h5><a href="Detail.jsp">Trunature</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat_thuoc2.jpg">
                            <h5><a href="Detail.jsp">Glumet</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat_thuoc3.jpg">
                            <h5><a href="Detail.jsp">Orihio</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat_thuoc4.png">
                            <h5><a href="Detail.jsp">Alpha brenNL</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat_thuoc5.jpg">
                            <h5><a href="Detail.jsp">Bvinko</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Loại sản phẩm</h2>
                    </div>
                    <div class="featured__controls">
                        
                        <ul>
                            
                             <c:forEach items="${listCate}" var="o">
                                <li class="${tag == o.cid ? "actived" : "" }"><a href="Category?cid=${o.cid}">${o.cname}</a></li>
                            </c:forEach> 
                              
                        </ul>
                    </div>
                </div>
            </div>
                               
            <div class="row featured__filter">
                <c:forEach items="${listP}" var ="o">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                   
                        <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="${o.image}">
                            <ul class="featured__item__pic__hover">
                               
                                <li><a href="detail?pid=${o.id}"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            
                            <h6><a href="detail?pid=${o.id}">${o.name}</a></h6>
                             
                           <fmt:parseNumber var = "i" integerOnly = "true" 
         type = "number" value = "${o.price}" />
                            <h5><c:out value = "${i}"/> vnd</h5>
                             
                        </div>
                    </div>
                   
                    
                </div> 
                </c:forEach>
               
            </div>
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <a href="Shopgrid"> <img href="Shopgrid.jsp" src="img/banner/1.png" width="500px" height="150px"  alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <a href="Shopgrid"><img  src="img/banner/2.png" width="500px" height="150px" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                     <div class="latest-product__text">
                                <h4>Sản phẩm mới</h4>
                                <div class="latest-product__slider owl-carousel">
                                    <div class="latest-prdouct__slider__item">
                                        
                                        <c:forEach items="${listLast}" var="o">
                                            <a href="detail?pid=${o.id}" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="${o.image}" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>${o.name}</h6>
                                                <fmt:parseNumber var = "i" integerOnly = "true" 
         type = "number" value = "${o.price}" />
                            <span><c:out value = "${i}"/> vnd</span>
                                            </div>
                                        </a>
                                        </c:forEach>
                                       
                                       
                                    </div>
                                    <div class="latest-prdouct__slider__item">
                                         <c:forEach items="${listLast}" var="o">
                                             <a href="detail?pid=${o.id}" class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="${o.image}" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <h6>${o.name}</h6>
                                                 <fmt:parseNumber var = "i" integerOnly = "true" 
         type = "number" value = "${o.price}" />
                            <span><c:out value = "${i}"/> vnd</span>
                                                
                                            </div>
                                        </a>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Top đánh giá</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Top phản hồi</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Featured Product</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->


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
