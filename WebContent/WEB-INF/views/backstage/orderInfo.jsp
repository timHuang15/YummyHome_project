<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="yummyhome.entity.*"%>
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
		<%
			Order o = (Order)request.getAttribute("orderInfo");
		%>
		<header class="am-topbar am-topbar-fixed-top">
			<div class="am-topbar-left am-hide-sm-only">
				<a href="index.html" class="logo"><span>Admin<span>to</span></span><i class="zmdi zmdi-layers"></i></a>
			</div>

			<div class="contain">
				<ul class="am-nav am-navbar-nav am-navbar-left">

					<li>
						<h4 class="page-title">订单状态:<%=o.getOrder_state()%></h4></li>
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
							<div class="am-u-sm-12 am-u-md-6">
								<div class="am-btn-toolbar">
								<form action="<%=request.getContextPath()%>/controller/back_control/orderOperation/dealed.jsp">
									<div class="am-btn-group am-btn-group-xs">
										<input type="hidden" name="order_id"
												value="<%=o.getOrder_id()%>">
										<input type="hidden" name="order_state"
												value="已处理">
										<button type="submit" 
												class="am-btn am-btn-default">
											<span class="am-icon-plus"></span> 已处理
										</button>
										
									</div>
									</form>
								</div>
							</div>

							<!-- search -->

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
												<th>预约时间</th>
												<th>座位大小</th>
												<th>总花费</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><%=o.getCustomer().getCustomer_user_name() %></td>
												<td><%=o.getCustomer().getCustomer_name() %></td>
												<td><%=o.getCustomer().getCustomer_phone() %></td>
												<td><%=o.getBook_time() %></td>
												<td><%=o.getTable().getTable_people() %>人桌</td>
												<td><%=o.getAmount_to() %></td>
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
												<th>预订数量</th>
											</tr>
										</thead>
										<tbody>
										<!-- loop start -->
										<% 
											List<OrderItem> items = (List<OrderItem>)request.getAttribute("itemInfo");
										if(null!=items){
											for(OrderItem i : items){
										%>
											<tr>
												<td><%=i.getDishe().getDishe_name() %></td>
												<td><%=i.getDishe().getDishe_category() %></td>
												<td><%=i.getDishe().getDishe_price() %></td>
												<td><%=i.getDishe_num() %></td>
											</tr>
										<% 
											}
										}
										%>	
											<!-- loop end -->
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