<%@page import="yummyhome.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>顾客信息修改</title>
		
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
						<h4 class="page-title">顾客信息修改</h4></li>
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
					<div class="am-g">
						<!-- Row start -->
						<div class="am-u-sm-12">
							<div class="card-box">
							<%
								Customer c = (Customer)request.getAttribute("customerInfo");
							%>
								<form action="<%=request.getContextPath()%>/controller/back_control/customerOperation/edit.jsp" 
									  class="am-form" data-am-validator>
									<fieldset>
										<div class="am-form-group">
											<label for="doc-vld-tablepeople">顾客ID：<%=c.getCustomer_id()%></label>
											<input type="hidden" name="customer_id" 
												   value="<%=c.getCustomer_id()%>">
										</div>
										
										<div class="am-form-group">
											<label for="doc-vld-relname">顾客真实姓名：</label>
											<input type="text" name="customer_name"
												   id="doc-vld-relname" minlength="3" 
												   value="<%=c.getCustomer_name() %>" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-username">顾客新用户名：</label>
											<input type="text" name="customer_user_name"
												   id="doc-vld-username" minlength="1" 
												   value="<%=c.getCustomer_user_name() %>" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-phone">新联系电话：</label>
											<input type="text" name="customer_phone"
												   id="doc-vld-phone" minlength="11" 
												   value="<%=c.getCustomer_phone() %>" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-password">顾客新登录密码：</label>
											<input type="text" name="customer_pwd" 
												   id="doc-vld-password" maxlength="10" minlength="3" 
												   value="<%=c.getCustomer_pwd() %>" required />
										</div>
										
										<button class="am-btn am-btn-secondary" type="submit">修改</button>
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