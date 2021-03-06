<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>座位修改</title>
		
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
						<h4 class="page-title">座位修改</h4></li>
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
								Table t = (Table)request.getAttribute("tableInfo");
							%>
								<form action="<%=request.getContextPath()%>/controller/back_control/tableOperation/edit.jsp" 
									  class="am-form" data-am-validator>
									<fieldset>
										<div class="am-form-group">
											<label for="doc-vld-tablepeople">桌子ID：<%=t.getTable_id()%></label>
											<input type="hidden" name="table_id" value="<%=t.getTable_id()%>">
										</div>
										
										<div class="am-form-group">
											<label for="doc-vld-tablepeople">桌子可容人数：</label>
											<input type="number" name="table_people" min="4" max="15" value="<%=t.getTable_people()%>" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-tabletotal">桌子总数：</label>
											<input type="number" name="table_total" min="2" max="15" value="<%=t.getTable_total()%>" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-tablesurplus">桌子剩余：</label>
											<input type="number" name="table_surplus" min="1" max="15" value="<%=t.getTable_surplus()%>" required/>
										</div>

										<div class="am-form-group">
											<label for="doc-vld-tableprice">开桌费：</label>
											<input type="number" name="table_price" min="20" max="50" value="<%=t.getTable_price()%>" required/>
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

</html>