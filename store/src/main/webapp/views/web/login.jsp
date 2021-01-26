<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
        <meta name="google-signin-scope" content="profile email">
        <meta name="google-signin-client_id" content="60479677665-o0s1sav9epkg2v6h7q7i1urivpku2543.apps.googleusercontent.com">
        <script src="https://apis.google.com/js/platform.js" async defer></script>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <%@include file="/library/web/link.jsp"%>
    <style>
        .social-login{
            width:390px;
            margin:0 auto;
            margin-bottom: 14px;
        }
        .social-btn{
            font-weight: 100;
            color:white;
            width:190px;
            font-size: 0.9rem;
        }
        .facebook-btn{  background-color:#3C589C; }
        .google-btn{ background-color: #DF4B3B; }

    </style>
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">
    <!-- Header -->
    <%@include file="/library/web/header.jsp"%>
    <section class="my_account_area pt--80 pb--55 bg--white">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div class="my__account__wrapper">
                        <h3 class="account__title">Đăng nhập</h3>
                        <form action="login" method="post" name="lform" onsubmit="return validate()">
                            <div class="social-login">
                                <fb:login-button class="btn social-btn facebook-btn" scope="public_profile,email" onlogin="checkLoginState();">
                                    Facebook
                                </fb:login-button>
                                <div class="g-signin2 btn social-btn" data-onsuccess="onSignIn" data-theme="dark"></div>
                                </div>
<%--                            <div id="status">--%>
<%--                            </div>--%>
                            <c:if test="${not empty message}">
                                <div class="alert alert-${alert}">
                                        ${message}
                                </div>
                            </c:if>
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
                                <a class="forget_pass" href="<c:url value="forgotPassword" /> ">Quên mật khẩu?</a>
                                <a href="<c:url value="register"/> ">Tạo tài khoản</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@include file="/library/web/footer.jsp"%>
</div>
<%@include file="/library/web/script.jsp"%>
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
<script>

    function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
        console.log('statusChangeCallback');
        console.log(response);                   // The current login status of the person.
        if (response.status === 'connected') {   // Logged into your webpage and Facebook.
            testAPI();
        } else {                                 // Not logged into your webpage or we are unable to tell.
            document.getElementById('status').innerHTML = '';
        }
    }


    function checkLoginState() {               // Called when a person is finished with the Login Button.
        FB.getLoginStatus(function(response) {   // See the onlogin handler
            statusChangeCallback(response);
        });
    }


    window.fbAsyncInit = function() {
        FB.init({
            appId      : '871181270322354',
            cookie     : true,                     // Enable cookies to allow the server to access the session.
            xfbml      : true,                     // Parse social plugins on this webpage.
            version    : 'v2.9'           // Use this Graph API version for this call.
        });


        FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
            statusChangeCallback(response);        // Returns the login status.
        });
    };

    function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', {fields: 'name, email, birthday'}, function(response) {
            console.log('Successful login for: ' + response.name);
            document.getElementById('status').innerHTML =
                'Thanks for logging in, ' + response.name + '!';
            window.location.href="loginFace?action=Face&name=" + response.name + "&email" + response.email +
                '&id=' + response.id;
        });

    }

</script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>




<script>
    function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
    }
</script>

</body>

</html>