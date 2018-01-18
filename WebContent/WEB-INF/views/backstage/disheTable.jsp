<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>菜品查询表</title>

		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/amazeui.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/font-awesome.css" />
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/core.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/menu.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/index.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/admin.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/page/typography.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/page/form.css" />

		<script src="<%=request.getContextPath() %>/assets/back_style/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=request.getContextPath() %>/assets/back_style/js/amazeui.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=request.getContextPath() %>/assets/back_style/js/app.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=request.getContextPath() %>/assets/back_style/js/blockUI.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- Begin page -->
		<header class="am-topbar am-topbar-fixed-top">
			<div class="am-topbar-left am-hide-sm-only">
				<a href="index.html" class="logo"><span>Admin<span>to</span></span><i class="zmdi zmdi-layers"></i></a>
			</div>

			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li>
						<h4 class="page-title">菜品列表</h4></li>
				</ul>
			</div>
		</header>
		<!-- end page -->

		<div class="admin">
			<!--<div class="am-g">-->
			<!-- ========== Left Sidebar Start ========== -->
			<!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
			<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
				<div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
			<!-- sidebar start -->
			<div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
				<div class="am-offcanvas-bar admin-offcanvas-bar">
					<!-- User -->
					<div class="user-box am-hide-sm-only">
						<div class="user-img">
							<img src="<%=request.getContextPath() %>/assets/back_style/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
							<div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
						</div>
						<h5><a href="#">Mat Helme</a> </h5>
						<ul class="list-inline">
							<li>
								<a href="#">
									<i class="fa fa-cog" aria-hidden="true"></i>
								</a>
							</li>

							<li>
								<a href="#" class="text-custom">
									<i class="fa fa-cog" aria-hidden="true"></i>
								</a>
							</li>
						</ul>
					</div>
					<!-- End User -->

					<ul class="am-list admin-sidebar-list">
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-home"></span> 首页<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
								<li>
									<a href="table_basic.html" class="am-cf"> 订单列表</span>
									</a>
								</li>
							</ul>
						</li>
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="fa fa-users"></span> 顾客 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
								<li>
									<a href="table_basic.html" class="am-cf"> 顾客列表</span>
									</a>
								</li>
								<li>
									<a href="table_complete.html">顾客添加</a>
								</li>
							</ul>
						</li>
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav3'}"><i class="fa fa-cutlery" aria-hidden="true"></i> 菜品 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav3">
								<li>
									<a href="chart_line.html" class="am-cf"> 菜品列表</span>
									</a>
								</li>
								<li>
									<a href="chart_columnar.html" class="am-cf"> 菜品添加</span>
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- sidebar end -->

			<!--</div>
			</div>
		</div>-->
			<!-- ========== Left Sidebar end ========== -->

			<!--	<div class="am-g">-->
			<!-- ============================================================== -->
			<!-- Start right Content here -->
			<div class="content-page">
				<!-- Start content -->
				<div class="content">
					<div class="card-box">
						<!-- Row start -->
						<div class="am-g">
							<div class="am-u-sm-12 am-u-md-6">
								<div class="am-btn-toolbar">
									<div class="am-btn-group am-btn-group-xs">
										<button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
										<button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
									</div>
								</div>
							</div>

							<div class="am-u-sm-12 am-u-md-3">
								<div class="am-input-group am-input-group-sm">
									<input type="text" class="am-form-field">
									<span class="am-input-group-btn">
				            <button class="am-btn am-btn-default" type="button">搜索</button>
				          </span>
								</div>
							</div>
						</div>
						<!-- Row end -->

						<!-- Row start -->
						<div class="am-g">
							<div class="am-u-sm-12">
								<form class="am-form">
									<table class="am-table am-table-striped am-table-hover table-main">
										<thead>
											<tr>
												<th class="table-check"><input type="checkbox" /></th>
												<th class="table-id">ID</th>
												<th class="table-title">菜品名</th>
												<th class="table-type">类别</th>
												<th class="table-author am-hide-sm-only">菜品价格</th>
												<th class="table-date am-hide-sm-only">剩余量</th>
												<th class="table-set">操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><input type="checkbox" /></td>
												<td>1</td>
												<td>
													<a href="#">春卷</a>
												</td>
												<td>粤菜</td>
												<td class="am-hide-sm-only">￥15</td>
												<td class="am-hide-sm-only">20</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs">
															<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
															<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
														</div>
													</div>
												</td>
											</tr>

											<tr>
												<td><input type="checkbox" /></td>
												<td>1</td>
												<td>
													<a href="#">白切鸡</a>
												</td>
												<td>粤菜</td>
												<td class="am-hide-sm-only">￥89</td>
												<td class="am-hide-sm-only">10</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs">
															<button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
															<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
														</div>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="am-cf">
										共 15 条记录
										<div class="am-fr">
											<ul class="am-pagination">
												<li class="am-disabled">
													<a href="#">«</a>
												</li>
												<li class="am-active">
													<a href="#">1</a>
												</li>
												<li>
													<a href="#">2</a>
												</li>
												<li>
													<a href="#">3</a>
												</li>
												<li>
													<a href="#">4</a>
												</li>
												<li>
													<a href="#">5</a>
												</li>
												<li>
													<a href="#">»</a>
												</li>
											</ul>
										</div>
									</div>
								</form>
							</div>

						</div>
						<!-- Row end -->

					</div>

				</div>

			</div>
		</div>
		<!-- end right Content here -->
		<!--</div>-->
		</div>
		</div>

		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
			<!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
	</body>

</html>