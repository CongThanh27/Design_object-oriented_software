<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>


<c:url value="/resources/fe/" var="URL"></c:url>

<c:if test="${user.isSeller == false}">
	<a href="sellerRegister" style="text-align: center; top: 100px"><h2>
			<center>Đăng ký trở thành người bán</center>
		</h2></a>
</c:if>


<c:if test="${user.isSeller == true}">
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<!-- Brand Logo -->
		<a href="/" class="brand-link"> <%-- <img src="${URL}dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> --%>
			<span class="brand-text font-weight-light">T2KShop</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<%-- <div class="image">
          <img src="${URL}dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div> --%>
				<div class="info">
					<a href="/seller" class="d-block">Nhóm 9</a>
				</div>
			</div>

			<!-- SidebarSearch Form -->
			<div class="form-inline">
				<div class="input-group" data-widget="sidebar-search">
					<input class="form-control form-control-sidebar" type="search"
						placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-sidebar">
							<i class="fas fa-search fa-fw"></i>
						</button>
					</div>
				</div>
			</div>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item menu-open"><a href="/seller"
						class="nav-link active"> <i
							class="nav-icon fas fa-tachometer-alt"></i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item "><a href="/seller/order" class="nav-link">
							<i class="nav-icon fas fa-tachometer-alt"></i>
							<p>Quản lý đơn hàng</p>
					</a></li>
					<li class="nav-item menu-open"><a href="/seller/product"
						class="nav-link"> <i class="nav-icon fas fa-tachometer-alt"></i>
							<p>Quản lý sản phẩm</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="/seller/product"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Tất cả sản phẩm</p>
							</a></li>
							<li class="nav-item"><a href="/seller/addOrEdit"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Thêm sản phẩm</p>
							</a></li>


						</ul></li>
				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>

	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0">Dashboard</h1>
					</div>
					<!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Thông tin của
									hàng</a></li>
						</ol>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /.content-header -->

		<!-- Main content -->
		<section class="content">
			<div class="container-fluid">
				<!-- Small boxes (Stat box) -->
				<div class="row">
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-info">
							<div class="inner">
								<h3>${choxacnhan }</h3>

								<p>Chờ xác nhận</p>
							</div>
							<div class="icon">
								<i class="ion ion-bag"></i>
							</div>
							<a href="/seller/order" class="small-box-footer">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-success">
							<div class="inner">
								<h3>${daxuly }</h3>

								<p>Đã xử lý</p>
							</div>
							<div class="icon">
								<i class="ion ion-stats-bars"></i>
							</div>
							<a href="/seller/order" class="small-box-footer">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-warning">
							<div class="inner">
								<h3>${sanphamhethang }</h3>

								<p>Sản phẩm hết hàng</p>
							</div>
							<div class="icon">
								<i class="ion ion-person-add"></i>
							</div>
							<a href="/seller/product" class="small-box-footer">More info
								<i class="fas fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<!-- ./col -->
					<div class="col-lg-3 col-6">
						<!-- small box -->
						<div class="small-box bg-danger">
							<div class="inner">
								<h3>${doanhthu }</h3>

								<p>Danh thu</p>
							</div>
							<div class="icon">
								<i class="ion ion-pie-graph"></i>
							</div>
							<a href="#" class="small-box-footer">More info <i
								class="fas fa-arrow-circle-right"></i></a>
						</div>
					</div>
					<!-- ./col -->
				</div>
				<!-- /.row -->
				<!-- Main row -->


				<!-- <div class="row">
          Left col
          <section class="col-lg-7 connectedSortable">
            Custom tabs (Charts with tabs)
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="fas fa-chart-pie mr-1"></i>
                  Sales
                </h3>
                <div class="card-tools">
                  <ul class="nav nav-pills ml-auto">
                    <li class="nav-item">
                      <a class="nav-link active" href="#revenue-chart" data-toggle="tab">Area</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#sales-chart" data-toggle="tab">Donut</a>
                    </li>
                  </ul>
                </div>
              </div>/.card-header
              <div class="card-body">
                <div class="tab-content p-0">
                  Morris chart - Sales
                  <div class="chart tab-pane active" id="revenue-chart"
                       style="position: relative; height: 300px;">
                      <canvas id="revenue-chart-canvas" height="300" style="height: 300px;"></canvas>
                   </div>
                  <div class="chart tab-pane" id="sales-chart" style="position: relative; height: 300px;">
                    <canvas id="sales-chart-canvas" height="300" style="height: 300px;"></canvas>
                  </div>
                </div>
              </div>/.card-body
            </div>
            /.card

            DIRECT CHAT
            

            TO DO List
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">
                  <i class="ion ion-clipboard mr-1"></i>
                  To Do List
                </h3>

                <div class="card-tools">
                  <ul class="pagination pagination-sm">
                    <li class="page-item"><a href="#" class="page-link">&laquo;</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">&raquo;</a></li>
                  </ul>
                </div>
              </div>
              /.card-header
              <div class="card-body">
                <ul class="todo-list" data-widget="todo-list">
                  <li>
                    drag handle
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    checkbox
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo1" id="todoCheck1">
                      <label for="todoCheck1"></label>
                    </div>
                    todo text
                    <span class="text">Design a nice theme</span>
                    Emphasis label
                    <small class="badge badge-danger"><i class="far fa-clock"></i> 2 mins</small>
                    General tools such as edit or delete
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo2" id="todoCheck2" checked>
                      <label for="todoCheck2"></label>
                    </div>
                    <span class="text">Make the theme responsive</span>
                    <small class="badge badge-info"><i class="far fa-clock"></i> 4 hours</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo3" id="todoCheck3">
                      <label for="todoCheck3"></label>
                    </div>
                    <span class="text">Let theme shine like a star</span>
                    <small class="badge badge-warning"><i class="far fa-clock"></i> 1 day</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo4" id="todoCheck4">
                      <label for="todoCheck4"></label>
                    </div>
                    <span class="text">Let theme shine like a star</span>
                    <small class="badge badge-success"><i class="far fa-clock"></i> 3 days</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo5" id="todoCheck5">
                      <label for="todoCheck5"></label>
                    </div>
                    <span class="text">Check your messages and notifications</span>
                    <small class="badge badge-primary"><i class="far fa-clock"></i> 1 week</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                  <li>
                    <span class="handle">
                      <i class="fas fa-ellipsis-v"></i>
                      <i class="fas fa-ellipsis-v"></i>
                    </span>
                    <div  class="icheck-primary d-inline ml-2">
                      <input type="checkbox" value="" name="todo6" id="todoCheck6">
                      <label for="todoCheck6"></label>
                    </div>
                    <span class="text">Let theme shine like a star</span>
                    <small class="badge badge-secondary"><i class="far fa-clock"></i> 1 month</small>
                    <div class="tools">
                      <i class="fas fa-edit"></i>
                      <i class="fas fa-trash-o"></i>
                    </div>
                  </li>
                </ul>
              </div>
              /.card-body
              <div class="card-footer clearfix">
                <button type="button" class="btn btn-primary float-right"><i class="fas fa-plus"></i> Add item</button>
              </div>
            </div>
            /.card
          </section>
          /.Left col
          right col (We are only adding the ID to make the widgets sortable)
          <section class="col-lg-5 connectedSortable">

            Map card
            <div class="card bg-gradient-primary">
              <div class="card-header border-0">
                <h3 class="card-title">
                  <i class="fas fa-map-marker-alt mr-1"></i>
                  Visitors
                </h3>
                card tools
                <div class="card-tools">
                  <button type="button" class="btn btn-primary btn-sm daterange" title="Date range">
                    <i class="far fa-calendar-alt"></i>
                  </button>
                  <button type="button" class="btn btn-primary btn-sm" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                </div>
                /.card-tools
              </div>
              <div class="card-body">
                <div id="world-map" style="height: 250px; width: 100%;"></div>
              </div>
              /.card-body
              <div class="card-footer bg-transparent">
                <div class="row">
                  <div class="col-4 text-center">
                    <div id="sparkline-1"></div>
                    <div class="text-white">Visitors</div>
                  </div>
                  ./col
                  <div class="col-4 text-center">
                    <div id="sparkline-2"></div>
                    <div class="text-white">Online</div>
                  </div>
                  ./col
                  <div class="col-4 text-center">
                    <div id="sparkline-3"></div>
                    <div class="text-white">Sales</div>
                  </div>
                  ./col
                </div>
                /.row
              </div>
            </div>
            /.card

            solid sales graph
            <div class="card bg-gradient-info">
              <div class="card-header border-0">
                <h3 class="card-title">
                  <i class="fas fa-th mr-1"></i>
                  Sales Graph
                </h3>

                <div class="card-tools">
                  <button type="button" class="btn bg-info btn-sm" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn bg-info btn-sm" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
              <div class="card-body">
                <canvas class="chart" id="line-chart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
              /.card-body
              <div class="card-footer bg-transparent">
                <div class="row">
                  <div class="col-4 text-center">
                    <input type="text" class="knob" data-readonly="true" value="20" data-width="60" data-height="60"
                           data-fgColor="#39CCCC">

                    <div class="text-white">Mail-Orders</div>
                  </div>
                  ./col
                  <div class="col-4 text-center">
                    <input type="text" class="knob" data-readonly="true" value="50" data-width="60" data-height="60"
                           data-fgColor="#39CCCC">

                    <div class="text-white">Online</div>
                  </div>
                  ./col
                  <div class="col-4 text-center">
                    <input type="text" class="knob" data-readonly="true" value="30" data-width="60" data-height="60"
                           data-fgColor="#39CCCC">

                    <div class="text-white">In-Store</div>
                  </div>
                  ./col
                </div>
                /.row
              </div>
              /.card-footer
            </div>
            /.card

            Calendar
            <div class="card bg-gradient-success">
              <div class="card-header border-0">

                <h3 class="card-title">
                  <i class="far fa-calendar-alt"></i>
                  Calendar
                </h3>
                tools card
                <div class="card-tools">
                  button with a dropdown
                  <div class="btn-group">
                    <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" data-offset="-52">
                      <i class="fas fa-bars"></i>
                    </button>
                    <div class="dropdown-menu" role="menu">
                      <a href="#" class="dropdown-item">Add new event</a>
                      <a href="#" class="dropdown-item">Clear events</a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">View calendar</a>
                    </div>
                  </div>
                  <button type="button" class="btn btn-success btn-sm" data-card-widget="collapse">
                    <i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-success btn-sm" data-card-widget="remove">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
                /. tools
              </div>
              /.card-header
              <div class="card-body pt-0">
                The calendar
                <div id="calendar" style="width: 100%"></div>
              </div>
              /.card-body
            </div>
            /.card
          </section>
          right col
        </div>
        /.row (main row)
      </div>/.container-fluid -->

				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<h5 class="card-title">Monthly Recap Report</h5>

								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
									<div class="btn-group">
										<button type="button" class="btn btn-tool dropdown-toggle"
											data-toggle="dropdown">
											<i class="fas fa-wrench"></i>
										</button>
										<div class="dropdown-menu dropdown-menu-right" role="menu">
											<a href="#" class="dropdown-item">Action</a> <a href="#"
												class="dropdown-item">Another action</a> <a href="#"
												class="dropdown-item">Something else here</a> <a
												class="dropdown-divider"></a> <a href="#"
												class="dropdown-item">Separated link</a>
										</div>
									</div>
									<button type="button" class="btn btn-tool"
										data-card-widget="remove">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<div class="row">
									<div class="col-md-8">
										<p class="text-center">
											<strong>Sales: 1 Jan, 2022 - 30 Dec, 2023</strong>
										</p>
										<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
										<script
											src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
										<div class="chart">
											<!-- Sales Chart Canvas -->

											<canvas id="myChart" height="180" style="height: 180px;"></canvas>



											<script>
												var labels = ${labelsJson};
												var values = ${values};
												let myChart = document
														.getElementById(
																'myChart')
														.getContext('2d');
												// Global Options
												Chart.defaults.global.defaultFontFamily = 'Lato';
												Chart.defaults.global.defaultFontSize = 18;
												Chart.defaults.global.defaultFontColor = '#777';

												let massPopChart = new Chart(
														myChart,
														{
															type : 'bar', // bar, horizontalBar, pie, line, doughnut, radar, polarArea
															data : {
																/* labels : [
																		'Tháng 1',
																		'Tháng 2',
																		'Tháng 3',
																		'Tháng 4' ], */
																labels : labels,
																datasets : [ {
																	label : 'Doanh thu',
																	/* data : [
																			617594,
																			181045,
																			153060,
																			106519,
																			105162,
																			95072 ], */
																	data : values,
																	//backgroundColor:'green',
																	backgroundColor : [
																			'rgba(255, 99, 132, 0.6)',
																			'rgba(54, 162, 235, 0.6)',
																			'rgba(255, 206, 70, 0.6)',
																			'rgba(75, 192, 192, 0.6)',
																			'rgba(100, 99, 50, 0.6)',
																			'rgba(20, 40, 150, 0.6)',
																			'rgba(255, 1, 150, 0.6)',
																			'rgba(1, 192, 100, 0.6)',
																			'rgba(2, 50, 230, 0.6)',
																			'rgba(54, 231, 132, 0.6)',
																			'rgba(123, 54, 6, 0.6)',
																			'rgba(34, 156, 79, 0.6)' ],
																	borderWidth : 1,
																	borderColor : '#777',
																	hoverBorderWidth : 3,
																	hoverBorderColor : '#000'
																} ]
															},
															options : {
																scales : {
																	yAxes : [ {
																		display : true,
																		ticks : {
																			beginAtZero : true
																		}
																	} ]
																},
																title : {
																	display : true,
																	text : 'Doanh thu theo tháng',
																	fontSize : 25
																},
																legend : {
																	display : true,
																	position : 'right',
																	labels : {
																		fontColor : '#000'
																	}
																},
																layout : {
																	padding : {
																		left : 50,
																		right : 0,
																		bottom : 0,
																		top : 0
																	}
																},
																tooltips : {
																	enabled : true
																}
															}
														});
											</script>
										</div>
										<!-- /.chart-responsive -->
									</div>
									<!-- /.col -->
									<div class="col-md-4">
										<p class="text-center">
											<strong>Goal Completion</strong>
										</p>

										<div class="progress-group">
											Thêm sản phẩm vào giỏ hàng <span class="float-right"><b>
													${tsp}</b>/${chitieu}</span>
											<div class="progress progress-sm">
												<div class="progress-bar bg-primary"
													style="width: ${(tsp/chitieu)*100}%"></div>
											</div>
										</div>
										<!-- /.progress-group -->

										<div class="progress-group">
											Hoàn tất mua hàng <span class="float-right"><b>${hoangtatmuahang}</b>/${chitieu}</span>
											<div class="progress progress-sm">
												<div class="progress-bar bg-danger"
													style="width: ${(hoangtatmuahang/chitieu)*100}%"></div>
											</div>
										</div>

										<!-- /.progress-group -->
										<div class="progress-group">
											<span class="progress-text">Hoàn tất thanh toán</span> <span
												class="float-right"><b>${hoangtatthanhtoan}</b>/${chitieu}</span>
											<div class="progress progress-sm">
												<div class="progress-bar bg-success"
													style="width: ${(hoangtatthanhtoan/chitieu)*100}%"></div>
											</div>
										</div>


										<!-- /.progress-group -->
									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->
							</div>
							<!-- ./card-body -->
							<div class="card-footer">
								<div class="row">
									<div class="col-sm-3 col-6">
										<div class="description-block border-right">
											<span class="description-percentage text-success"><i
												class="fas fa-caret-up"></i> 17%</span>
											<h5 class="description-header">$${Doanhthu}</h5>
											<span class="description-text">Tổng Danh Thu</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-6">
										<div class="description-block border-right">
											<span class="description-percentage text-warning"><i
												class="fas fa-caret-left"></i> 0%</span>
											<h5 class="description-header">${DKMUStore}</h5>
											<span class="description-text">Tổng Cửa Hàng</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-6">
										<div class="description-block border-right">
											<span class="description-percentage text-success"><i
												class="fas fa-caret-up"></i> 20%</span>
											<h5 class="description-header">${DKMUser}</h5>
											<span class="description-text">Tổng người đăng ký</span>
										</div>
										<!-- /.description-block -->
									</div>
									<!-- /.col -->
									<div class="col-sm-3 col-6">
										<div class="description-block">
											<span class="description-percentage text-danger"><i
												class="fas fa-caret-down"></i> 18%</span>
											<h5 class="description-header">${DKMOrder}</h5>
											<span class="description-text">Tổng hóa đơn</span>
										</div>
										<!-- /.description-block -->
									</div>
								</div>
								<!-- /.row -->
							</div>
							<!-- /.card-footer -->
						</div>
						<!-- /.card -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->

				<!-- Main row -->

				<!--/. container-fluid -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->



	</section>
	<!-- /.content -->
	</div>
</c:if>