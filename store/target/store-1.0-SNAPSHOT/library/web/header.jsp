<%@ page import="com.project.store.model.UserModel" %>
<%@ page import="com.project.store.model.CartModel" %>
<%@ page import="java.util.Collection" %>
<%@ page import="com.project.store.model.ItemModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>

<header id="wn__header" class="header__area header__absolute sticky__header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                <div class="logo">
                    <a href="<c:url value="/home"/>">
                        <img src="<c:url value="/template/web/images/logo/logo.png" />" alt="logo images">
                    </a>
                </div>
            </div>
            <div class="col-lg-8 d-none d-lg-block">
                <nav class="mainmenu__nav">
                    <ul class="meninmenu d-flex justify-content-start">
                        <li class="drop with--one--item"><a href="<c:url value="/home"/>">Trang chủ</a>
                        </li>
                        <li class="drop with--one--item"><a href="<c:url value="/blog?type=list&page=1&maxPageItem=10&sortName=title&sortBy=desc"/>">Blog</a>
                        </li>
                        <li class="drop with--one--item"><a href="<c:url value="/cart"/>">Giỏ hàng</a>
                        </li>
                        <li class="drop with--one--item"><a href="<c:url value="/wishlist"/>">Yêu thích</a>
                        </li>
                        <c:if test="${not empty USERMODEL}">
                            <li class="drop with--one--item"><a href="<c:url value="/logout"/>">Đăng xuất</a>
                            </li>
                        </c:if>
                        <c:if test="${empty USERMODEL}">
                            <li class="drop with--one--item"><a href="<c:url value="/login"/>">Đăng nhập</a>
                            </li>
                            <li class="drop with--one--item"><a href="<c:url value="/register"/>">Đăng ký</a>
                            </li>
                        </c:if>

                        <li><a href="<c:url value="/contact"/>">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                    <li class="shop_search"><a class="search__active" href="#"></a></li>
                    <li class="wishlist"><a href="<c:url value="wishlist"></c:url> "></a></li>
                    <li class="shopcart"><a class="cartbox_active" href="#"><span class="product_qun">${totalQuantity}</span></a>
                        <!-- Start Shopping Cart -->

                        <div class="block-minicart minicart__active">
                            <div class="minicart-content-wrapper">
                                <div class="micart__close">
                                    <span>Đóng</span>
                                </div>
                                <div class="items-total d-flex justify-content-between">
                                    <span>${totalQuantity} món hàng</span>
                                    <span>Tiền tạm tính</span>
                                </div>
                                <div class="total_amount text-right">
                                    <span>${total}₫</span>
                                </div>
                                <div class="mini_action checkout">
                                    <a class="checkout__btn" href="<c:url value="checkout"/>">Thanh Toán</a>
                                </div>
                                <div class="single__items">
                                    <div class="miniproduct">
                                        <c:forEach items="${data}" var="d">
                                            <div class="item01 d-flex mt--20">
                                                <div class="thumb">
                                                    <a href="product-details.html"><img src="${d.productModel.image1}" alt="product images"></a>
                                                </div>
                                                <div class="content">
                                                    <h6><a href="product-details.html">${d.productModel.name}</a></h6>
                                                    <span class="prize">${d.productModel.value}₫</span>
                                                    <div class="product_prize d-flex justify-content-between">
                                                        <span class="qun">Số lượng: ${d.quantity}</span>
                                                        <ul class="d-flex justify-content-end">
                                                            <li><a href="<c:url value="cart" />"><i class="fas fa-cog"></i></a></li>
                                                            <li><a href="<c:url value="cart/remove?id=${d.productModel.id}" />"><i class="far fa-trash-alt"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>


                                    </div>
                                </div>
                                <div class="mini_action cart">
                                    <a class="cart__btn" href="<c:url value="cart" />">Xem và chỉnh sửa giỏ hàng</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Shopping Cart -->
                    </li>
                    <li class="setting__bar__icon"><a class="setting__active" href="#"></a>
                        <div class="searchbar__content setting__block">
                            <div class="content-inner">
                                <div class="switcher-currency">
                                    <strong class="label switcher-label">
                                        <span>
                                            <%
                                                UserModel user =(UserModel) session.getAttribute("USERMODEL");
                                                if(user != null){
                                                    out.print("Xin chào " + user.getName());
                                                }else{
                                                    out.print("Tài khoản");
                                                }
                                            %>
                                        </span>
                                    </strong>
                                    <div class="switcher-options">
                                        <div class="switcher-currency-trigger">
                                            <div class="setting__menu">
                                                <span><a href="<c:url value="/cart"/>">Giỏ hàng</a></span>
                                                <span><a href="<c:url value="/wishlist"/>">Yêu thích</a></span>
                                                <c:if test="${empty USERMODEL}">
                                                    <span><a href="<c:url value="/login"/> ">
                                                    Đăng nhập
                                                   </a>
                                                </span>
                                                    <span><a href="<c:url value="/register"/> ">
                                                    Đăng ký
                                                </a></span>
                                                </c:if>
                                                <c:if test="${not empty USERMODEL}">
                                                    <span><a href="<c:url value="/info"/> ">
                                                    Thông tin khách hàng
                                                    </a>
                                                </span>
                                                    <span><a href="<c:url value="/change-password"/> ">
                                                    Thay đổi mật khẩu
                                                    </a>
                                                </span>
                                                    <span><a href="<c:url value="/logout"/> ">
                                                    Đăng xuất
                                                    </a>
                                                </span>
                                                </c:if>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- Start Mobile Menu -->
        <div class="row d-none">
            <div class="col-lg-12 d-none">
                <nav class="mobilemenu__nav">
                    <ul class="meninmenu">
                        <li><a href="index.html">Home</a>
                            <ul>
                                <li><a href="index.html">Home Style Default</a></li>
                                <li><a href="index-2.html">Home Style Two</a></li>
                                <li><a href="index-box.html">Home Box Style</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Pages</a>
                            <ul>
                                <li><a href="about.html">About Page</a></li>
                                <li><a href="portfolio.html">Portfolio</a>
                                    <ul>
                                        <li><a href="portfolio.html">Portfolio</a></li>
                                        <li><a href="portfolio-three-column.html">Portfolio 3 Column</a></li>
                                        <li><a href="portfolio-details.html">Portfolio Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="my-account.html">My Account</a></li>
                                <li><a href="cart.html">Cart Page</a></li>
                                <li><a href="checkout.html">Checkout Page</a></li>
                                <li><a href="wishlist.html">Wishlist Page</a></li>
                                <li><a href="error404.html">404 Page</a></li>
                                <li><a href="faq.html">Faq Page</a></li>
                                <li><a href="team.html">Team Page</a></li>
                            </ul>
                        </li>
                        <li><a href="shop-grid.html">Shop</a>
                            <ul>
                                <li><a href="shop-grid.html">Shop Grid</a></li>
                                <li><a href="shop-list.html">Shop List</a></li>
                                <li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
                                <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                <li><a href="shop-no-sidebar.html">Shop No sidebar</a></li>
                                <li><a href="single-product.html">Single Product</a></li>
                            </ul>
                        </li>
                        <li><a href="blog.html">Blog</a>
                            <ul>
                                <li><a href="blog.html">Blog Page</a></li>
                                <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                <li><a href="blog-no-sidebar.html">Blog No Sidebar</a></li>
                                <li><a href="blog-details.html">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- End Mobile Menu -->
        <div class="mobile-menu d-block d-lg-none">
        </div>
        <!-- Mobile Menu -->
    </div>
</header>
<div class="brown--color box-search-content search_active block-bg close__top">
    <form id="search_mini_form" class="minisearch" action="<c:url value="/search"/>" method="get">
        <div class="field__search">
            <input type="text" placeholder="Nhập sản phẩm muốn tìm kiếm" name="search">
            <input type="hidden" value="1" id="page" name="page"/>
            <input type="hidden" value="15" id="maxPageItem" name="maxPageItem"/>
            <input type="hidden" value="name" id="sortName" name="sortName"/>
            <input type="hidden" value="desc" id="sortBy" name="sortBy"/>
            <div class="action">
                <button type="submit"><i class="fas fa-search"></i></button>
            </div>
        </div>
    </form>
    <div class="close__wrap">
        <span>Đóng</span>
    </div>
</div>