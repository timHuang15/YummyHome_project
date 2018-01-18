<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>顾客添加</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/amazeui.css" />
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
						<h4 class="page-title">顾客添加</h4></li>
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
									<i class="am-icon-cog" aria-hidden="true"></i>
								</a>
							</li>

							<li>
								<a href="#" class="text-custom">
									<i class="am-icon-cog" aria-hidden="true"></i>
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
									<a href="table_basic.html" class="am-cf"> 订单列表
									</a>
								</li>
							</ul>
						</li>
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="fa fa-users"></span> 顾客 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
								<li>
									<a href="table_basic.html" class="am-cf"> 顾客列表
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
									<a href="chart_line.html" class="am-cf"> 菜品列表
									</a>
								</li>
								<li>
									<a href="chart_columnar.html" class="am-cf"> 菜品添加
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
					<div class="am-g">
						<!-- Row start -->
						<div class="am-u-sm-12">
							<div class="card-box">
								<form action="" class="am-form" data-am-validator>
									<fieldset>
										<div class="am-form-group">
											<label for="doc-vld-relname">顾客真实姓名：</label>
											<input type="text" id="doc-vld-relname" minlength="3" placeholder="请输入顾客姓名（至少 3个字符）" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-username">顾客用户名：</label>
											<input type="text" id="doc-vld-username" minlength="1" placeholder="请输入顾客用户名（至少 1个字符）" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-phone">联系电话：</label>
											<input type="text" id="doc-vld-phone" minlength="11" placeholder="输入顾客联系电话(需填写手机号码)" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-password">顾客登录密码：</label>
											<input type="text" class="" id="doc-vld-password" maxlength="10" minlength="3" placeholder="输入顾客登录密码(3~10位之间)"required />
										</div>
										
										<button class="am-btn am-btn-secondary" type="submit">添加</button>
									</fieldset>
								</form>

							</div>
						</div>
						<!-- Row end -->
					</div>

				</div>
			</div>
			<!-- end right Content here -->
			<!--</div>-->
		</div>
		

		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
			<!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

	</body>

</html>