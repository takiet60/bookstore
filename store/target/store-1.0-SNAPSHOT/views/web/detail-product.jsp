<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Title</title>
</head>
<body>
<div class="ht__bradcaump__area bg-image--4">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="bradcaump__inner text-center">
                    <h2 class="bradcaump-title">Chi tiết sản phẩm</h2>
                    <nav class="bradcaump-content">
                        <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                        <span class="brd-separetor">/</span>
                        <span class="breadcrumb_item active">Chi tiết sản phẩm</span>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
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
                                        <button class="tocart" type="submit" title="Add to Cart">Thêm vào giỏ hàng</button>
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
                        <h2 class="title__be--2">Related Products</h2>
                    </div>
                    <div class="row mt--60">
                        <div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/1.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/2.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/2.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/4.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$ ${product.cost}</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/3.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/6.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/4.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/8.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/9.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/2.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/9.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/8.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                        </div>
                    </div>
                </div>
                <div class="wn__related__product">
                    <div class="section__title text-center">
                        <h2 class="title__be--2">upsell products</h2>
                    </div>
                    <div class="row mt--60">
                        <div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/2.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/1.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/4.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/3.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/6.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/5.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/8.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/7.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/9.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/2.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                            <!-- Start Single Product -->
                            <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                <div class="product">
                                    <div class="product__thumb">
                                        <a class="first__img" href="single-product.html"><img src="images/product/9.jpg" alt="product image"></a>
                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/8.jpg" alt="product image"></a>
                                        <div class="new__box">
                                            <span class="new-label">New</span>
                                        </div>
                                        <ul class="prize position__right__bottom d-flex">
                                            <li>$35.00</li>
                                            <li class="old_prize">$38.00</li>
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
                                        <h4><a href="single-product.html">Crown Summit Backpack</a></h4>
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
                            <!-- Start Single Product -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
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
        </div>
    </div>
</div>
</body>
</html>
