<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Thanh toán</title>
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

    <section class="wn__checkout__area section-padding--lg bg__white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="wn_checkout_wrap">
                        <c:if test="${empty USERMODEL}">
                        <div class="checkout_info">
                            <span>Trở thành thành viên ?</span>
                            <a class="showlogin" href="#">Nhấn vào đây để đăng nhập</a>
                        </div>
                        <div class="checkout_login">
                            <form class="wn__checkout__form" action="login" method="post">
                                <p>Nếu bạn đã giao dịch với chúng tôi hãy nhập thông tin bên dưới. Nếu đây là lần đầu hãy điền thông tin của bạn để thanh toán</p>
                                <div class="input__box">
                                    <label>Tài khoản <span>*</span></label>
                                    <input type="text" name="username">
                                </div>

                                <div class="input__box">
                                    <label>Mật khẩu <span>*</span></label>
                                    <input type="password" name="password">
                                </div>
                                <div class="form__btn">
                                    <button>Đăng nhập</button>
                                    <label class="label-for-checkbox">
                                        <input id="rememberme" name="rememberme" value="forever" type="checkbox">
                                        <span>Nhớ tài khoản</span>
                                    </label>
                                    <a href="#">Quên mật khẩu?</a>
                                </div>
                                <a href="<c:url value="register"/> ">Tạo tài khoản</a>
                            </form>
                        </div>
                        </c:if>
                        <div class="checkout_info">
                            <span>Bạn có mã giảm giá? </span>
                            <a class="showcoupon" href="#">Nhấn vào đây là nhập mã giảm giá</a>
                        </div>
                        <div class="checkout_coupon">
                            <form action="#">
                                <div class="form__coupon">
                                    <input type="text" placeholder="Coupon code">
                                    <button>Áp dụng mã giảm giá </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-12">
                    <div class="customer_details">
                        <%
                            UserModel userModel =(UserModel) session.getAttribute("USERMODEL");
                            request.setAttribute("user", userModel);
                        %>
                        <h3>Thông tin khách hàng</h3>
                        <div class="customar__field">
                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Họ và Tên<span>*</span></label>
                                    <input type="text" placeholder="${user.name}">
                                </div>
                            </div>
                            <div class="input_box">
                                <label>Hình thức thanh toán<span>*</span></label>
                                <select class="select__option">
                                    <option>Thanh toán trực tiếp</option>
                                    <option>Qua ZaloPay</option>
                                    <option>Qua Paypal</option>
                                    <option>Qua ATM</option>
                                </select>
                            </div>
                            <div class="input_box">
                                <label>Địa chỉ <span>*</span></label>
                                <input type="text" placeholder="${user.address}">
                            </div>
                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Số điện thoại <span>*</span></label>
                                    <input type="text" placeholder="${user.phone}">
                                </div>

                                <div class="input_box space_between">
                                    <label>Email <span>*</span></label>
                                    <input type="email" placeholder="${user.email}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    CartModel cart = CartModel.getCart(session);
                    Collection<ItemModel> data = cart.getCart();
                    long total = cart.total();
                    request.setAttribute("data", data);
                    request.setAttribute("total", total);
                %>
                <div class="col-lg-6 col-12 md-mt-40 sm-mt-40">
                    <div class="wn__order__box">
                        <form action="checkout" method="post">
                            <h3 class="onder__title">Đơn hàng của bạn</h3>
                            <ul class="order__total">
                                <li>Sản phẩm</li>
                                <li>Tổng</li>
                            </ul>
                            <ul class="order_product">
                                <c:forEach items="${data}" var="d">
                                    <li>${d.productModel.name} × ${d.quantity}<span>${d.productModel.value * d.quantity}₫</span></li>
                                </c:forEach>
                            </ul>
                            <ul class="shipping__method">

                                <li>Tạm tính <span></span></li>
                                <li>Phí vận chuyển
                                    <ul>
                                        <li>
                                            <input name="shipping_method[0]" data-index="0" value="legacy_flat_rate" checked="checked" type="radio">
                                            <label>Giao thường:5000₫  </label>
                                        </li>
                                        <li>
                                            <input name="shipping_method[0]" data-index="0" value="legacy_flat_rate" type="radio">
                                            <label>Giao nhanh: 25000₫ </label>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="total__amount">
                                <li>Tổng giá trị <span>${total + 5000} ₫ </span></li>
                            </ul>
                            <button type="submit" class="pay">Thanh toán</button>
                        </form>
                    </div>


                </div>
            </div>
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
<%@include file="/library/web/script.jsp"%>

</body>

</html>