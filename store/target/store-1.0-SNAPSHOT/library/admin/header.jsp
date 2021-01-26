<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<header class="main-header " id="header">
    <nav class="navbar navbar-static-top navbar-expand-lg">
        <!-- Sidebar toggle button -->
        <button id="sidebar-toggler" class="sidebar-toggle">
            <span class="sr-only">Toggle navigation</span>
        </button>
        <!-- search form -->
        <div class="search-form d-none d-lg-inline-block">
            <div class="input-group">
                <button type="button" name="search" id="search-btn" class="btn btn-flat">
                    <i class="mdi mdi-magnify"></i>
                </button>
                <input type="text" name="query" id="search-input" class="form-control"
                       placeholder="" autofocus autocomplete="off" />
            </div>
            <div id="search-results-container">
                <ul id="search-results"></ul>
            </div>
        </div>

        <div class="navbar-right ">
            <ul class="nav navbar-nav">
                <!-- Github Link Button -->

                <li class="dropdown notifications-menu">
                    <button class="dropdown-toggle" data-toggle="dropdown">
                        <i class="mdi mdi-bell-outline"></i>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="dropdown-header">Bạn có 5 thông báo mới</li>
                        <li>
                            <a href="#">
                                <i class="mdi mdi-account-plus"></i> Người dùng mới đăng ký
                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10
                        AM</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="mdi mdi-account-remove"></i> Người dùng xóa
                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 07
                        AM</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="mdi mdi-chart-areaspline"></i> Bản báo cáo đã chuẩn bị
                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 12
                        PM</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="mdi mdi-account-supervisor"></i> Khách hàng mới
                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 10
                        AM</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="mdi mdi-server-network-off"></i> Hệ thống quá tải
                                <span class=" font-size-12 d-inline-block float-right"><i class="mdi mdi-clock-outline"></i> 05
                        AM</span>
                            </a>
                        </li>
                        <li class="dropdown-footer">
                            <a class="text-center" href="#"> Đọc hết </a>
                        </li>
                    </ul>
                </li>
                <!-- User Account -->
                <li class="dropdown user-menu">
                    <button href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                        <img src="assets/img/user/user.png" class="user-image" alt="User Image" />
                        <span class="d-none d-lg-inline-block">Anh Kiệt</span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <!-- User image -->
                        <li class="dropdown-header">
                            <img src="assets/img/user/user.png" class="img-circle" alt="User Image" />
                            <div class="d-inline-block">
                                Anh Kiệt <small class="pt-1">anhkiet@gmail.com</small>
                            </div>
                        </li>

                        <li>
                            <a href="admin-profile.html">
                                <i class="mdi mdi-account"></i> Thông tin
                            </a>
                        </li>
                        <li>
                            <a href="email-inbox.html">
                                <i class="mdi mdi-email"></i> Tin nhắn
                            </a>
                        </li>
                        <li>
                            <a href="#"> <i class="mdi mdi-diamond-stone"></i> Dự án </a>
                        </li>
                        <li>
                            <a href="#"> <i class="mdi mdi-settings"></i> Thay đổi thông tin </a>
                        </li>

                        <li class="dropdown-footer">
                            <a href="signin.html"> <i class="mdi mdi-logout"></i> Đăng xuất </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>


</header>