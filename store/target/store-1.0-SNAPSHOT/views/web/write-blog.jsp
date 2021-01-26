<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<c:url var="APIurl" value="/admin-add-blog"/>
<c:url var="NewURL" value="/write-blog"/>
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
                        <h2 class="bradcaump-title">Viết bài</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Viết bài</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start My Account Area -->
    <!-- End Search Popup -->
    <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area bg-image--6">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">
                        <h2 class="bradcaump-title">Liên hệ</h2>
                        <nav class="bradcaump-content">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Liên hệ</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start Contact Area -->
    <section class="wn_contact_area bg--white pt--80">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div class="contact-form-wrap">
                        <h2 class="contact__title">Liên hệ với chúng tôi</h2>
                        <p>Hãy gửi những suy nghĩ của bạn cho chúng tôi. </p>
                        <form id="contact-form" action="mail.php" method="post">
                            <div class="single-contact-form space-between">
                                <input type="text" name="firstname" placeholder="Họ*">
                                <input type="text" name="lastname" placeholder="Tên*">
                            </div>
                            <div class="single-contact-form space-between">
                                <input type="email" name="email" placeholder="Email*">
                                <input type="text" name="website" placeholder="Website*">
                            </div>
                            <div class="single-contact-form">
                                <input type="text" name="subject" placeholder="Tiêu đề*">
                            </div>
                            <div class="single-contact-form message">
                                <textarea name="message" placeholder="Nhập nội dung.."></textarea>
                            </div>
                            <div class="contact-btn">
                                <button type="submit">Gửi</button>
                            </div>
                        </form>
                    </div>
                    <div class="form-output">
                        <p class="form-messege">
                    </div>
                </div>
                <div class="col-lg-4 col-12 md-mt-40 sm-mt-40">
                    <div class="wn__address">
                        <h2 class="contact__title">Thông tin của trang web</h2>
                        <p>Một dự án bán sách của HKT. </p>
                        <div class="wn__addres__wreapper">

                            <div class="single__address">
                                <i class="fas fa-map-marker-alt"></i>
                                <div class="content">
                                    <span>Địa chỉ:</span>
                                    <p>Đại học Nông Lâm thành phố Hồ Chí Minh</p>
                                </div>
                            </div>

                            <div class="single__address">
                                <i class="fas fa-phone"></i>
                                <div class="content">
                                    <span>Số điện thoại:</span>
                                    <p>0341121234</p>
                                </div>
                            </div>

                            <div class="single__address">
                                <i class="far fa-envelope"></i>
                                <div class="content">
                                    <span>Địa chỉ email:</span>
                                    <p>hktbookstore@gmail.com</p>
                                </div>
                            </div>

                            <div class="single__address">
                                <i class="fas fa-globe-africa"></i>
                                <div class="content">
                                    <span>Địa chỉ website:</span>
                                    <p>hktbookstore.com</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="google__map mt--80">
            <div id="googleMap"></div>
        </div>
    </section>
    <!-- End Contact Area -->
    <!-- Best Sale Area Area -->
    <!-- Footer Area -->
    <%@include file="/library/web/footer.jsp"%>
</div>
<%@include file="/library/web/script.jsp"%>
<script type="text/javascript">

    let editor = '';
    $(document).ready(function (){
        editor = CKEDITOR.replace('content');
    });
    $('#btnAdd').click(function(e){
        e.preventDefault();
        let data = {};
        let formData = $('#formAdd').serializeArray();
        $.each(formData, function(v, v){
            data["" + v.name +""] = v.value;
        });
        data['content'] = editor.getData();
        addNew(data)
    });
    function addNew(data){
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result){
                window.location.href = "${NewURL}?message=INSERT_SUCCES";
            },
            error: function (error){
                window.location.href = "${NewURL}?message=INSERT_SUCCESS";
            }
        });
    }

    function updateNew(data){
        $.ajax({
            url: '${APIurl}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result){
                console.log(result)
            },
            error: function (error){
                console.log(error)
            }
        });
    }

</script>
</body>

</html>