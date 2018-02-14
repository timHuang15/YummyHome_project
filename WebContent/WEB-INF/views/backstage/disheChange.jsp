<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="yummyhome.entity.*"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>菜品修改</title>
	
	<%@ include file="/WEB-INF/views/backstage/public/commitCSS.jsp"%>
	
	<style type="text/css">
	.img{
		display: inline-block;
		position:relative;
	}
	.img img{
		width: 242px;
		height: 200px
	}
	.img .del_img{
		position:absolute;
		right:0;
		top:0;
		width:15px;
		height: 15px;
		background-color: #000;
		color:#fff;
		opacity: 0.8;
		text-align: center;
		line-height: 15px;
		cursor: pointer;
	}
	</style>
	
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
											<iframe height="37px" width="604px" id="uploadFrame"
													src="<%=request.getContextPath()%>/controller/back_control/disheOperation/toupload.jsp"></iframe>
										</div>
										
										<div class="am-form-group">
											<label for="doc-vld-photo">已传图片：</label>
											<div id="images">
												
											</div>
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
		function uploadComplete(file,alt)
		{
			if(file)
			{
				var imagesDiv = document.getElementById('images');
				var imgDiv = document.createElement('div');
				imgDiv.className='img';
				imgDiv.innerHTML = '<img src="<%=request.getContextPath()%>'+file+'" alt="'+alt+'"/>';
				imgDiv.innerHTML = imgDiv.innerHTML + '<input type="hidden" name="dishe_images" value="'+file+'"/>';
				imgDiv.innerHTML = imgDiv.innerHTML + '<div class="del_img" onclick="deleteImg(this.parentNode)">X</div>';
				imagesDiv.appendChild(imgDiv);	
			} 
			var uploadFrame = document.getElementById('uploadFrame');
			uploadFrame.src="<%=request.getContextPath()%>/controller/back_control/disheOperation/toupload.jsp"; 
		
		}
		
		function deleteImg(o) {
			o.parentNode.removeChild(o);
		}
	</script>
</html>