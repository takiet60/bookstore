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


    <!-- Start My Account Area -->
    <section class="my_account_area pt--80 pb--55 bg--white">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <c:if test="${not empty message}">
                        <div class="alert alert-${alert}">
                                ${message}
                        </div>
                    </c:if>
                    <div class="my__account__wrapper">
                        <h3 class="account__title">Thay đổi mật khẩu</h3>
                        <form action="change-password" method="post" name="lform" onsubmit="return validate()">
                            <div class="account__form">
                                <div class="input__box">
                                    <label>Mật khẩu cũ<span>*</span></label>
                                    <div id="username_error"></div>
                                    <input type="password" name="oldPassword">
                                </div>
                                <div class="input__box">
                                    <label>Mật khẩu mới<span>*</span></label>
                                    <div id="password_error"></div>
                                    <input type="password" name="newPassword">
                                </div>
                                <div class="input__box">
                                    <label>Nhập lại mật khẩu<span>*</span></label>
                                    <div id="password_error1"></div>
                                    <input type="password" name="newPassword1">
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
</div>
<!-- //Main wrapper -->


<!-- JS Files -->
<%@include file="/library/web/script.jsp"%>
<script type="text/javascript">
    let oldPassword = document.forms['lform']['oldPassword'];
    let newPassword = document.forms['lform']['newPassword'];
    let newPassword1 = document.forms['lform']['newPassword1'];

    let username_error = document.getElementById('username_error');
    let password_error = document.getElementById('password_error');
    let password_error1 = document.getElementById('password_error1');


    function validate(){
        if(oldPassword.value == ""){
            oldPassword.style.border = "1px solid red";
            username_error.textContent = "Nhập mật khẩu cũ";
            oldPassword.focus();
            return false;
        }
        if(newPassword.value == ""){
            newPassword.style.border = "1px solid red";
            password_error.textContent = "Nhập mật khẩu";
            newPassword.focus();
            return false;
        }
        if(newPassword1.value == ""){
            newPassword1.style.border = "1px solid red";
            password_error1.textContent = "Nhập lại mật khẩu";
            newPassword1.focus();
            return false;
        }
        if(newPassword.value != newPassword1.value){
            newPassword1.style.border = "1px solid red";
            password_error1.textContent = "Mật khẩu không trùng";
            newPassword1.focus();
            return false;
        }
    }

</script>
</body>

</html>