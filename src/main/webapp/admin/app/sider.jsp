<%--
  Created by IntelliJ IDEA.
  User: Phong
  Date: 5/17/2025
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="" class="brand-link">
    <img src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">AdminLTE 3</span>
  </a>

  <!-- Sidebar -->
  <div class="sidebar os-host os-theme-light os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-scrollbar-vertical-hidden os-host-transition" bis_skin_checked="1"><div class="os-resize-observer-host observed" bis_skin_checked="1"><div class="os-resize-observer" style="left: 0px; right: auto;" bis_skin_checked="1"></div></div><div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;" bis_skin_checked="1"><div class="os-resize-observer" bis_skin_checked="1"></div></div><div class="os-content-glue" style="margin: 0px -8px; width: 249px; height: 895px;" bis_skin_checked="1"></div><div class="os-padding" bis_skin_checked="1"><div class="os-viewport os-viewport-native-scrollbars-invisible" bis_skin_checked="1"><div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;" bis_skin_checked="1">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex" bis_skin_checked="1">
      <div class="image" bis_skin_checked="1">
        <img src="https://cdn.jsdelivr.net/gh/quangtuu2006/admin_lite@main/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
      </div>
      <div class="info" bis_skin_checked="1">
        <a href="#" class="d-block">112790175223186165176</a>
      </div>
    </div>

    <!-- SidebarSearch Form -->
    <div class="form-inline" bis_skin_checked="1">
      <div class="input-group" data-widget="sidebar-search" bis_skin_checked="1">
        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append" bis_skin_checked="1">
          <button class="btn btn-sidebar">
            <i class="fas fa-search fa-fw"></i>
          </button>
        </div>
      </div><div class="sidebar-search-results" bis_skin_checked="1"><div class="list-group" bis_skin_checked="1"><a href="#" class="list-group-item"><div class="search-title" bis_skin_checked="1"><strong class="text-light"></strong>N<strong class="text-light"></strong>o<strong class="text-light"></strong> <strong class="text-light"></strong>e<strong class="text-light"></strong>l<strong class="text-light"></strong>e<strong class="text-light"></strong>m<strong class="text-light"></strong>e<strong class="text-light"></strong>n<strong class="text-light"></strong>t<strong class="text-light"></strong> <strong class="text-light"></strong>f<strong class="text-light"></strong>o<strong class="text-light"></strong>u<strong class="text-light"></strong>n<strong class="text-light"></strong>d<strong class="text-light"></strong>!<strong class="text-light"></strong></div><div class="search-path" bis_skin_checked="1"></div></a></div></div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
        <!-- Add icons to the links using the .nav-icon class
     with font-awesome or any other icon font library -->
        <li class="nav-item">
          <a href="/demo_war_exploded/admin/home" class="nav-link">
            <i class="nav-icon fas fa-tachometer-alt"></i>
            <p>
              Trang Chu
            </p>
          </a>
        </li>
        <li class="nav-item">
          <a href="/demo_war_exploded/admin/users" class="nav-link">
            <i class="nav-icon fas fa-user-alt"></i>
            <p>
              Thành Viên
            </p>
          </a>
        </li>

        <li class="nav-header">DANH MỤC</li>
        <li class="nav-item">
          <a href="${pageContext.request.contextPath}/admin/category?action=list" class="nav-link">
            <p>Danh mục sản phẩm</p>
          </a>
        </li>
        <a href="${pageContext.request.contextPath}/view_product?action=admin" class="nav-link">
          <i class="nav-icon fas fa fa-tag"></i>
          <p>Sản phẩm</p>
        </a>
        <li class="nav-item">
          <a href="${pageContext.request.contextPath}/his_product?action=admin" class="nav-link">
            <i class="nav-icon fas fa-user-alt"></i>
            <p>Lịch sử mua hàng</p>
          </a>
        </li>

        <li class="nav-item">
        <a href="/admin/index" class="nav-link">
          <i class="nav-icon fas fa-user-alt"></i>
          <p>A
            Về Trang Chủ
          </p>
        </a>
      </li>

      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div></div></div><div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden" bis_skin_checked="1"><div class="os-scrollbar-track" bis_skin_checked="1"><div class="os-scrollbar-handle" bis_skin_checked="1" style="width: 100%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar os-scrollbar-vertical os-scrollbar-unusable os-scrollbar-auto-hidden" bis_skin_checked="1"><div class="os-scrollbar-track" bis_skin_checked="1"><div class="os-scrollbar-handle" bis_skin_checked="1" style="height: 100%; transform: translate(0px, 0px);"></div></div></div><div class="os-scrollbar-corner" bis_skin_checked="1"></div></div>
  <!-- /.sidebar -->
</aside>