<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm sản phẩm</title>


    <script src="<c:url value="/template/paging/jquery.twbsPagination.js"/>" type="text/javascript"></script>
</head>
<body>
<div class="content">

    <form action="<c:url value="/admin-manage-user"/> " method="get" id="formSubmit">
        <div class="row">
            <div class="col-lg-12 ">
                <c:if test="${not  empty message}">
                    <div class="alert alert-${alert}">
                            ${message}
                    </div>
                </c:if>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>Mã đơn hàng</th>
                            <th>Mã sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Mã giảm giá</th>
                            <th>Giá</th>
                            <th>Thời gian tạo</th>
                            <th>Thời gian giao</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${list}" var="item" >
                            <tr>
                                <td>${item.orderId}</td>
                                <td>${item.productId}</td>
                                <td>${item.quantity}</td>
                                <td>${item.discountCode}</td>
                                <td>${item.value}</td>
                                <td>${item.createTime}</td>
                                <td>${item.finishTime}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <ul class="pagination" id="pagination"></ul>
                    <input type="hidden" value="" id="page" name="page"/>
                    <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
                    <input type="hidden" value="" id="sortName" name="sortName"/>
                    <input type="hidden" value="" id="sortBy" name="sortBy"/>
                    <input type="hidden" value="list" id="type" name="type"/>
                </div>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">

    $('#btnFilter').click(function (){
        let sortName1 = $('#sortName2').val();
        let sortBy1 = $('#sortBy2').val();
        let page = ${model.page};
        let totalPage = ${model.totalPage};
        $('#maxPageItem').val(10);
        $('#page').val(page);
        $('#sortName').val(sortName1);
        $('#sortBy').val(sortBy1);
        $('#formSubmit').submit();
    })

    var currentPage = ${model.page};
    var totalPages = ${model.totalPage};
    var limit = 10;
    var sortName = "${model.sortName}";
    var sortBy = "${model.sortBy}";
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
    $('#sortName2 option[value=${model.sortName}]').attr('selected','selected');
    $('#sortBy2 option[value=${model.sortBy}]').attr('selected','selected');
</script>
</body>
</html>
