<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm sản phẩm</title>


    <script src="<c:url value="/template/paging/jquery.twbsPagination.js"/>" type="text/javascript"></script>
</head>
<body>
<div class="content">
    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>
                    <label>Sắp xếp theo</label>
                    <select name="sortName" id="sortName2" class="shot__byselect">
                        <option value="id">Mã người dùng</option>
                        <option value="name">Họ và tên</option>
                    </select>
                </th>
                <th>
                    <label>Sắp xếp theo thứ tự</label>
                    <select name="sortName" id="sortBy2" class="shot__byselect">
                        <option value="asc">Tăng dần</option>
                        <option value="desc">Giảm dần</option>
                    </select>
                </th>
                <th>
                    <button class="btn btn-primary" type="submit" id="btnFilter" >Lọc</button>
            </tr>

            </thead>
        </table>
    </div>
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
                            <th>Mã người dùng</th>
                            <th>Họ và tên</th>
                            <th>Số điện thoại</th>
                            <th>Email</th>
                            <th>Quyền hạn</th>
                            <th>Thao tác</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${model.listResult}" var="item" >
                            <tr>
                                <td>${item.id}</td>
                                <td>${item.name}</td>
                                <td>${item.phone}</td>
                                <td>${item.email}</td>
                                <td>${item.roleModel.name}</td>
                                <td>
                                    <c:url var="editURL" value="/admin-history">
                                        <c:param name="id" value="${item.id}"/>
                                    </c:url>
                                    <a class="btn btn-sm btn-primary btn-edit" href="${editURL}"
                                    >
                                        Lịch sử hoạt động
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                    </a>
                                </td>
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
