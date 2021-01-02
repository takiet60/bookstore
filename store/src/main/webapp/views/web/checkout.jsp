<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Kết quả tìm kiếm</title>
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

    <section class="wn__checkout__area section-padding--lg bg__white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="wn_checkout_wrap">
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
                            UserModel userModel =(UserModel) session.getAttribute("user");
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
                        <div class="create__account">
                            <div class="wn__accountbox">
                                <input class="input-checkbox" name="createaccount" value="1" type="checkbox">
                                <span>Tạo tài khoản ?</span>
                            </div>
                            <div class="account__field">
                                <form action="#">
                                    <label>Mật khẩu <span>*</span></label>
                                    <input type="text" placeholder="password">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="customer_details mt--20">
                        <div class="differt__address">
                            <input name="ship_to_different_address" value="1" type="checkbox">
                            <span>Gửi tới địa chỉ khác ?</span>
                        </div>
                        <div class="customar__field differt__form mt--40">
                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Họ <span>*</span></label>
                                    <input type="text">
                                </div>
                                <div class="input_box space_between">
                                    <label>Tên <span>*</span></label>
                                    <input type="text">
                                </div>
                            </div>
                            <div class="input_box">
                                <label>Hình thức thanh toán<span>*</span></label>
                                <select class="select__option">
                                    <option>Thanh toán thực tiếp</option>
                                    <option>Qua ZaloPay</option>
                                    <option>Qua Paypal</option>
                                    <option>Qua ATM</option>
                                </select>
                            </div>
                            <div class="input_box">
                                <label>Địa chỉ <span>*</span></label>
                                <input type="text" placeholder="Số nhà">
                            </div>
                            <div class="input_box">
                                <input type="text" placeholder="Phường">
                            </div>
                            <div class="input_box">
                                <input type="text" placeholder="Xã">
                            </div>
                            <div class="input_box">
                                <label>Thành phố<span>*</span></label>
                                <select class="select__option">
                                    <option>Lựa chọn thành phố…</option>
                                    <option>	An Giang	</option>
                                    <option>	Bà Rịa - Vũng Tàu	</option>
                                    <option>	Bắc Giang	</option>
                                    <option>	Bắc Kạn	</option>
                                    <option>	Bạc Liêu	</option>
                                    <option>	Bắc Ninh	</option>
                                    <option>	Bến Tre	</option>
                                    <option>	Bình Định	</option>
                                    <option>	Bình Dương	</option>
                                    <option>	Bình Phước	</option>
                                    <option>	Bình Thuận	</option>
                                    <option>	Cà Mau	</option>
                                    <option>	Cao Bằng	</option>
                                    <option>	Đắk Lắk	</option>
                                    <option>	Đắk Nông	</option>
                                    <option>	Điện Biên	</option>
                                    <option>	Đồng Nai	</option>
                                    <option>	Đồng Tháp	</option>
                                    <option>	Gia Lai	</option>
                                    <option>	Hà Giang	</option>
                                    <option>	Hà Nam	</option>
                                    <option>	Hà Tĩnh	</option>
                                    <option>	Hải Dương	</option>
                                    <option>	Hậu Giang	</option>
                                    <option>	Hòa Bình	</option>
                                    <option>	Hưng Yên	</option>
                                    <option>	Khánh Hòa	</option>
                                    <option>	Kiên Giang	</option>
                                    <option>	Kon Tum	</option>
                                    <option>	Lai Châu	</option>
                                    <option>	Lâm Đồng	</option>
                                    <option>	Lạng Sơn	</option>
                                    <option>	Lào Cai	</option>
                                    <option>	Long An	</option>
                                    <option>	Nam Định	</option>
                                    <option>	Nghệ An	</option>
                                    <option>	Ninh Bình	</option>
                                    <option>	Ninh Thuận	</option>
                                    <option>	Phú Thọ	</option>
                                    <option>	Quảng Bình	</option>
                                    <option>	Quảng Nam	</option>
                                    <option>	Quảng Ngãi	</option>
                                    <option>	Quảng Ninh	</option>
                                    <option>	Quảng Trị	</option>
                                    <option>	Sóc Trăng	</option>
                                    <option>	Sơn La	</option>
                                    <option>	Tây Ninh	</option>
                                    <option>	Thái Bình	</option>
                                    <option>	Thái Nguyên	</option>
                                    <option>	Thanh Hóa	</option>
                                    <option>	Thừa Thiên Huế	</option>
                                    <option>	Tiền Giang	</option>
                                    <option>	Trà Vinh	</option>
                                    <option>	Tuyên Quang	</option>
                                    <option>	Vĩnh Long	</option>
                                    <option>	Vĩnh Phúc	</option>
                                    <option>	Yên Bái	</option>
                                    <option>	Phú Yên	</option>
                                    <option>	Cần Thơ	</option>
                                    <option>	Đà Nẵng	</option>
                                    <option>	Hải Phòng	</option>
                                    <option>	Hà Nội	</option>
                                    <option>	TP HCM	</option>

                                </select>
                            </div>
                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Số điện thoại <span>*</span></label>
                                    <input type="text">
                                </div>
                                <div class="input_box space_between">
                                    <label>Email <span>*</span></label>
                                    <input type="email">
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
                                            <input name="shipping_method[0]" data-index="0" value="legacy_flat_rate" checked="checked" type="radio">
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
                    <div id="accordion" class="checkout_accordion mt--30" role="tablist">
                        <div class="payment">
                            <div class="che__header" role="tab" id="headingOne">
                                <a class="checkout__title" data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <span>Thanh toán qua ngân hàng</span>
                                </a>
                            </div>
                            <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                <div class="payment-body">Lựa chọn hình thức thanh toán qua ngân hàng</div>
                            </div>
                        </div>
                        <div class="payment">
                            <div class="che__header" role="tab" id="headingFour">
                                <a class="collapsed checkout__title" data-toggle="collapse" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    <span>PayPal <img src="images/icons/payment.png" alt="payment images"> </span>
                                </a>
                            </div>
                            <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordion">
                                <div class="payment-body">Thanh toán qua các thẻ tín dụng</div>
                            </div>
                        </div>
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
<script src="<c:url value="/template/web/js/vendor/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/template/web/js/popper.min.js"/>"></script>
<script src="<c:url value="/template/web/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/template/web/js/plugins.js"/>"></script>
<script src="<c:url value="/template/web/js/active.js"/>"></script>

</body>

</html>