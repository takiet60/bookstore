<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<c:url var="APIurl" value="/cart/add"/>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
    <%@include file="/library/web/link.jsp"%>
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">
    <!-- Header -->
    <%@include file="/library/web/header.jsp"%>
    <div class="maincontent bg--white pt--80 pb--55">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-12">
                    <div class="wn__single__product">
                        <div class="row">
                            <div class="col-lg-6 col-12">
                                <div class="wn__fotorama__wrapper">
                                    <div class="fotorama wn__fotorama__action" data-nav="thumbs">
                                        <a href="${product.image1}"><img src="${product.image1}" alt=""></a>
                                        <a href="${product.image2}"><img src="${product.image2}" alt=""></a>
                                        <a href="${product.image3}"><img src="${product.image3}" alt=""></a>
                                        <a href="${product.image4}"><img src="${product.image4}" alt=""></a>
                                        <a href="${product.image5}"><img src="${product.image5}" alt=""></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="product__info__main">
                                    <h1>${product.name}</h1>
                                    <div class="product-info-stock-sku d-flex">
                                        <p>Có sẵn:<span> Còn hàng</span></p>
                                        <p>SKU:<span> ${product.id}</span></p>
                                    </div>
                                    <div class="product-reviews-summary d-flex">
                                        <ul class="rating-summary d-flex">
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li><i class="fas fa-star"></i></li>
                                            <li class="off"><i class="fas fa-star"></i></li>
                                            <li class="off"><i class="fas fa-star"></i></li>
                                        </ul>
                                        <div class="reviews-actions d-flex">
                                            <a href="#">(1 Đánh giá)</a>
                                            <a href="#">Thêm đánh giá</a>
                                        </div>
                                    </div>
                                    <div class="price-box">
                                        <span>${product.value}</span>
                                    </div>
                                    <div class="box-tocart d-flex">
                                        <span>Số lượng</span>
                                        <input id="qty" class="input-text qty" name="qty" min="1" value="1" title="Qty" type="number">
                                        <div class="addtocart__actions">
                                                <button class="tocart" type="submit" title="Add to Cart" onclick="addProduct(${product.id})">

                                                    Thêm vào giỏ hàng
                                                </button>
                                        </div>
                                    </div>
                                    <div class="product-addto-links clearfix">
                                        <a class="wishlist" href="#"></a>
                                        <a class="compare" href="#"></a>
                                        <a class="email" href="#"></a>
                                    </div>
                                    <div class="product__overview">
                                        <p>${product.shortDescription}
                                        </p>
                                        <ul class="pro__attribute">
                                            <!-- <li>• Two-tone gray heather hoodie.</li>
                                            <li>• Drawstring-adjustable hood. </li>
                                            <li>• Machine wash/dry.</li> -->
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product__info__detailed">
                        <div class="pro_details_nav nav justify-content-start" role="tablist">
                            <a class="nav-item nav-link active" data-toggle="tab" href="#nav-details" role="tab">Details</a>
                            <a class="nav-item nav-link" data-toggle="tab" href="#nav-review" role="tab">Reviews</a>
                        </div>
                        <div class="tab__container">
                            <!-- Start Single Tab Content -->
                            <div class="pro__tab_label tab-pane fade show active" id="nav-details" role="tabpanel">
                                <div class="description__attribute">
                                    <p>${product.description}</p>
                                    <ul>
                                        <!-- <li>• Two-tone gray heather hoodie.</li>
                                        <li>• Drawstring-adjustable hood. </li>
                                        <li>• Machine wash/dry.</li> -->
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Tab Content -->
                            <!-- Start Single Tab Content -->
                            <div class="pro__tab_label tab-pane fade" id="nav-review" role="tabpanel">
                                <div class="review__attribute">
                                    <h1>Đánh giá khách hàng</h1>
                                    <h2>Hastech</h2>
                                    <div class="review__ratings__type d-flex">
                                        <div class="review-ratings">
                                            <div class="rating-summary d-flex">
                                                <span>Số lượng</span>
                                                <ul class="rating d-flex">
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>

                                            <div class="rating-summary d-flex">
                                                <span>Giá cả</span>
                                                <ul class="rating d-flex">
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                            <div class="rating-summary d-flex">
                                                <span>Giá trị</span>
                                                <ul class="rating d-flex">
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="review-content">
                                            <p>Hastech</p>
                                            <p>Đánh giá bởi Hastech</p>
                                            <p>Đăng ngày 11/6/2018</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="review-fieldset">
                                    <h2>Đánh giá của bạn:</h2>
                                    <h3>Autumn a novel</h3>
                                    <div class="review-field-ratings">
                                        <div class="product-review-table">
                                            <div class="review-field-rating d-flex">
                                                <span>Số lượng</span>
                                                <ul class="rating d-flex">
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                            <div class="review-field-rating d-flex">
                                                <span>Giá cả</span>
                                                <ul class="rating d-flex">
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                            <div class="review-field-rating d-flex">
                                                <span>Giá trị</span>
                                                <ul class="rating d-flex">
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                    <li class="off"><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review_form_field">
                                        <div class="input__box">
                                            <span>Nickname</span>
                                            <input id="nickname_field" type="text" name="nickname">
                                        </div>
                                        <div class="input__box">
                                            <span>Tiêu đề</span>
                                            <input id="summery_field" type="text" name="summery">
                                        </div>
                                        <div class="input__box">
                                            <span>Đánh giá</span>
                                            <textarea name="review"></textarea>
                                        </div>
                                        <div class="review-form-actions">
                                            <button>Gửi</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Tab Content -->
                        </div>
                    </div>
                    <div class="wn__related__product pt--80 pb--50">
                        <div class="section__title text-center">
                            <h2 class="title__be--2">Sản phẩm cùng thể loại</h2>
                        </div>
                        <div class="row mt--60">
                            <div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
                                <c:forEach items="${listRelated}" var="item">
                                <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                    <div class="product">
                                        <div class="product__thumb">
                                            <a class="first__img" href="<c:url value="/detail?id=${item.id}"/> "><img src="${item.image1}" alt="product image"></a>
                                            <div class="new__box">
                                                <span class="new-label">New</span>
                                            </div>
                                            <ul class="prize position__right__bottom d-flex">
                                                <li>${item.value}₫</li>
                                                <li class="old_prize">${item.cost - item.value}₫</li>
                                            </ul>

                                        </div>
                                        <div class="product__content">
                                            <h4><a href="single-product.html">${item.name}</a></h4>
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
                        </div>
                    </div>
                    <div class="wn__related__product">
                        <div class="section__title text-center">
                            <h2 class="title__be--2">Sản phẩm khác</h2>
                        </div>
                        <div class="row mt--60">
                            <div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
                                <!-- Start Single Product -->
                                <c:forEach items="${listAll}" var="item">
                                <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                    <div class="product">
                                        <div class="product__thumb">
                                            <a class="first__img" href="<c:url value="/detail?id=${item.id}"/> "><img src="${item.image1}" alt="product image"></a>
                                            <div class="new__box">
                                                <span class="new-label">New</span>
                                            </div>
                                            <ul class="prize position__right__bottom d-flex">
                                                <li>${item.value}₫</li>
                                                <li class="old_prize">${item.cost - item.value}₫</li>
                                            </ul>
                                            <div class="action">
                                                <div class="actions_inner">
                                                    <ul class="add_to_links">
                                                        <li><a class="cart" href="cart.html"></a></li>
                                                        <li><a class="wishlist" href="wishlist.html"></a></li>
                                                        <li><a class="compare" href="compare.html"></a></li>
                                                        <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product__content">
                                            <h4><a href="single-product.html">${item.name}</a></h4>
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
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                        <aside class="wedget__categories poroduct--cat">
                            <h3 class="wedget__title">Thể loại</h3>
                            <ul>
                                <c:forEach items="${listCategory}" var="item">
                                <li><a href="<c:url value="/category?id=${item.id}&page=1&maxPageItem=10&sortName=name&sortBy=desc"/>">${item.name} <span>(3)</span></a></li>
                                </c:forEach>
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
<%@include file="/library/web/script.jsp"%>
<script type="text/javascript">
    function addProduct(id){
        let data = {}
        data["id"] = id;
        $.ajax({
            url: '${APIurl}',
            type: 'GET',
            data: data,
            success: function (result){
                alert("Thêm vào giỏ hàng thành công")
                <%--window.location.href = "${NewURL}?type=list&maxPageItem=10&page=1&message=INSERT_SUCCESS&alert=success";--%>
            },
            error: function (error){
                <%--window.location.href = "${NewURL}?type=add&maxPageItem=10&page=1&message=INSERT_SUCCESS&alert=success";--%>
            }
        })
    }
</script>

</body>

</html>