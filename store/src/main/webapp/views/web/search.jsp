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

    <div class="ht__bradcaump__area bg-image--6">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Kết quả tìm kiếm</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Kết quả tìm kiếm</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start Shop Page -->
    <div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                        <aside class="wedget__categories poroduct--cat">
                            <h3 class="wedget__title">Thể loại</h3>
                            <ul>
                                <li><a href="#">Sinh học <span>(3)</span></a></li>
                                <li><a href="#">Kinh doanh <span>(4)</span></a></li>
                                <li><a href="#">Nấu ăn <span>(6)</span></a></li>
                                <li><a href="#">Sức khỏe và thể thao <span>(7)</span></a></li>
                                <li><a href="#">Lịch sử <span>(8)</span></a></li>
                                <li><a href="#">Bí ẩn <span>(9)</span></a></li>
                                <li><a href="#">Truyền cảm hứng <span>(13)</span></a></li>
                                <li><a href="#">Lãng mạn <span>(20)</span></a></li>
                                <li><a href="#">Thú vị <span>(22)</span></a></li>
                                <li><a href="#">Kỹ năng sống <span>(13)</span></a></li>
                                <li><a href="#">Hài hước <span>(17)</span></a></li>
                                <li><a href="#">Kinh dị <span>(20)</span></a></li>
                                <li><a href="#">Thần thoại <span>(34)</span></a></li>
                                <li><a href="#">Tác phẩm kinh điển <span>(60)</span></a></li>
                                <li><a href="#">Phiêu lưu <span>(3)</span></a></li>
                                <li><a href="#">Trinh thám <span>(3)</span></a></li>
                            </ul>
                        </aside>
                        <aside class="wedget__categories pro--range">
                            <h3 class="wedget__title">Lọc theo giá bán</h3>
                            <div class="content-shopby">
                                <div class="price_filter s-filter clear">
                                    <form action="#" method="GET">
                                        <div id="slider-range"></div>
                                        <div class="slider__range--output">
                                            <div class="price__output--wrap">
                                                <div class="price--output">
                                                    <span>Giá bán :</span><input type="text" id="amount" readonly="">
                                                </div>
                                                <div class="price--filter">
                                                    <a href="#">Lọc</a>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </aside>
                        <aside class="wedget__categories poroduct--compare">
                            <h3 class="wedget__title">So sánh</h3>
                            <ul>
                                <li><a href="#">x</a><a href="#">Chất lượng</a></li>
                                <li><a href="#">x</a><a href="#">Giá cả</a></li>
                                <li><a href="#">x</a><a href="#">Đánh giá</a></li>
                            </ul>
                        </aside>
                        <aside class="wedget__categories poroduct--tag">
                            <h3 class="wedget__title">Thẻ</h3>
                            <ul>
                                <li><a href="#">Sinh học</a></li>
                                <li><a href="#">Kinh doanh</a></li>
                                <li><a href="#">Nấu ăn</a></li>
                                <li><a href="#">Sức khỏe và thể dục</a></li>
                                <li><a href="#">Lịch sử</a></li>
                                <li><a href="#">Thiên văn</a></li>
                                <li><a href="#">Truyền cảm hứng</a></li>
                                <li><a href="#">Tôn giáo</a></li>
                                <li><a href="#">Kinh dị</a></li>
                                <li><a href="#">Thú vị</a></li>
                                <li><a href="#">Kinh điển</a></li>
                                <li><a href="#">Hài hước</a></li>
                                <li><a href="#">Thần thoại</a></li>
                            </ul>
                        </aside>
                        <aside class="wedget__categories sidebar--banner">
                            <img src="images/others/banner_left.jpg" alt="banner images">
                            <div class="text">
                                <h2>Sản phẩm mới</h2>
                                <h6>giảm giá lên đến <br> <strong>40%</strong></h6>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-lg-9 col-12 order-1 order-lg-2">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
                                <div class="shop__list nav justify-content-center" role="tablist">
                                    <a class="nav-item nav-link active" data-toggle="tab" href="#nav-grid" role="tab"><i class="fa fa-th"></i></a>
                                    <a class="nav-item nav-link" data-toggle="tab" href="#nav-list" role="tab"><i class="fa fa-list"></i></a>
                                </div>
                                <p>Kết quả</p>
                                <div class="orderby__wrapper">
                                    <span>Sắp xếp</span>
                                    <select class="shot__byselect">
                                        <option>Giá</option>
                                        <option>Đánh giá</option>
                                        <option>Tác giả</option>
                                        <option>Nhà xuất bản</option>
                                        <option>Thể loại</option>
                                        <option>Tags</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab__container">
                        <div class="shop-grid tab-pane fade show active" id="nav-grid" role="tabpanel">
                            <div class="row">
                                <!-- Start Single Product -->
                                <c:forEach items="${list}" var="d">
                                    <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                        <div class="product">
                                            <div class="product__thumb">
                                                <a class="first__img" href="<c:url value = "detail?id=${d.id}"/>"><img src="${d.image1}" alt="product image"></a>
                                                    <%--                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/2.jpg" alt="product image"></a>--%>
                                                <div class="new__box">
                                                    <span class="new-label">Hot</span>
                                                </div>
                                                <ul class="prize position__right__bottom d-flex">
                                                    <li>${d.value}₫</li>
                                                    <li class="old_prize">${d.cost - d.value}₫</li>
                                                </ul>
                                                <div class="action">
                                                    <div class="actions_inner">
                                                        <ul class="add_to_links">
                                                            <li><a class="cart" href="<c:url value="cart/add?id=${d.id}" />"></a></li>
                                                                <%--                                                    <li><a class="wishlist" href="wishlist.html"></a></li>--%>
                                                                <%--                                                    <li><a class="compare" href="compare.html"></a></li>--%>
                                                                <%--                                                    <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"></a></li>--%>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product__content">
                                                <h4><a href="<c:url value = "detail?id=${d.id}"/>">${d.name}</a></h4>
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
                                </c:forEach>
                            </div>

                            <ul class="wn__pagination">
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
                            </ul>
                        </div>
                        <%--                    <div class="shop-grid tab-pane fade" id="nav-list" role="tabpanel">--%>
                        <%--                        <div class="list__view__wrapper">--%>
                        <%--                            <c:forEach items="${list}" var="d">--%>
                        <%--                            <div class="list__view mt--40">--%>
                        <%--                                <div class="thumb">--%>
                        <%--                                    <a class="first__img" href="${d.image1}"><img src="${d.image1}" alt="product images"></a>--%>
                        <%--&lt;%&ndash;                                    <a class="second__img animation1" href="single-product.html"><img src="images/product/4.jpg" alt="product images"></a>&ndash;%&gt;--%>
                        <%--                                </div>--%>
                        <%--                                <div class="content">--%>
                        <%--                                    <h2><a href="<c:url value = "detail?id=${d.id}"/>">${d.name}</a></h2>--%>
                        <%--                                    <ul class="rating d-flex">--%>
                        <%--                                        <li class="on"><i class="fas fa-star"></i></li>--%>
                        <%--                                        <li class="on"><i class="fas fa-star"></i></li>--%>
                        <%--                                        <li class="on"><i class="fas fa-star"></i></li>--%>
                        <%--                                        <li class="on"><i class="fas fa-star"></i></li>--%>
                        <%--                                        <li><i class="fas fa-star"></i></li>--%>
                        <%--                                        <li><i class="fas fa-star"></i></li>--%>
                        <%--                                    </ul>--%>
                        <%--                                    <ul class="prize__box">--%>
                        <%--                                        <li>${d.value}₫</li>--%>
                        <%--                                        <li class="old_prize">${d.cost - d.value}₫</li>--%>
                        <%--                                    </ul>--%>
                        <%--                                    <p>${d.descriptin}</p>--%>
                        <%--                                    <ul class="cart__action d-flex">--%>
                        <%--                                        <li class="cart"><a href="<c:url value="cart/add?id=${d.id}"/>">Add to cart</a></li>--%>
                        <%--&lt;%&ndash;                                        <li class="wishlist"><a href="cart.html"></a></li>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;                                        <li class="compare"><a href="cart.html"></a></li>&ndash;%&gt;--%>
                        <%--                                    </ul>--%>

                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                            </c:forEach>--%>
                        <%--                        </div>--%>
                        <%--                    </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
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