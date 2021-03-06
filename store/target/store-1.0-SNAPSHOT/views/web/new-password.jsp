<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
    <%@include file="/library/web/link.jsp"%>

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

    <div class="ht__bradcaump__area bg-image--6">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Đăng nhập</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Xác nhận mật khẩu</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start My Account Area -->
    <section class="my_account_area pt--80 pb--55 bg--white">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div class="my__account__wrapper">
                        <h3 class="account__title">Xác nhận mật khẩu</h3>
                        <form action="getNewPassword" method="post" name="lform" onsubmit="return validate()">
                            <div class="account__form">
                                <div class="input__box">
                                    <label>Mật khẩu xác nhận<span>*</span></label>
                                    <div id="username_error"></div>
                                    <input type="text" name="code">
                                </div>
                                <div class="input__box">
                                    <label>Mật khẩu<span>*</span></label>
                                    <div id="password_error"></div>
                                    <input type="password" name="password">
                                </div>
                                <div class="input__box">
                                    <label>Mật khẩu mới<span>*</span></label>
                                    <div id="password_error1"></div>
                                    <input type="password" name="password1">
                                </div>
                                <div class="form__btn">
                                    <button type="submit">Xác nhận</button>
                                    <label class="label-for-checkbox">
                                        <input id="rememberme" class="input-checkbox" name="rememberme" value="forever" type="checkbox">
                                        <span>Nhớ tài khoản</span>
                                    </label>
                                </div>
                                <a class="forget_pass" href="<c:url value="forgotPassword" /> ">Quên mật khẩu?</a>
                                <a href="<c:url value="register"/> ">Tạo tài khoản</a>
                            </div>
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
<script type="text/javascript">
    let username = document.forms['lform']['username'];
    let password = document.forms['lform']['password'];
    let password1 = document.forms['lform']['password1'];

    let username_error = document.getElementById('username_error');
    let password_error = document.getElementById('password_error');
    let password_error1 = document.getElementById('password_error1');

    username.addEventListener('blur', fNameVerify, true);
    password.addEventListener('blur', fNameVerify, true);
    password1.addEventListener('blur', fNameVerify, true);

    function validate(){
        if(username.value == ""){
            username.style.border = "1px solid red";
            username_error.textContent = "Nhập mã xác nhận";
            username.focus();
            return false;
        }
        if(password.value == ""){
            password.style.border = "1px solid red";
            password_error.textContent = "Nhập mật khẩu";
            password.focus();
            return false;
        }
        if(password1.value == ""){
            password1.style.border = "1px solid red";
            password_error1.textContent = "Nhập lại mật khẩu";
            password1.focus();
            return false;
        }
        if(password.value != password1.value){
            password1.style.border = "1px solid red";
            password_error1.textContent = "Nhập lại mật khẩu";
            password1.focus();
            return false;
        }
    }

</script>
</body>

</html>