<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url value="/resources/" var="URL"></c:url>
<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__wobble" src="/resources/z3955099459254_2ccf7ca1feba48d0591dc18cba3f5863.jpg" alt="Adminogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-dark">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="/admin/ThongKe/1" class="nav-link">Home</a>
      </li>

    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">0</span>
        </a>
      <%--   <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="${URL}dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="${URL}dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div> --%>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-item dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="/" class="brand-link">
      <img src="/resources/z3955099459254_2ccf7ca1feba48d0591dc18cba3f5863.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">T2KShop</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
<%--       <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
        <c:url value="/images/${usersession.listimage}" var="imgUrl"></c:url>
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">${usersession.first_name}</a>
        </div>
      </div>
 --%>
      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="/admin/ThongKe/1" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/ThongKe/1" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Dashboard</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="/admin/mess" class="nav-link active">
              <i class="nav-icon far fa-envelope"></i>
              <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                Hộp thư
                </font></font><i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/mess" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Hộp thư đến</font></font></p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/tmess" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Soạn, biên soạn</font></font></p>
                </a>
              </li>

            </ul>
          </li>
            <li class="nav-item">
            <a href="/admin/ListNewStore" class="nav-link">
                <i class="nav-icon fas fa-columns"></i>
              <p>
               Chi tiết thống kê cửa hàng

              </p>
            </a>
      
          </li>

          <li class="nav-item">
            <a href="/admin/order" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
               Chi tiết thống kê đơn hàng

              </p>
            </a>
      
          </li>
          <li class="nav-item">
            <a href="/admin/orderitem" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                Chi tiết thống kê doanh thu
                
              </p>
            </a>
           
          </li>
          <li class="nav-item">
            <a href="/admin/ListNewUser" class="nav-link">
              <i class="nav-icon far fa-plus-square"></i>
              <p>
               Chi tiết thống kê khách hàng 
                
              </p>
            </a>
          </li>
  
          <li class="nav-item">
            <a href="/admin/allsp" class="nav-link">
              <i class="nav-icon fas fa-tag"></i>
              <p>
                Hàng trong kho
              
              </p>
            </a>
          
          </li>
            <li class="nav-item">
            <a href="/admin/spbanchay" class="nav-link">
              <i class="nav-icon far fa-heart"></i>
              <p>
                Top những sản phẩm bán chạy
              
              </p>
            </a>
            
          </li>
           <li class="nav-item">
            <a href="/admin/spbancham" class="nav-link">
              <i class="nav-icon fas fa-cloud-download-alt"></i>
              <p>
                Sản phẩm ko được bán chạy
               
              </p>
            </a>
            
          </li>
            <li class="nav-item">
            <a href="/admin/allorder" class="nav-link">
              <i class="nav-icon fas fa-file"></i>
              <p>
                Tất cả đơn hàng           
              </p>
            </a>
        
          
          </li>
           <li class="nav-item">
            <a href="/admin/alluser" class="nav-link">
              <i class="nav-icon ion ion-person-add"></i>
              <p>
                Quản lý tài khoản user          
              </p>
            </a>
        
          
          </li>
           <li class="nav-item">
            <a href="/admin/AllStore" class="nav-link">
                <i class="nav-icon fas fa-columns"></i>
              <p>
               Quản lý cửa hàng

              </p>
            </a>
      
          </li>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

 

