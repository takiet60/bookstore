<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
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

    <div class="wrapper" >
        <form method="POST" action="info" onsubmit="return validate()" name="vform">
            <div class="row" style="margin-top: 100px; margin-left: 100px">
                <div class="col-lg-6 col-12">
                    <div class="customer_details">
                        <h3>Thông tin khách hàng</h3>
                        <div class="customar__field">
                            <c:if test="${not empty message}">
                                <div class="alert alert-${alert}">
                                        ${message}
                                </div>
                            </c:if>
                            <div class="input_box">
                                <label>Họ và tên</label>
                                <div id="username_error"></div>
                                <input type="text" name="name" id="'iUser" value="${userModel.name}">
                            </div>
                            <div class="input_box">
                                <label>Giới tính<span>*</span></label>
                                <select class="select__option" name="gender" id="iGender">
                                    <option name="male">Nam</option>
                                    <option name="female">Nữ</option>
                                    <option name="other">Khác</option>
                                </select>
                            </div>
                            <div class="input_box">
                                <label>Địa chỉ<span>*</span></label>
                                <input type="text" name="address" value="${userModel.address}">
                            </div>

                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Số điện thoại <span>*</span></label>
                                    <div id="phone_error"></div>
                                    <input type="text" name="phone" id="iPhone" value="${userModel.phone}">
                                </div>

                                <div class="input_box space_between">
                                    <label>Email <span>*</span></label>
                                    <div id="email_error"></div>
                                    <input type="email" name="email" id="iEmail" value="${userModel.email}" >
                                </div>
                            </div>
                        </div><div class="wn__accountbox">
                        <input type="hidden" name="id" value="${userModel.id}">
                        <button type="submit" class="btn-primary btn" >Xác nhận</button>
                    </div>
                    </div>
                </div>

            </div>
        </form>
    </div>
    <%@include file="/library/web/footer.jsp"%>
</div>
<%@include file="/library/web/script.jsp"%>
<script type="text/javascript">

    let fname = document.forms['vform']['fname'];
    let lname = document.forms['vform']['lname'];
    let address = document.forms['vform']['address'];
    let ward = document.forms['vform']['ward'];
    let commune = document.forms['vform']['commune'];
    let city = document.forms['vform']['city'];
    let phone = document.forms['vform']['phone'];
    let email = document.forms['vform']['email'];
    let username = document.forms['vform']['username'];
    let password = document.forms['vform']['password'];
    let password2 = document.forms['vform']['password2'];

    let f_name_error = document.getElementById('f_name_error');
    let l_name_error = document.getElementById('l_name_error');
    let address_error = document.getElementById('address_error');
    let ward_error = document.getElementById('ward_error');
    let commune_error = document.getElementById('commune_error');
    let phone_error = document.getElementById('phone_error');
    let email_error = document.getElementById('email_error');
    let username_error = document.getElementById('username_error');
    let password_error = document.getElementById('password_error');
    let password2_error = document.getElementById('password2_error');

    fname.addEventListener('blur', fNameVerify, true);
    lname.addEventListener('blur', lNameVerify, true);
    address.addEventListener('blur', addressVerify, true);
    ward.addEventListener('blur', addressVerify, true);
    commune.addEventListener('blur', addressVerify, true);
    phone.addEventListener('blur', phoneVerify, true);
    email.addEventListener('blur', emailVerify, true);

    function validate(){
        if(fname.value == ""){
            fname.style.border = "1px solid red";
            f_name_error.textContent = "Yêu cầu họ";
            fname.focus();
            return false;
        }
        if(lname.value == ""){
            lname.style.border = "1px solid red";
            l_name_error.textContent = "Yêu cầu tên";
            lname.focus();
            return false;
        }
        if(address.value == ""){
            address.style.border = "1px solid red";
            address_error.textContent = "Yêu cầu số nhà";
            address.focus();
            return false;
        }
        if(ward.value == ""){
            ward.style.border = "1px solid red";
            ward_error.textContent = "Yêu cầu tên phường";
            ward.focus();
            return false;
        }
        if(commune.value == ""){
            commune.style.border = "1px solid red";
            commune_error.textContent = "Yêu cầu tên xã";
            commune.focus();
            return false;
        }
        if(phone.value == ""){
            phone.style.border = "1px solid red";
            phone_error.textContent = "Yêu cầu số điện thoại";
            phone.focus();
            return false;
        }
        if(email.value == ""){
            email.style.border = "1px solid red";
            email_error.textContent = "Yêu cầu số email";
            email.focus();
            return false;
        }
        if(username.value == ""){
            username.style.border = "1px solid red";
            username_error.textContent = "Yêu cầu tài khoản";
            username.focus();
            return false;
        }
        if(password.value == ""){
            password.style.border = "1px solid red";
            password_error.textContent = "Yêu cầu mật khẩu";
            password.focus();
            return false;
        }
        if(password2.value != password.value){
            password2.style.border = "1px solid red";
            password2_error.textContent = "Yêu cầu nhập lại mật khẩu";
            password2.focus();
            return false;
        }
    }

    function fNameVerify(){
        if(fname.value != ""){
            fname.style.border = "1px solid #5E6E66";
            f_name_error.innerHTML = "";
            return true;
        }
    }

    function addressVerify(){
        if(address.value != ""){
            address.style.border = "1px solid #5E6E66";
            address_error.innerHTML = "";
            return true;
        }
    }

    function phoneVerify(){
        if(phone.value != ""){
            lname.style.border = "1px solid #5E6E66";
            l_name_error.innerHTML = "";
            return true;
        }
    }

    function emailVerify(){
        if(email.value != ""){
            lname.style.border = "1px solid #5E6E66";
            l_name_error.innerHTML = "";
            return true;
        }
    }


</script>
</body>

</html>