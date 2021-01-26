<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
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
    <%@include file="/library/web/header.jsp"%>
    <div class="page-blog bg--white section-padding--lg blog-sidebar right-sidebar">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-12">
                    <form>
                    <div class="blog-page">
                        <div class="page__header">
                            <h2>Bài viết</h2>
                        </div>
                        <!-- Start Single Post -->
                        <c:forEach items="${model.listResult}" var="item">
                        <article class="blog__post d-flex flex-wrap">
                            <div class="thumb">
                                <a href="<c:url value="/blog-detail?id=${item.id}"/> ">
                                    <img src="${item.thumbnail}" alt="blog images">
                                </a>
                            </div>
                            <div class="content">
                                <h4><a href="<c:url value="/blog-detail?id=${item.id}"/>">${item.title}</a></h4>
                                <ul class="post__meta">
                                    <li>Đăng bởi : <a href="#">${item.createdBy}</a></li>
                                    <li class="post_separator">/</li>
                                    <li>${item.createdDate}</li>
                                </ul>
                                <p>${item.sortDescription}</p>
                                <div class="blog__btn">
                                    <a class="shopbtn" href="<c:url value="/blog-detail?id=${item.id}"/>">đọc tiếp</a>
                                </div>
                            </div>
                        </article>
                        </c:forEach>
                    </div>
                        <ul class="pagination" id="pagination"></ul>
                        <input type="hidden" value="" id="page" name="page"/>
                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                        <input type="hidden" value="" id="sortName" name="sortName"/>
                        <input type="hidden" value="" id="sortBy" name="sortBy"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%@include file="/library/web/footer.jsp"%>
</div>
<!-- //Main wrapper -->

<!-- JS Files -->
<%@include file="/library/web/script.jsp"%>
<script type="text/javascript">
    var currentPage = ${model.page};
    var totalPages = ${model.totalPage};
    var sortName = "${model.sortName}";
    var sortBy = "${model.sortBy}";
    var limit = 5;
    jQuery(function($) {
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: totalPages,
                visiblePages: 10,
                startPage: currentPage,
                onPageClick: function (event, page) {
                    if (currentPage != page) {
                        $('#maxPageItem').val(limit);
                        $('#page').val(page);
                        $('#sortName').val(sortName);
                        $('#sortBy').val(sortBy);
                        $('#formSubmit').submit();
                    }

                }
            });
        });
    });
</script>
</body>

</html>