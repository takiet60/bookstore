<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<header id="wn__header" class="header__area header__absolute sticky__header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                <div class="logo">
                    <a href="index.html">
                        <img src="images/logo/logo.png" alt="logo images">
                    </a>
                </div>
            </div>
            <div class="col-lg-8 d-none d-lg-block">
                <nav class="mainmenu__nav">
                    <ul class="meninmenu d-flex justify-content-start">
                        <li class="drop with--one--item"><a href="index.html">Trang chủ</a>

                        </li>
                        <li class="drop"><a href="#">Shop</a>
                            <div class="megamenu mega03">
                                <!--  -->
                                <ul class="item item03">
                                    <li class="title">Trang bán hàng</li>
                                    <li><a href="cart.html">Giỏ hàng</a></li>
                                    <li><a href="wishlist.html">Danh sách yêu thích</a></li>
                                    <li><a href="faq.html">Câu hỏi nhanh</a></li>
                                </ul>
                                <ul class="item item03">
                                    <li class="title">Thể loại đang hot</li>
                                    <li><a href="shop-grid.html">Bestsellers</a></li>
                                    <li><a href="shop-grid.html">Hoạt động của trẻ em</a></li>
                                    <li><a href="shop-grid.html">B&N Classics</a></li>
                                    <li><a href="shop-grid.html">Sách dưới 50000Vnd</a></li>
                                    <li><a href="shop-grid.html">Sách kinh điển</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="drop"><a href="shop-grid.html">Sách</a>
                            <div class="megamenu mega03">
                                <ul class="item item03">
                                    <li class="title">Thể loại</li>
                                    <li><a href="shop-grid.html">Kỹ năng sống</a></li>
                                    <li><a href="shop-grid.html">Kinh doanh </a></li>
                                    <li><a href="shop-grid.html">Khoa học </a></li>
                                    <li><a href="shop-grid.html">Học ngoại ngữ</a></li>
                                    <li><a href="shop-grid.html">Tác phẩm kinh điển </a></li>
                                </ul>
                                <ul class="item item03">
                                    <li class="title">Khách hàng ưa thích</li>
                                    <li><a href="shop-grid.html">Bí ẩn</a></li>
                                    <li><a href="shop-grid.html">Tôn giáo và tín ngưỡng</a></li>
                                    <li><a href="shop-grid.html">Lãng mạn</a></li>
                                    <li><a href="shop-grid.html">Phiêu lưu</a></li>
                                    <li><a href="shop-grid.html">Kinh dị</a></li>
                                </ul>
                                <ul class="item item03">
                                    <li class="title">Bộ sưu tập</li>
                                    <li><a href="shop-grid.html">Khoa học </a></li>
                                    <li><a href="shop-grid.html">Tác phẩm kinh điển</a></li>
                                    <li><a href="shop-grid.html">Kỹ năng sống</a></li>
                                    <li><a href="shop-grid.html">Tình yêu</a></li>
                                    <li><a href="shop-grid.html">Hài hước</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="drop"><a href="shop-grid.html">Trẻ em</a>
                            <div class="megamenu mega02">
                                <ul class="item item02">
                                    <li class="title">Bộ sưu tập hot</li>
                                    <li><a href="shop-grid.html">American Girl</a></li>
                                    <li><a href="shop-grid.html">Diary Wimpy Kid</a></li>
                                    <li><a href="shop-grid.html">Finding Dory</a></li>
                                    <li><a href="shop-grid.html">Harry Potter</a></li>
                                    <li><a href="shop-grid.html">Land of Stories</a></li>
                                </ul>
                                <ul class="item item02">
                                    <li class="title">Nhiều hơn cho trẻ em</li>
                                    <li><a href="shop-grid.html">B&N Educators</a></li>
                                    <li><a href="shop-grid.html">B&N Kids' Club</a></li>
                                    <li><a href="shop-grid.html">Kids' Music</a></li>
                                    <li><a href="shop-grid.html">Toys & Games</a></li>
                                    <li><a href="shop-grid.html">Hoodies</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="drop"><a href="#">Trang</a>
                            <div class="megamenu dropdown">
                                <ul class="item item01">
                                    <li><a href="my-account.html">Đăng nhập</a></li>
                                    <li><a href="create-account.html">Tạo tài khoản</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="drop"><a href="blog.html">Blog</a>
                        </li>
                        <li><a href="contact.html">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-6 col-sm-6 col-6 col-lg-2">
                <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                    <li class="shop_search"><a class="search__active" href="#"></a></li>
                    <li class="wishlist"><a href="wishlist.html"></a></li>
                    <li class="shopcart"><a class="cartbox_active" href="#"><span class="product_qun">3</span></a>
                        <!-- Start Shopping Cart -->
                        <div class="block-minicart minicart__active">
                            <div class="minicart-content-wrapper">
                                <div class="micart__close">
                                    <span>Đóng</span>
                                </div>
                                <div class="items-total d-flex justify-content-between">
                                    <span>3 món hàng</span>
                                    <span>Tiền tạm tính</span>
                                </div>
                                <div class="total_amount text-right">
                                    <span>$66.00</span>
                                </div>
                                <div class="mini_action checkout">
                                    <a class="checkout__btn" href="cart.html">Thanh Toán</a>
                                </div>
                                <div class="single__items">
                                    <div class="miniproduct">
                                        <div class="item01 d-flex">
                                            <div class="thumb">
                                                <a href="product-details.html"><img src="images/product/sm-img/1.jpg" alt="product images"></a>
                                            </div>
                                            <div class="content">
                                                <h6><a href="product-details.html">Voyage Yoga Bag</a></h6>
                                                <span class="prize">$30.00</span>
                                                <div class="product_prize d-flex justify-content-between">
                                                    <span class="qun">Số lượng: 01</span>
                                                    <ul class="d-flex justify-content-end">
                                                        <li><a href="#"><i class="fas fa-cog"></i></a></li>
                                                        <li><a href="#"><i class="far fa-trash-alt"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item01 d-flex mt--20">
                                            <div class="thumb">
                                                <a href="product-details.html"><img src="images/product/sm-img/3.jpg" alt="product images"></a>
                                            </div>
                                            <div class="content">
                                                <h6><a href="product-details.html">Impulse Duffle</a></h6>
                                                <span class="prize">$40.00</span>
                                                <div class="product_prize d-flex justify-content-between">
                                                    <span class="qun">Số lượng: 03</span>
                                                    <ul class="d-flex justify-content-end">
                                                        <li><a href="#"><i class="fas fa-cog"></i></a></li>
                                                        <li><a href="#"><i class="far fa-trash-alt"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item01 d-flex mt--20">
                                            <div class="thumb">
                                                <a href="product-details.html"><img src="images/product/sm-img/2.jpg" alt="product images"></a>
                                            </div>
                                            <div class="content">
                                                <h6><a href="product-details.html">Compete Track Tote</a></h6>
                                                <span class="prize">$40.00</span>
                                                <div class="product_prize d-flex justify-content-between">
                                                    <span class="qun">Số lượng: 03</span>
                                                    <ul class="d-flex justify-content-end">
                                                        <li><a href="#"><i class="fas fa-cog"></i></a></li>
                                                        <li><a href="#"><i class="far fa-trash-alt"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="mini_action cart">
                                    <a class="cart__btn" href="cart.html">Xem và chỉnh sửa giỏ hàng</a>
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
                                        <span>Tiền tệ</span>
                                    </strong>
                                    <div class="switcher-options">
                                        <div class="switcher-currency-trigger">
                                            <span class="currency-trigger">USD - US Dollar</span>
                                            <ul class="switcher-dropdown">
                                                <li>VND - VietNam Dong</li>
                                                <li>EUR - Euro</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="switcher-currency">
                                    <strong class="label switcher-label">
                                        <span>Ngôn ngữ</span>
                                    </strong>
                                    <div class="switcher-options">
                                        <div class="switcher-currency-trigger">
                                            <span class="currency-trigger">English01</span>
                                            <ul class="switcher-dropdown">
                                                <li>English02</li>
                                                <li>English03</li>
                                                <li>English04</li>
                                                <li>English05</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="switcher-currency">
                                    <strong class="label switcher-label">
                                        <span>Tài khoản</span>
                                    </strong>
                                    <div class="switcher-options">
                                        <div class="switcher-currency-trigger">
                                            <div class="setting__menu">
                                                <span><a href="#">So sánh sản phẩm</a></span>
                                                <span><a href="cart.html">Giỏ hàng</a></span>
                                                <span><a href="wishlist.html">Yêu thích</a></span>
                                                <span><a href="my-account.html">Đăng nhập</a></span>
                                                <span><a href="<c:url value="/register"/> ">Tạo tài khoản</a></span>
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