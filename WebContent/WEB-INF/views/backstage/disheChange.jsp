<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="yummyhome.entity.*"%>
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
							<% 
								Dishe d = (Dishe)request.getAttribute("disheInfo");
							%>
								<form action="<%=request.getContextPath()%>/controller/back_control/disheOperation/edit.jsp" 
									  class="am-form" data-am-validator>
									<fieldset>
										<input type="hidden" name="dishe_id" 
												   value="<%=d.getDishe_id()%>">
										
										<div class="am-form-group">
											<label for="doc-vld-dishename">菜品名：</label>
											<input type="text" name="dishe_name" 
												   minlength="2" value="<%=d.getDishe_name() %>" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-price">菜品价格：</label>
											<input type="number" name="dishe_price" 
												   min="20" max="200" 
												   value="<%=d.getDishe_price() %>" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-total">菜品日销售额：</label>
											<input type="number" name="dishe_total" 
												   min="50" max="200" 
												   value="<%=d.getDishe_total() %>" required />
										</div>
										
										<div class="am-form-group">
											<label for="doc-vld-total">菜品剩余量：</label>
											<input type="number" name="dishe_surplus" 
												   min="5" max="<%=d.getDishe_total() %>" 
												   value="<%=d.getDishe_surplus() %>" required />
										</div>

										<div class="am-form-group">
											<label for="doc-vld-photo">菜品图片：</label>
											<input type="file" id="shangpinfile">
										</div>

										<div class="am-form-group" style="position:relative;">
											<label for="doc-vld-ta-2">菜品描述：</label>
											<textarea id="doc-vld-ta-2" name="dishe_info"><%=d.getDishe_info() %></textarea>
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
		</div>

		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
			<!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

	</body>
	<script type="text/javascript">
	/*---- 输入框提示 ----*/
	/* function Ntoed(){
		var noted = document.getElementById('note');
		noted.style.display='none';
		
	} */
	/* function Ntoeb(){
		var noteb = document.getElementById('note');
		noteb.style.display='block';
		
	} */
	</script>
</html>