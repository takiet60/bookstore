<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chi tiết đơn hàng</title>
</head>
<body>

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
        <div style="overflow-x:auto;">
            <table>
                <tr>
                    <th>Mã đơn hàng</th>
                    <th>Mã sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Mã giảm giá</th>
                    <th>Thành tiền</th>
                </tr>
                <c:forEach items="${list}" var="d">
                    <tr>
                        <td>${d.orderId}</td>
                        <td>${d.productId}</td>
                        <td>${d.quantity}</td>
                        <td>${d.discountCode}</td>
                        <td>${d.value}</td>
                    </tr>

                </c:forEach>
            </table>
        </div>

</div>
</body>
</html>

</script>
