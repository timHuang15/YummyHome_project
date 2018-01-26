<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>菜品修改</title>
	
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
						<h4 class="page-title">菜品修改</h4></li>
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
								<form action="" class="am-form" data-am-validator>
									<fieldset>
										<div class="am-form-group">
											<label for="doc-vld-dishename">菜品名：</label>
											<input type="text" id="doc-vld-dishename" minlength="2" placeholder="请输入菜品名（至少 2个字符）" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-select-1">菜品类别</label>
											<select id="doc-select-1" required>
												<option value="">-=请选择一项=-</option>
												<option value="option1">粤菜</option>
												<option value="option2">川菜</option>
												<option value="option3">西餐</option>
												<option value="option4">饮品</option>
											</select>
											<span class="am-form-caret"></span>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-price">菜品价格：</label>
											<input type="number" id="doc-vld-price" min="20" max="200" placeholder="请设置价格(20~200)" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-total">菜品日销售额：</label>
											<input type="number" class="" id="doc-vld-total" min="50" max="200" placeholder="请设置销售额(50~200)" required />
										</div>

										<div class="am-form-group">
											<label for="doc-vld-photo">菜品图片：</label>
											<input type="file" id="shangpinfile">
										</div>

										<div class="am-form-group">
											<label for="doc-vld-ta-2">菜品描述：</label>
											<textarea id="doc-vld-ta-2" minlength="10" maxlength="100"></textarea>
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
		</div>

		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
			<!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

	</body>

</html>