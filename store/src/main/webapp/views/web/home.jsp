<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicons -->
    <link rel="shortcut icon" href="<c:url value="/template/web/images/favicon.ico"/>"/>
    <link rel="apple-touch-icon" href="images/icon.png">

    <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="<c:url value="/template/web/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/template/web/css/plugins.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/template/web/style.css"/>"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
    <link rel="stylesheet" href="<c:url value="/template/web/css/create-account.css"/>"/>
    <!-- Cusom css -->
    <link rel="stylesheet" href="<c:url value="/template/web/css/custom.css"/>"/>

    <!-- Modernizer js -->
    <script src="<c:url value="/template/web/js/vendor/modernizr-3.5.0.min.js"/>"></script>
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">
    <!-- Header -->
    <%@include file="/library/web/header.jsp"%>
    <!-- //Header -->
    <!-- Start Search Popup -->
    <div class="brown--color box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="search" method="get">
            <div class="field__search">
                <input type="text" placeholder="Nhập sản phẩm muốn tìm kiếm" name="search">
                <div class="action">
                    <button type="submit"><i class="fas fa-search"></i></button>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>Đóng</span>
        </div>
    </div>
    <!-- End Search Popup -->
    <!-- Start Slider area -->

    <div class="slider-area brown__nav slider--15 slide__activation slide__arrow01 owl-carousel owl-theme">
        <!-- Start Single Slide -->
        <div class="slide animation__style10 bg-image--1 fullscreen align__center--left">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="slider__content">
                            <div class="contentbox">
                                <h2>Buy <span>your </span></h2>
                                <h2>favourite <span>Book </span></h2>
                                <h2>from <span>Here </span></h2>
                                <a class="shopbtn" href="#product">Mua ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Single Slide -->
        <!-- Start Single Slide -->
        <div class="slide animation__style10 bg-image--7 fullscreen align__center--left">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="slider__content">
                            <div class="contentbox">
                                <h2>Buy <span>your </span></h2>
                                <h2>favourite <span>Book </span></h2>
                                <h2>from <span>Here </span></h2>
                                <a class="shopbtn" href="#">Mua ngay</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Single Slide -->
    </div>
    <!-- End Slider area -->
    <!-- Start BEst Seller Area -->
    <section class="wn__product__area brown--color pt--80  pb--30" id="product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">Sản phẩm <span class="color--theme">mới</span></h2>
                        <p>Những sản phẩm mới nhất của shop</p>
                    </div>
                </div>
            </div>
            <!-- Start Single Tab Content -->
            <div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
                <!-- Start Single Product -->
                <c:forEach items="${listByNewest}" var = "p">
                    <div class="product product__style--3">
                        <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                            <div class="product__thumb">
                                <a class="first__img" href="<c:url value = "detail?id=${p.id}"/> "><img src="${p.image1}" alt="product image"></a>
                                <!-- <a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a> -->
                                <div class="hot__box">
                                    <span class="hot-label">NEWEST</span>
                                </div>
                            </div>
                            <div class="product__content content--center">
                                <h4><a href="single-product.html">${p.name}</a></h4>
                                <ul class="prize d-flex">
                                    <li>${p.value}₫</li>
                                    <li class="old_prize">${p.cost - p.value}₫</li>
                                </ul>
                                <div class="action">
                                    <div class="actions_inner">
                                        <ul class="add_to_links">
                                            <li><a class="cart" href="<c:url value = "cart/add?id=${p.id}"/>"><i class="fas fa-shopping-bag"></i></a></li>
<%--                                            <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>--%>
<%--                                            <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>--%>
<%--                                            <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>--%>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product__hover--content">
                                    <ul class="rating d-flex">
                                        <li class="on"><i class="fas fa-star"></i></li>
                                        <li class="on"><i class="fas fa-star"></i></li>
                                        <li class="on"><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <!-- End Single Tab Content -->
        </div>
    </section>
    <!-- Start BEst Seller Area -->
    <!-- Start NEwsletter Area -->
    <section class="wn__newsletter__area bg-image--2">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 offset-lg-5 col-md-12 col-12 ptb--150">
                    <div class="section__title text-center">
                        <h2>Đăng ký</h2>
                    </div>
                    <div class="newsletter__block text-center">
                        <p>Để lại email để nhận thông báo về những bài viết hay của website.</p>
                        <form action="#">
                            <div class="newsletter__box">
                                <input type="email" placeholder="Nhập e-mail">
                                <button>Đăng ký</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End NEwsletter Area -->
    <!-- Start Best Seller Area -->
    <section class="wn__bestseller__area bg--white pt--80  pb--30">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">Tất cả <span class="color--theme">sản phẩm</span></h2>
                        <p>Tất cả sản phẩm của sản phẩm của website</p>
                    </div>
                </div>
            </div>
            <div class="row mt--50">
                <div class="col-md-12 col-lg-12 col-sm-12">
                    <div class="product__nav nav justify-content-center" role="tablist">
                        <a class="nav-item nav-link active" data-toggle="tab" href="#nav-all" role="tab">Tất cả</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-biographic" role="tab">Khoa học</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-adventure" role="tab">Phiêu lưu</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-children" role="tab">Trẻ em</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#nav-cook" role="tab">Nấu ăn</a>
                    </div>
                </div>
            </div>
            <div class="tab__container mt--60">
                <!-- Start Single Tab Content -->
                <div class="row single__tab tab-pane fade show active" id="nav-all" role="tabpanel">

                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${listProduct}" var = "p">
                            <div class="single__product">
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img"
                                               href="<c:url value = "detail?id=${p.id}"/> ">
                                                <img src="${p.image1}" alt="product image"></a>
                                            <!-- <a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a> -->
                                            <div class="hot__box">
                                                <span class="hot-label">BEST SALER</span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="single-product.html">${p.name}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>${p.value}₫</li>
                                                <li class="old_prize">${p.cost - p.value}₫</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li id="${p.id}" class="add_to_cart">
                                                            <a class="cart" href="<c:url value = "cart/add?id=${p.id}"/> ">
                                                                    <%--                                                        <a class="cart">--%>
                                                                <i class="fas fa-shopping-bag"></i>
                                                                    <%--                                                        </a>--%>
                                                            </a>
                                                        </li>
                                                            <%--                                                    <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>--%>
                                                            <%--                                                    <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>--%>
                                                            <%--                                                    <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>--%>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class="row single__tab tab-pane fade" id="nav-biographic" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${listByCategory7}" var = "p">
                            <div class="single__product">
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img"
                                               href="<c:url value = "detail?id=${p.id}"/> ">
                                                <img src="${p.image1}" alt="product image"></a>
                                            <!-- <a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a> -->
                                            <div class="hot__box">
                                                <span class="hot-label">BEST SALER</span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="single-product.html">${p.name}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>${p.value}₫</li>
                                                <li class="old_prize">${p.cost - p.value}₫</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="<c:url value = "cart/add?id=${p.id}"/>"><i class="fas fa-shopping-bag"></i></a></li>
                                                            <%--                                                    <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>--%>
                                                            <%--                                                    <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>--%>
                                                            <%--                                                    <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>--%>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="row single__tab tab-pane fade" id="nav-adventure" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${listByCategory8}" var = "p">
                            <div class="single__product">
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img" href="single-product.html"><img src="${p.image1}" alt="product image"></a>
                                            <!-- <a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a> -->
                                            <div class="hot__box">
                                                <span class="hot-label">BEST SALLER</span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center">
                                            <h4><a href="single-product.html">${p.name}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>${p.value}</li>
                                                <li class="old_prize">${p.cost - p.value}₫</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="<c:url value = "cart/add?id=${p.id}"/>"><i class="fas fa-shopping-bag"></i></a></li>
                                                            <%--                                                    <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>--%>
                                                            <%--                                                    <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>--%>
                                                            <%--                                                    <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>--%>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <div class="row single__tab tab-pane fade" id="nav-children" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${listByCategory9}" var = "p">
                            <div class="single__product">
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img"
                                               href="<c:url value = "detail?id=${p.id}"/> ">
                                                <img src="${p.image1}" alt="product image"></a>
                                            <!-- <a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a> -->
                                            <div class="hot__box">
                                                <span class="hot-label">BEST SALER</span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="single-product.html">${p.name}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>${p.value}₫</li>
                                                <li class="old_prize">${p.cost - p.value}₫</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="<c:url value = "cart/add?id=${p.id}"/>"><i class="fas fa-shopping-bag"></i></a></li>
                                                            <%--                                                    <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>--%>
                                                            <%--                                                    <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>--%>
                                                            <%--                                                    <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>--%>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                        <%--                                                <li class="on"><i class="fas fa-star"></i></li>--%>
                                                        <%--                                                <li><i class="fas fa-star"></i></li>--%>
                                                        <%--                                                <li><i class="fas fa-star"></i></li>--%>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>



                    </div>
                </div>
                <!-- End Single Tab Content -->
                <!-- Start Single Tab Content -->
                <div class="row single__tab tab-pane fade" id="nav-cook" role="tabpanel">
                    <div class="product__indicator--4 arrows_style owl-carousel owl-theme">
                        <c:forEach items="${listByCategory9}" var = "p">
                            <div class="single__product">
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                                    <div class="product product__style--3">
                                        <div class="product__thumb">
                                            <a class="first__img"
                                               href="<c:url value = "detail?id=${p.id}"/> ">
                                                <img src="${p.image1}" alt="product image"></a>
                                            <!-- <a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a> -->
                                            <div class="hot__box">
                                                <span class="hot-label">BEST SALER</span>
                                            </div>
                                        </div>
                                        <div class="product__content content--center content--center">
                                            <h4><a href="single-product.html">${p.name}</a></h4>
                                            <ul class="prize d-flex">
                                                <li>${p.value}₫</li>
                                                <li class="old_prize">${p.cost - p.value}₫</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="<c:url value = "cart/add?id=${p.id}"/>"><i class="fas fa-shopping-bag"></i></a></li>
                                                            <%--                                                    <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>--%>
                                                            <%--                                                    <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>--%>
                                                            <%--                                                    <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>--%>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="product__hover--content">
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li class="on"><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- End Single Tab Content -->
            </div>
        </div>
    </section>
    <!-- Start BEst Seller Area -->
    <!-- Start Recent Post Area -->
    <section class="wn__recent__post bg--gray ptb--80">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">Bài <span class="color--theme">viết</span></h2>
                        <p>Nơi lưu trữ bài viết hay nhất của website</p>
                    </div>
                </div>
            </div>
            <div class="row mt--50">
                <div class="col-md-6 col-lg-4 col-sm-12">
                    <div class="post__itam">
                        <div class="content">
                            <h3><a href="blog-details.html">Top 5 cuốn sách dành cho giao tiếp</a></h3>
                            <p>Nếu bạn muốn trở thành bậc thầy giao tiếp, thuyết phục mọi người thì đây là những cuốn sách bạn có thể tham khảo.</p>
                            <div class="post__time">
                                <span class="day">Dec 06, 18</span>
                                <div class="post-meta">
                                    <ul>
                                        <li><a href="#"><i class="fas fa-heart"></i>72</a></li>
                                        <li><a href="#"><i class="fas fa-comments"></i>27</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-sm-12">
                    <div class="post__itam">
                        <div class="content">
                            <h3><a href="blog-details.html">Tại sao Harry Potter lại trở nên cuốn sách hay nhất</a></h3>
                            <p>Harry Potter là những nhân vật phù thủy nhí học chung trường Howart và cùng phát triển với nhau, trải qua nhiều cuộc phiêu lưu, những tình tiết liên kết với nhau chặt chẽ.</p>
                            <div class="post__time">
                                <span class="day">Mar 08, 18</span>
                                <div class="post-meta">
                                    <ul>
                                        <li><a href="#"><i class="fas fa-heart"></i>72</a></li>
                                        <li><a href="#"><i class="fas fa-comments"></i>27</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 col-sm-12">
                    <div class="post__itam">
                        <div class="content">
                            <h3><a href="blog-details.html">Tình yêu có khó không?</a></h3>
                            <p>Tình yêu đề tài muôn thuở của các nhà văn, nhà thơ tốn bao nhiêu giấy mực. Vậy ta thử tìm hiểu liệu rằng yêu hay tìm kiếm tình yêu thì nó có dễ dàng hay không.</p>
                            <div class="post__time">
                                <span class="day">Nov 11, 18</span>
                                <div class="post-meta">
                                    <ul>
                                        <li><a href="#"><i class="fas fa-heart"></i>72</a></li>
                                        <li><a href="#"><i class="fas fa-comments"></i>27</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Recent Post Area -->
    <!-- Best Sale Area -->
    <section class="best-seel-area pt--80 pb--60">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section__title text-center pb--50">
                        <h2 class="title__be--2">Best <span class="color--theme">Seller </span></h2>
                        <p>Những cuốn sách bạn chạy nhất trong website</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="slider center">
            <!-- Single product start -->
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/best-sell-product/1.jpg" alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="fas fa-shopping-bag"></i></a></li>
                                <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>
                                <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>
                                <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="product__hover--content">
                        <ul class="rating d-flex">
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Single product end -->
            <!-- Single product start -->
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/best-sell-product/2.jpg" alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="fas fa-shopping-bag"></i></a></li>
                                <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>
                                <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>
                                <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="product__hover--content">
                        <ul class="rating d-flex">
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Single product end -->
            <!-- Single product start -->
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/best-sell-product/3.jpg" alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="fas fa-shopping-bag"></i></a></li>
                                <%--                            <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>--%>
                                <%--                            <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>--%>
                                <%--                            <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>--%>
                            </ul>
                        </div>
                    </div>
                    <div class="product__hover--content">
                        <ul class="rating d-flex">
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Single product end -->
            <!-- Single product start -->
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/best-sell-product/4.jpg" alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="fas fa-shopping-bag"></i></a></li>
                                <%--                            <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>--%>
                                <%--                            <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>--%>
                                <%--                            <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>--%>
                            </ul>
                        </div>
                    </div>
                    <div class="product__hover--content">
                        <ul class="rating d-flex">
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Single product end -->
            <!-- Single product start -->
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/best-sell-product/5.jpg" alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="fas fa-shopping-bag"></i></a></li>
                                <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>
                                <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>
                                <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="product__hover--content">
                        <ul class="rating d-flex">
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Single product end -->
            <!-- Single product start -->
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/best-sell-product/6.jpg" alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="fas fa-shopping-bag"></i></a></li>
                                <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>
                                <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>
                                <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="product__hover--content">
                        <ul class="rating d-flex">
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Single product end -->
            <!-- Single product start -->
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/best-sell-product/7.jpg" alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="fas fa-shopping-bag"></i></a></li>
                                <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>
                                <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>
                                <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="product__hover--content">
                        <ul class="rating d-flex">
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Single product end -->
            <!-- Single product start -->
            <div class="product product__style--3">
                <div class="product__thumb">
                    <a class="first__img" href="single-product.html"><img src="images/best-sell-product/8.jpg" alt="product image"></a>
                </div>
                <div class="product__content content--center">
                    <div class="action">
                        <div class="actions_inner">
                            <ul class="add_to_links">
                                <li><a class="cart" href="cart.html"><i class="fas fa-shopping-bag"></i></a></li>
                                <li><a class="wishlist" href="wishlist.html"><i class="fas fa-shopping-cart"></i></a></li>
                                <li><a class="compare" href="#"><i class="fas fa-heart"></i></a></li>
                                <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="fas fa-search"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="product__hover--content">
                        <ul class="rating d-flex">
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li class="on"><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Single product end -->
        </div>
    </section>
    <!-- Best Sale Area Area -->
    <!-- Footer Area -->
    <%@include file="/library/web/footer.jsp"%>
    <!-- //Footer Area -->
    <!-- QUICKVIEW PRODUCT -->
    <div id="quickview-wrapper">
        <!-- Modal -->
        <div class="modal fade" id="productmodal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal__container" role="document">
                <div class="modal-content">
                    <div class="modal-header modal__header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-product">
                            <!-- Start product images -->
                            <div class="product-images">
                                <div class="main-image images">
                                    <img alt="big images" src="images/product/big-img/1.jpg">
                                </div>
                            </div>
                            <!-- end product images -->
                            <div class="product-info">
                                <h1>Simple Fabric Bags</h1>
                                <div class="rating__and__review">
                                    <ul class="rating">
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                        <li><span class="ti-star"></span></li>
                                    </ul>
                                    <div class="review">
                                        <a href="#">4 customer reviews</a>
                                    </div>
                                </div>
                                <div class="price-box-3">
                                    <div class="s-price-box">
                                        <span class="new-price">$17.20</span>
                                        <span class="old-price">$45.00</span>
                                    </div>
                                </div>
                                <div class="quick-desc">
                                    Designed for simplicity and made from high quality materials. Its sleek geometry and material combinations creates a modern look.
                                </div>
                                <div class="select__color">
                                    <h2>Select color</h2>
                                    <ul class="color__list">
                                        <li class="red"><a title="Red" href="#">Red</a></li>
                                        <li class="gold"><a title="Gold" href="#">Gold</a></li>
                                        <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                        <li class="orange"><a title="Orange" href="#">Orange</a></li>
                                    </ul>
                                </div>
                                <div class="select__size">
                                    <h2>Select size</h2>
                                    <ul class="color__list">
                                        <li class="l__size"><a title="L" href="#">L</a></li>
                                        <li class="m__size"><a title="M" href="#">M</a></li>
                                        <li class="s__size"><a title="S" href="#">S</a></li>
                                        <li class="xl__size"><a title="XL" href="#">XL</a></li>
                                        <li class="xxl__size"><a title="XXL" href="#">XXL</a></li>
                                    </ul>
                                </div>
                                <div class="social-sharing">
                                    <div class="widget widget_socialsharing_widget">
                                        <h3 class="widget-title-modal">Share this product</h3>
                                        <ul class="social__net social__net--2 d-flex justify-content-start">
                                            <li class="facebook"><a href="#" class="rss social-icon"><i class="zmdi zmdi-rss"></i></a></li>
                                            <li class="linkedin"><a href="#" class="linkedin social-icon"><i class="zmdi zmdi-linkedin"></i></a></li>
                                            <li class="pinterest"><a href="#" class="pinterest social-icon"><i class="zmdi zmdi-pinterest"></i></a></li>
                                            <li class="tumblr"><a href="#" class="tumblr social-icon"><i class="zmdi zmdi-tumblr"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="addtocart-btn">
                                    <a href="#">Add to cart</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END QUICKVIEW PRODUCT -->
</div>
<!-- //Main wrapper -->

<!-- JS Files -->
<script src="<c:url value="/template/web/js/vendor/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/template/web/js/popper.min.js"/>"></script>
<script src="<c:url value="/template/web/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/template/web/js/plugins.js"/>"></script>
<script src="<c:url value="/template/web/js/active.js"/>"></script>

</body>

</html>