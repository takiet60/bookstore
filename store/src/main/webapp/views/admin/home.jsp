<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<style>
    table {
        border-collapse: collapse;
        border-spacing: 0;
        width: 100%;
        border: 1px solid #ddd;
    }

    th, td {
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even){background-color: #f2f2f2}
</style>
<div class="content">
    <table style="overflow-x: auto;">
        <thead>
        <tr>
            <th>
                <label>Sắp xếp theo</label>
                <select name="sortName" id="sortName2" class="shot__byselect">
                    <option value="id">Mã đơn hàng</option>
                    <option value="cusId">Mã khách hàng</option>
                    <option value="finalPrice">Giá trị</option>
                    <option value="createTime">Ngày đặt hàng</option>
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
            </th>
        </tr>
        </thead>
    </table>
    <form action="<c:url value="/admin-home"/>" id="formSubmit" method="get">
    <div style="overflow-x:auto;">
        <table>

            <tr>
                <th>Mã đơn hàng</th>
                <th>Mã khách hàng</th>
                <th>Tổng số tiền</th>
                <th>Mã giảm giá</th>
                <th>Thành tiền</th>
                <th>Tình trạng</th>
                <th>Ngày nhận đơn</th>
                <th>Ngày giao</th>
                <th>Dịch vụ</th>
            </tr>
            <c:forEach items="${model.listResult}" var="item">
                <td>${item.id}</td>
                <td>${item.cusId}</td>
                <td>${item.total}</td>
                <td>${item.discountCode}</td>
                <td>${item.finalPrice}</td>
                <td>${item.status}</td>
                <td>${item.createTime}</td>
                <td>${item.finishTime}</td>
                <td>
                    <c:url var="editURL" value="/admin-detail-order">
                        <c:param name="id" value="${item.id}"/>
                    </c:url>
                    <a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
                        href="${editURL}"
                    >
                        Xem chi tiết
                    </a>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
        <br>
        <ul class="pagination" id="pagination"></ul>
        <input type="hidden" value="" id="page" name="page"/>
        <input type="hidden" value="" id="maxPageItem" name="maxPageItem"/>
        <input type="hidden" value="" id="sortName" name="sortName"/>
        <input type="hidden" value="" id="sortBy" name="sortBy"/>
        <input type="hidden" value="list" id="type" name="type"/>
    </form>
</div>

<script type="text/javascript">

    $('#btnFilter').click(function (){
        let sortName1 = $('#sortName2').val();
        let sortBy1 = $('#sortBy2').val();
        let page = ${model.page};
        let totalPage = ${model.totalPage};
        $('#maxPageItem').val(15);
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
                    if(currentPage != page){
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
