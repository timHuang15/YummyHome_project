<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>顾客添加</title>
		
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
								<form action="<%=request.getContextPath()%>/controller/back_control/customerOperation/add.jsp" 
								method="post" class="am-form" data-am-validator>
									<fieldset>
										<div class="am-form-group">
											<label for="doc-vld-relname">顾客真实姓名：</label>
											<input type="text" name="customer_name" minlength="2" placeholder="请输入顾客姓名（至少 2个字符）" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-username">顾客用户名：</label>
											<input type="text" name="customer_user_name" minlength="1" placeholder="请输入顾客用户名（至少 1个字符）" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-phone">联系电话：</label>
											<input type="text" name="customer_phone" minlength="11" placeholder="输入顾客联系电话(需填写手机号码)" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-password">顾客登录密码：</label>
											<input type="text" name="customer_pwd" maxlength="10" minlength="3" placeholder="输入顾客登录密码(3~10位之间)"required />
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