<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<c:url var="APIurl" value="/search"/>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ</title>
    <%@include file="/library/web/link.jsp"%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="<c:url value="/template/paging/jquery.twbsPagination.js"/>" type="text/javascript"></script>
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">
    <!-- Header -->
    <%@include file="/library/web/header.jsp"%>>

    <div class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                        <aside class="wedget__categories poroduct--cat">
                            <h3 class="wedget__title">Thể loại</h3>
                            <ul>
                                <c:forEach items="${categoryList}" var="item">
                                <li><a href="<c:url value="/category?id=${item.id}&page=1&maxPageItem=10&sortName=name&sortBy=desc"/> ">${item.name}</a></li>
                                </c:forEach>
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
                            <img src="<c:url value="/template/web/images/others/banner_left.jpg"/>" alt="banner images">
                            <div class="text">
                                <h2>Sản phẩm mới</h2>
                                <h6>giảm giá lên đến <br> <strong>40%</strong></h6>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-lg-9 col-12 order-1 order-lg-2">

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
                                <div class="shop__list nav justify-content-center" role="tablist">
                                    <a class="nav-item nav-link active" data-toggle="tab" href="#nav-grid" role="tab"><i class="fa fa-th"></i></a>
                                </div>
                                <p>Kết quả</p>
                                <div class="orderby__wrapper">
                                    <span>Sắp xếp theo</span>
                                    <select name="sortName" id="sortName2" class="shot__byselect">
                                        <option value="name">Tên</option>
                                        <option value="value">Giá</option>
                                        <option value="production">Nhà xuất bản</option>
                                    </select>
                                </div>
                                <div class="orderby__wrapper">
                                    <span>Sắp xếp theo thứ tự</span>
                                    <select name="sortBy" id="sortBy2"  class="shot__byselect">
                                        <option value="asc">Tăng dần</option>
                                        <option value="desc">Giảm dần</option>
                                    </select>
                                </div>
                                <div class="orderby__wrapper">
                                    <button class="btn btn-primary" type="submit" id="btnFilter" >Lọc</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form action="<c:url value="/search"/>" id="formSubmit" method="get">
                    <div class="tab__container">
                        <div class="shop-grid tab-pane fade show active" id="nav-grid" role="tabpanel">
                            <div class="row">
                                <!-- Start Single Product -->
                                <c:forEach items="${model.listResult}" var="d">
                                    <div class="col-lg-4 col-md-4 col-sm-6 col-12">
                                        <div class="product">
                                            <div class="product__thumb">
                                                <a class="first__img" href="<c:url value = "detail?id=${d.id}"/>"><img src="${d.image1}" alt="product image"></a>
                                                    <%--                                        <a class="second__img animation1" href="single-product.html"><img src="images/product/2.jpg" alt="product image"></a>--%>
                                                <div class="new__box">
                                                    <span class="new-label">Hot</span>
                                                </div>
                                                <ul class="prize position__right__bottom d-flex">
                                                    <li>${d.value}₫</li>
                                                    <li class="old_prize">${d.cost - d.value}₫</li>
                                                </ul>
                                                <div class="action">
                                                    <div class="actions_inner">
                                                        <ul class="add_to_links">
                                                            <li><a class="cart" href="<c:url value="cart/add?id=${d.id}" />"></a></li>
                                                            <li ><a class="wishlist" title="Add to wishlist" href="<c:url value = "wishlist/add?id=${p.id}"/>"><i class="fas fa-heart"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product__content">
                                                <h4><a href="<c:url value = "detail?id=${d.id}"/>">${d.name}</a></h4>
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
                                </c:forEach>
                            </div>
                            <ul class="pagination" id="pagination"></ul>
                            <input type="hidden" value="${search}" name="search"/>
                            <input type="hidden" value="" id="page1" name="page"/>
                            <input type="hidden" value="" id="maxPageItem1" name="maxPageItem"/>
                            <input type="hidden" value="" id="sortName1" name="sortName"/>
                            <input type="hidden" value="" id="sortBy1" name="sortBy"/>

                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Best Sale Area Area -->
    <!-- Footer Area -->
    <%@include file="/library/web/footer.jsp"%>
</div>
<!-- //Main wrapper -->

<!-- JS Files -->
<%@include file="/library/web/script.jsp"%>

<script type="text/javascript">

    $('#btnFilter').click(function (){
        let sortName1 = $('#sortName2').val();
        let sortBy1 = $('#sortBy2').val();
        let page = ${model.page};
        let totalPage = ${model.totalPage};
        $('#maxPageItem1').val(15);
        $('#page1').val(page);
        $('#sortName1').val(sortName1);
        $('#sortBy1').val(sortBy1);
        $('#formSubmit').submit();
    })


    var currentPage = ${model.page};
    var totalPages = ${model.totalPage};
    var sortName = "${model.sortName}";
    var sortBy = "${model.sortBy}";
    var limit = 15;
    jQuery(function($) {
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: totalPages,
                visiblePages: 10,
                startPage: currentPage,
                onPageClick: function (event, page) {
                    if (currentPage != page) {
                        $('#maxPageItem1').val(limit);
                        $('#page1').val(page);
                        $('#sortName1').val(sortName);
                        $('#sortBy1').val(sortBy);
                        $('#formSubmit').submit();
                    }

                }
            });
        });
    });

    $('#sortName2 option[value=${model.sortName}]').attr('selected','selected');
    $('#sortBy2 option[value=${model.sortBy}]').attr('selected','selected');
    <%--document.getElementById('#sortName2')["${model.sortName}"].setAttribute('selected','selected');--%>
    <%--document.getElementById('#sortBy2')["${model.sortBy}"].setAttribute('selected','selected');--%>
</script>

</body>

</html>