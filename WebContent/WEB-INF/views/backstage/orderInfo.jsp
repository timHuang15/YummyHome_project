<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>订单信息</title>

		<%@ include file="/WEB-INF/views/backstage/public/commitCSS.jsp"%>
		
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
						<h4 class="page-title">订单信息</h4></li>
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
			
			<%@ include file="/WEB-INF/views/backstage/public/commitNav.jsp"%>
			
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
							<div class="am-u-sm-12">
								<div class="card-box">
									<!-- col start -->
									<table class="am-table">
										<thead>
											<tr>
												<th>顾客昵称</th>
												<th>顾客姓名</th>
												<th>联系电话</th>
												<th>座位大小</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>timHuang</td>
												<td>黄天荣</td>
												<td>18819460964</td>
												<td>12人桌</td>
											</tr>
										</tbody>
									</table>
									<!-- col end -->
								</div>
							</div>

						</div>
						<!-- Row end -->

						<!-- Row start -->
						<div class="am-g">
							<!-- col start -->
							<div class="am-u-md-12">
								<div class="card-box">
									<table class="am-table  am-table-striped">
										<thead>
											<tr>
												<th>菜品名称</th>
												<th>菜品类别</th>
												<th>菜品价格</th>
												<th>剩余量</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>白切鸡</td>
												<td>粤菜</td>
												<td>89</td>
												<td>20</td>
											</tr>
											<tr>
												<td>春卷</td>
												<td>粤菜</td>
												<td>15</td>
												<td>100</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- col end -->
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