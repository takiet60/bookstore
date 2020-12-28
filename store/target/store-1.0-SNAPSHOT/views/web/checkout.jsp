
<%@ page import="com.project.store.model.CartModel" %>
<%@ page import="com.project.store.model.ItemModel" %>
<%@ page import="java.util.Collection" %>
<%@ page import="com.project.store.model.UserModel" %>
<%@include file="/library/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thanh toán</title>
</head>
<body>
<section class="wn__checkout__area section-padding--lg bg__white">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="wn_checkout_wrap">
                    <div class="checkout_info">
                        <span>Trở thành thành viên ?</span>
                        <a class="showlogin" href="#">Nhấn vào đây để đăng nhập</a>
                    </div>
                    <div class="checkout_login">
                        <form class="wn__checkout__form" action="#">
                            <p>Nếu bạn đã giao dịch với chúng tôi hãy nhập thông tin bên dưới. Nếu đây là lần đầu hãy điền thông tin của bạn để thanh toán</p>
                            <div class="input__box">
                                <label>Tài khoản <span>*</span></label>
                                <input type="text">
                            </div>

                            <div class="input__box">
                                <label>Mật khẩu <span>*</span></label>
                                <input type="password">
                            </div>
                            <div class="form__btn">
                                <button>Đăng nhập</button>
                                <label class="label-for-checkbox">
                                    <input id="rememberme" name="rememberme" value="forever" type="checkbox">
                                    <span>Nhớ tài khoản</span>
                                </label>
                                <a href="#">Quên mật khẩu?</a>
                            </div>
                        </form>
                    </div>
                    <div class="checkout_info">
                        <span>Bạn có mã giảm giá? </span>
                        <a class="showcoupon" href="#">Nhấn vào đây là nhập mã giảm giá</a>
                    </div>
                    <div class="checkout_coupon">
                        <form action="#">
                            <div class="form__coupon">
                                <input type="text" placeholder="Coupon code">
                                <button>Áp dụng mã giảm giá </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-12">
                <div class="customer_details">
                    <%
                        UserModel user =(UserModel) session.getAttribute("user");
                        request.setAttribute("user", user);

                    %>
                    <h3>Thông tin khách hàng</h3>
                    <div class="customar__field">
                        <div class="margin_between">
                            <div class="input_box space_between">
                                <label>Họ và Tên<span>*</span></label>
                                <input type="text" placeholder="${user.name}">
                            </div>
                        </div>
                        <div class="input_box">
                            <label>Hình thức thanh toán<span>*</span></label>
                            <select class="select__option">
                                <option>Chọn hình thức thanh toán…</option>
                                <option>Giao tiền trực tiếp</option>
                                <option>Qua ZaloPay</option>
                                <option>Qua Paypal</option>
                                <option>Qua ATM</option>
                            </select>
                        </div>
                        <div class="input_box">
                            <label>Địa chỉ <span>*</span></label>
                            <input type="text" placeholder="${user.address}">
                        </div>
                        <div class="margin_between">
                            <div class="input_box space_between">
                                <label>Số điện thoại <span>*</span></label>
                                <input type="text" placeholder="${user.phone}">
                            </div>

                            <div class="input_box space_between">
                                <label>Email <span>*</span></label>
                                <input type="email" placeholder="${user.email}">
                            </div>
                        </div>
                    </div>
                    <div class="create__account">
                        <div class="wn__accountbox">
                            <input class="input-checkbox" name="createaccount" value="1" type="checkbox">
                            <span>Tạo tài khoản ?</span>
                        </div>
                        <div class="account__field">
                            <form action="#">
                                <label>Mật khẩu <span>*</span></label>
                                <input type="text" placeholder="password">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="customer_details mt--20">
                    <div class="differt__address">
                        <input name="ship_to_different_address" value="1" type="checkbox">
                        <span>Gửi tới địa chỉ khác ?</span>
                    </div>
                    <div class="customar__field differt__form mt--40">
                        <div class="margin_between">
                            <div class="input_box space_between">
                                <label>Họ <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="input_box space_between">
                                <label>Tên <span>*</span></label>
                                <input type="text">
                            </div>
                        </div>
                        <div class="input_box">
                            <label>Hình thức thanh toán<span>*</span></label>
                            <select class="select__option">
                                <option>Chọn hình thức thanh toán…</option>
                                <option>Giao tiền trực tiếp</option>
                                <option>Qua ZaloPay</option>
                                <option>Qua Paypal</option>
                                <option>Qua ATM</option>
                            </select>
                        </div>
                        <div class="input_box">
                            <label>Địa chỉ <span>*</span></label>
                            <input type="text" placeholder="Số nhà">
                        </div>
                        <div class="input_box">
                            <input type="text" placeholder="Phường">
                        </div>
                        <div class="input_box">
                            <input type="text" placeholder="Xã">
                        </div>
                        <div class="input_box">
                            <label>Thành phố<span>*</span></label>
                            <select class="select__option">
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
                        <div class="margin_between">
                            <div class="input_box space_between">
                                <label>Số điện thoại <span>*</span></label>
                                <input type="text">
                            </div>
                            <div class="input_box space_between">
                                <label>Email <span>*</span></label>
                                <input type="email">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
                CartModel cart = CartModel.getCart(session);
                Collection<ItemModel> data = cart.getCart();
                long total = cart.total();
                request.setAttribute("data", data);
            %>
            <div class="col-lg-6 col-12 md-mt-40 sm-mt-40">
                <div class="wn__order__box">
                    <h3 class="onder__title">Đơn hàng của bạn</h3>
                    <ul class="order__total">
                        <li>Sản phẩm</li>
                        <li>Tổng</li>
                    </ul>
                    <ul class="order_product">
                        <c:forEach items="${data}" var="d">
                        <li>${d.productModel.name} × ${d.quantity}<span>${d.productModel.value * d.quantity}₫</span></li>
                        </c:forEach>
                    </ul>
                    <ul class="shipping__method">

                        <li>Tạm tính <span></span></li>
                        <li>Phí vận chuyển
                            <ul>
                                <li>
                                    <input name="shipping_method[0]" data-index="0" value="legacy_flat_rate" checked="checked" type="radio">
                                    <label>Giao thường:5000₫  </label>
                                </li>
                                <li>
                                    <input name="shipping_method[0]" data-index="0" value="legacy_flat_rate" checked="checked" type="radio">
                                    <label>Giao nhanh: 25000₫ </label>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="total__amount">
                        <li>Tổng giá trị <span>${total + 5000} ₫ </span></li>
                    </ul>
                    <button type="submit" class="pay">Thanh toán</button>
                </div>
                <div id="accordion" class="checkout_accordion mt--30" role="tablist">
                    <div class="payment">
                        <div class="che__header" role="tab" id="headingOne">
                            <a class="checkout__title" data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <span>Thanh toán qua ngân hàng</span>
                            </a>
                        </div>
                        <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                            <div class="payment-body">Lựa chọn hình thức thanh toán qua ngân hàng</div>
                        </div>
                    </div>
                    <!-- <div class="payment">
                        <div class="che__header" role="tab" id="headingTwo">
                            <a class="collapsed checkout__title" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <span>Cheque Payment</span>
                              </a>
                        </div>
                        <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                            <div class="payment-body">Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</div>
                        </div>
                    </div>
                    <div class="payment">
                        <div class="che__header" role="tab" id="headingThree">
                            <a class="collapsed checkout__title" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <span>Cash on Delivery</span>
                              </a>
                        </div>
                        <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                            <div class="payment-body">Pay with cash upon delivery.</div>
                        </div>
                    </div> -->
                    <div class="payment">
                        <div class="che__header" role="tab" id="headingFour">
                            <a class="collapsed checkout__title" data-toggle="collapse" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                <span>PayPal <img src="images/icons/payment.png" alt="payment images"> </span>
                            </a>
                        </div>
                        <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordion">
                            <div class="payment-body">Thanh toán qua các thẻ tín dụng</div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
</body>
</html>
