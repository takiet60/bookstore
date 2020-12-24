<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<div class="ht__bradcaump__area bg-image--6">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="bradcaump__inner text-center">
                    <h2 class="bradcaump-title">Đăng nhập</h2>
                    <nav class="bradcaump-content">
                        <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                        <span class="brd-separetor">/</span>
                        <span class="breadcrumb_item active">Đăng nhập</span>
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
                    <h3 class="account__title">Đăng nhập</h3>
                    <form action="login" method="post" name="lform" onsubmit="return validate()">
                        <div class="account__form">
                            <div class="input__box">
                                <label>Tài khoản / Email <span>*</span></label>
                                <div id="username_error"></div>
                                <input type="text" name="username">
                            </div>
                            <div class="input__box">
                                <label>Mật khẩu<span>*</span></label>
                                <div id="password_error"></div>
                                <input type="password" name="password">
                            </div>
                            <div class="form__btn">
                                <button type="submit">Đăng nhập</button>
                                <label class="label-for-checkbox">
                                    <input id="rememberme" class="input-checkbox" name="rememberme" value="forever" type="checkbox">
                                    <span>Nhớ tài khoản</span>
                                </label>
                            </div>
                            <a class="forget_pass" href="#">Quên mật khẩu?</a>
                            <a href="create-account.html">Tạo tài khoản</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    let username = document.forms['lform']['username'];
    let password = document.forms['lform']['password'];

    let username_error = document.getElementById('username_error');
    let password_error = document.getElementById('password_error');

    username.addEventListener('blur', fNameVerify, true);
    password.addEventListener('blur', fNameVerify, true);

    function validate(){
        if(username.value == ""){
            username.style.border = "1px solid red";
            username_error.textContent = "Nhập tài khoản";
            username.focus();
            return false;
        }
        if(password.value == ""){
            password.style.border = "1px solid red";
            password_error.textContent = "Nhập mật khẩu";
            password.focus();
            return false;
        }
    }

</script>
</body>
</html>
