<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Main wrapper -->
<div class="wrapper" id="wrapper">
    <form method="POST" action="register" onsubmit="return validate()" name="vform">
        <div class="row" style="margin-top: 100px; margin-left: 100px">
            <div class="col-lg-6 col-12">
                <div class="customer_details">
                    <h3>Đăng ký tài khoản</h3>
                    <div class="customar__field">
                        <div class="margin_between">
                            <div class="input_box space_between" >
                                <label >Họ  <span>*</span></label>
                                <input type="text" name="fname" id="iFName">
                                <div id="f_name_error"></div>
                            </div>
                            <div class="input_box space_between">
                                <label >Tên<span>*</span></label>
                                <input type="text" name="lname" id="iLName">
                                <div id="l_name_error"></div>
                            </div>
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
                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Số nhà<span>*</span></label>
                                    <div id="address_error"></div>
                                    <input type="text" name="address" id="iHouse">

                                </div>

                                <div class="input_box space_between">
                                    <label>Phường<span>*</span></label>
                                    <div id="ward_error"></div>
                                    <input type="text" name="ward" id="iWard">
                                </div>
                            </div>
                        </div>
                        <div class="input_box">
                            <div class="margin_between">
                                <div class="input_box space_between">
                                    <label>Xã<span>*</span></label>
                                    <div id="commune_error"></div>
                                    <input type="text" name="commune" id="iCommune">
                                </div>
                                <div class="input_box">
                                    <label>Thành phố<span>*</span></label>
                                    <select class="select__option" name="city" id="iCity">
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

                            </div>
                        </div>

                        <div class="margin_between">
                            <div class="input_box space_between">
                                <label>Số điện thoại <span>*</span></label>
                                <div id="phone_error"></div>
                                <input type="text" name="phone" id="iPhone">
                            </div>

                            <div class="input_box space_between">
                                <label>Email <span>*</span></label>
                                <div id="email_error"></div>
                                <input type="email" name="email" id="iEmail">
                            </div>
                        </div>
                        <div class="input_box">
                            <label>Tài khoản<span>*</span></label>
                            <div id="username_error"></div>
                            <input type="text" name="username" id="'iUser">
                        </div>
                        <div class="input_box">
                            <label>Mật khẩu<span>*</span></label>
                            <div id="password_error"></div>
                            <input type="password" name="password" id="iPass">
                        </div>
                        <div class="input_box">
                            <label>Xác nhận mật khẩu<span>*</span></label>
                            <div id="password2_error"></div>
                            <input type="password" name="password2" id="iPass2">
                        </div>
                        <button type="submit" >Xác nhận</button>
                    </div><div class="wn__accountbox">
                    <span>Có tài khoản ?</span>
                </div>
                </div>
            </div>

        </div>
    </form>
</div>

<script type="text/javascript">

    // let fname = document.forms['vform']['fname'];
    // let lname = document.forms['vform']['lname'];
    // let address = document.forms['vform']['address'];
    // let ward = document.forms['vform']['ward'];
    // let commune = document.forms['vform']['commune'];
    // let city = document.forms['vform']['city'];
    // let phone = document.forms['vform']['phone'];
    // let email = document.forms['vform']['email'];
    // let username = document.forms['vform']['username'];
    // let password = document.forms['vform']['password'];
    // let password2 = document.forms['vform']['password2'];
    //
    // let f_name_error = document.getElementById('f_name_error');
    // let l_name_error = document.getElementById('l_name_error');
    // let address_error = document.getElementById('address_error');
    // let ward_error = document.getElementById('ward_error');
    // let commune_error = document.getElementById('commune_error');
    // let phone_error = document.getElementById('phone_error');
    // let email_error = document.getElementById('email_error');
    // let username_error = document.getElementById('username_error');
    // let password_error = document.getElementById('password_error');
    // let password2_error = document.getElementById('password2_error');
    //
    // fname.addEventListener('blur', fNameVerify, true);
    // lname.addEventListener('blur', lNameVerify, true);
    // address.addEventListener('blur', addressVerify, true);
    // ward.addEventListener('blur', addressVerify, true);
    // commune.addEventListener('blur', addressVerify, true);
    // phone.addEventListener('blur', phoneVerify, true);
    // email.addEventListener('blur', emailVerify, true);


    $(document).ready(function () {

        function validatePhone(txtPhone){
            var filter = /^[0-9-+]+$/;
            if (filter.test(txtPhone + "") && txtPhone.length() >= 10 && txtPhone.length() <= 12) {
                return true;
            } else {
                return false;
            }
        }

        function validateEmail(sEmail) {
            var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            if (filter.test((sEmail)) ){
                return true;
            } else {
                return false;
            }
        }

        $('#wrapper').bind( {
            'submit':function () {
                if (!validateEmail($('#iEmail').val())) {
                    $('#email_error').html('Email bạn nhập không phù hợp!!!');
                    return false;
                }

                if (!validatePhone($('#iPhone').val())) {
                    $('#phone_error').html('Số điện thoại bạn nhập không phù hợp!!!');
                    return false;
                }

                if ($('#iPass').val() == '') {
                    $('#password_error').html('Bạn không được bỏ trống trường này!!!');
                    return false;
                }

                if ($('#iPass2').val() == '') {
                    $('#password2_error').html('Bạn không được bỏ trống trường này!!!');
                    return false;
                }

                if ($('#iFName').val() == '') {
                    $('#f_name_error').html('Bạn không được bỏ trống trường này!!!');
                    return false;
                }

                if ($('#iLName').val() == '') {
                    $('#l_name_error').html('Bạn không được bỏ trống trường này!!!');
                    return false;
                }

                if ($('#iHouse').val() == '') {
                    $('#address_error').html('Bạn không được bỏ trống trường này!!!');
                    return false;
                }

                if ($('#iWard').val() == '') {
                    $('#ward_error').html('Bạn không được bỏ trống trường này!!!');
                    return false;
                }

                if ($('#iCommune').val() == '') {
                    $('#commune_error').html('Bạn không được bỏ trống trường này!!!');
                    return false;
                }

                if ($('#iUser').val() == '') {
                    $('#username_error').html('Bạn không được bỏ trống trường này!!!');
                    return false;
                } return true;
            },
            'keydown': function() {
                if ($('#FfName').val().length > 0) {
                    $('#f_name_error').html('');
                }
                if ($('#iLName').val().length > 0) {
                    $('#l_name_error').html('');
                }
                if ($('#iHouse').val().length > 0) {
                    $('#address_error').html('');
                }
                if ($('#iWard').val().length > 0) {
                    $('#ward_error').html('');
                }
                if ($('#iCommune').val().length > 0) {
                    $('#commune_error').html('');
                }
                if ($('#iPhone').val().length > 0) {
                    $('#phone_error').html('');
                }
                if ($('#iEmail').val().length > 0) {
                    $('#email_error').html('');
                }
                if ($('#iUser').val().length > 0) {
                    $('#username_error').html('');
                }
                if ($('#iPass').val().length > 0) {
                    $('#password_error').html('');
                }
            }
        });
    });




    // function validate(){
    //     if(fname.value == ""){
    //         fname.style.border = "1px solid red";
    //         f_name_error.textContent = "Yêu cầu họ";
    //         fname.focus();
    //         return false;
    //     }
    //     if(lname.value == ""){
    //         lname.style.border = "1px solid red";
    //         l_name_error.textContent = "Yêu cầu tên";
    //         lname.focus();
    //         return false;
    //     }
    //     if(address.value == ""){
    //         address.style.border = "1px solid red";
    //         address_error.textContent = "Yêu cầu số nhà";
    //         address.focus();
    //         return false;
    //     }
    //     if(ward.value == ""){
    //         ward.style.border = "1px solid red";
    //         ward_error.textContent = "Yêu cầu tên phường";
    //         ward.focus();
    //         return false;
    //     }
    //     if(commune.value == ""){
    //         commune.style.border = "1px solid red";
    //         commune_error.textContent = "Yêu cầu tên xã";
    //         commune.focus();
    //         return false;
    //     }
    //     if(phone.value == ""){
    //         phone.style.border = "1px solid red";
    //         phone_error.textContent = "Yêu cầu số điện thoại";
    //         phone.focus();
    //         return false;
    //     }
    //     if(email.value == ""){
    //         email.style.border = "1px solid red";
    //         email_error.textContent = "Yêu cầu số email";
    //         email.focus();
    //         return false;
    //     }
    //     if(username.value == ""){
    //         username.style.border = "1px solid red";
    //         username_error.textContent = "Yêu cầu tài khoản";
    //         username.focus();
    //         return false;
    //     }
    //     if(password.value == ""){
    //         password.style.border = "1px solid red";
    //         password_error.textContent = "Yêu cầu mật khẩu";
    //         password.focus();
    //         return false;
    //     }
    //     if(password2.value != password.value){
    //         password2.style.border = "1px solid red";
    //         password2_error.textContent = "Yêu cầu nhập lại mật khẩu";
    //         password2.focus();
    //         return false;
    //     }
    // }
    //
    // function fNameVerify(){
    //     if(fname.value != ""){
    //         fname.style.border = "1px solid #5E6E66";
    //         f_name_error.innerHTML = "";
    //         return true;
    //     }
    // }
    //
    // function addressVerify(){
    //     if(address.value != ""){
    //         address.style.border = "1px solid #5E6E66";
    //         address_error.innerHTML = "";
    //         return true;
    //     }
    // }
    //
    // function phoneVerify(){
    //     if(phone.value != ""){
    //         lname.style.border = "1px solid #5E6E66";
    //         l_name_error.innerHTML = "";
    //         return true;
    //     }
    // }
    //
    // function emailVerify(){
    //     if(email.value != ""){
    //         lname.style.border = "1px solid #5E6E66";
    //         l_name_error.innerHTML = "";
    //         return true;
    //     }
    // }


</script>
</body>
</html>
