<%@ page import="com.project.store.model.CartModel" %>
<%@ page import="com.project.store.model.ItemModel" %>
<%@ page import="java.util.Collection" %>
<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    CartModel cart = CartModel.getCart(session);
    Collection<ItemModel> data = cart.getCart();
    request.setAttribute("data", data);
%>
<div class="cart-main-area section-padding--lg bg--white">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 ol-lg-12">
                <form action="#">
                    <div class="table-content wnro__table table-responsive">
                        <table>

                            <thead>
                            <tr class="title-top">
                                <th class="product-thumbnail">Hình ảnh</th>
                                <th class="product-name">Sản phẩm</th>
                                <th class="product-price">Giá bán</th>
                                <th class="product-quantity">Số lượng</th>
                                <th class="product-subtotal">Tổng</th>
                                <th class="product-remove">Xóa</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${data}" var="d">
                            <tr>
                                <td class="product-thumbnail"><a href="#"><img src="${d.productModel.images}" alt="product img"></a></td>
                                <td class="product-name"><a href="#">${d.productModel.name}</a></td>
                                <td class="product-price"><span class="amount">${d.productModel.value}₫</span></td>
                                <td class="product-quantity"><input type="number" value="${d.quantity}"></td>
                                <td class="product-subtotal">${d.productModel.value * d.quantity}₫</td>
                                <td class="product-remove"><a href="#">X</a></td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="cartbox__btn">
                    <ul class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
                        <li><a href="#">Mã giảm giá</a></li>
                        <li><a href="#">Áp dụng mã</a></li>
                        <li><a href="#">Cập nhật</a></li>
                        <li><a href="<c:url value="checkout"/>">Thanh toán</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 offset-lg-6">
                <div class="cartbox__total__area">
                    <div class="cartbox-total d-flex justify-content-between">
                        <ul class="cart__total__list">
                            <li>Tạm tính</li>
                            <li>Tổng</li>
                        </ul>
                        <ul class="cart__total__tk">
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="cart__total__amount">
                        <span>Grand Total</span>
                        <span>$140</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
