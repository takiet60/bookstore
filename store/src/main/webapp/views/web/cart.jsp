<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 12/24/2020
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
                            <tr>
                                <td class="product-thumbnail"><a href="#"><img src="images/product/sm-3/1.jpg" alt="product img"></a></td>
                                <td class="product-name"><a href="#">Natoque penatibus</a></td>
                                <td class="product-price"><span class="amount">$165.00</span></td>
                                <td class="product-quantity"><input type="number" value="1"></td>
                                <td class="product-subtotal">$165.00</td>
                                <td class="product-remove"><a href="#">X</a></td>
                            </tr>
                            <tr>
                                <td class="product-thumbnail"><a href="#"><img src="images/product/sm-3/2.jpg" alt="product img"></a></td>
                                <td class="product-name"><a href="#">Quisque fringilla</a></td>
                                <td class="product-price"><span class="amount">$50.00</span></td>
                                <td class="product-quantity"><input type="number" value="1"></td>
                                <td class="product-subtotal">$50.00</td>
                                <td class="product-remove"><a href="#">X</a></td>
                            </tr>
                            <tr>
                                <td class="product-thumbnail"><a href="#"><img src="images/product/sm-3/3.jpg" alt="product img"></a></td>
                                <td class="product-name"><a href="#">Vestibulum suscipit</a></td>
                                <td class="product-price"><span class="amount">$50.00</span></td>
                                <td class="product-quantity"><input type="number" value="1"></td>
                                <td class="product-subtotal">$50.00</td>
                                <td class="product-remove"><a href="#">X</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="cartbox__btn">
                    <ul class="cart__btn__list d-flex flex-wrap flex-md-nowrap flex-lg-nowrap justify-content-between">
                        <li><a href="#">Mã giảm giá</a></li>
                        <li><a href="#">Áp dụng mã</a></li>
                        <li><a href="#">Cập nhật</a></li>
                        <li><a href="checkout.html">Thanh toán</a></li>
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
                            <li>$70</li>
                            <li>$70</li>
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
