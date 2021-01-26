<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/library/taglib.jsp"%>
<!-- Sidebar -->
<aside class="left-sidebar bg-sidebar">
    <div id="sidebar" class="sidebar sidebar-with-footer">
        <!-- Aplication Brand -->
        <div class="app-brand">
            <a href="/index.html">
                <svg class="brand-icon" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid" width="30"
                     height="33" viewBox="0 0 30 33">
                    <g fill="none" fill-rule="evenodd">
                        <path class="logo-fill-blue" fill="#7DBCFF" d="M0 4v25l8 4V0zM22 4v25l8 4V0z" />
                        <path class="logo-fill-white" fill="#FFF" d="M11 4v25l8 4V0z" />
                    </g>
                </svg>
                <span class="brand-name">Trang admin</span>
            </a>
        </div>
        <!-- begin sidebar scrollbar -->
        <div class="sidebar-scrollbar">

            <!-- sidebar menu -->
            <ul class="nav sidebar-inner" id="sidebar-menu">
                <li class="has-sub active expand">
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#dashboard"
                       aria-expanded="false" aria-controls="dashboard">
                        <i class="mdi mdi-view-dashboard-outline"></i>
                        <span class="nav-text">Chính</span> <b class="caret"></b>
                    </a>
                    <ul class="collapse show" id="dashboard" data-parent="#sidebar-menu">
                        <div class="sub-menu">
                            <li class="active">
                                <a class="sidenav-item-link" href="<c:url value="/admin-home"/> ">
                                    <span class="nav-text">Trang chủ</span>
                                </a>
                            </li>
                            <li>
                                <a class="sidenav-item-link" href="<c:url value="/admin-list-blog?type=list&page=1&maxPageItem=10&sortName=title&sortBy=desc"/>">
                                    <span class="nav-text">Danh sách bài viết</span>
                                </a>
                            </li>
                            <li>
                                <a class="sidenav-item-link" href="<c:url value="/admin-add-blog"/>">
                                    <span class="nav-text">Thêm bài viết</span>
                                </a>
                            </li>
                        </div>
                    </ul>
                </li>
                <li class="has-sub">
                    <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#ui-elements"
                       aria-expanded="false" aria-controls="ui-elements">
                        <i class="mdi mdi-folder-multiple-outline"></i>
                        <span class="nav-text">Dịch vụ</span> <b class="caret"></b>
                    </a>
                    <ul class="collapse" id="ui-elements" data-parent="#sidebar-menu">
                        <div class="sub-menu">
                            <li class="has-sub active expand">
                                <a class="sidenav-item-link" href="javascript:void(0)" data-toggle="collapse" data-target="#forms"
                                   aria-expanded="false" aria-controls="forms">
                                    <span class="nav-text">Sản phẩm - Người dùng</span> <b class="caret"></b>
                                </a>
                                <ul class="collapse show" id="forms">
                                    <div class="sub-menu">
                                        <li class="active">
                                            <a href="<c:url value="/admin-add-product"/> ">Thêm sản phẩm</a>
                                        </li>

                                        <li>
                                            <a href="<c:url value="/admin-list-product?type=list&page=1&maxPageItem=10&sortName=name&sortBy=desc"/>">Danh sách sản phẩm</a>
                                        </li>

                                        <li>
                                            <a href="<c:url value="/admin-manage-user?type=list&page=1&maxPageItem=10&sortName=name&sortBy=desc" />">Thông tin người dùng </a>
                                        </li>


                                    </div>
                                </ul>
                            </li>
                        </div>
                    </ul>

                </li>
            </ul>
        </div>
        <hr class="separator" />

        <div class="sidebar-footer">
            <div class="sidebar-footer-content">
                <h6 class="text-uppercase">
                    Cpu sử dụng <span class="float-right">40%</span>
                </h6>
                <div class="progress progress-xs">
                    <div class="progress-bar active" style="width: 40%;" role="progressbar"></div>
                </div>
                <h6 class="text-uppercase">
                    Memory sử dụng <span class="float-right">65%</span>
                </h6>
                <div class="progress progress-xs">
                    <div class="progress-bar progress-bar-warning" style="width: 65%;" role="progressbar"></div>
                </div>
            </div>
        </div>
    </div>
</aside>