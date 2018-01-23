<%@page import="com.sun.xml.internal.bind.v2.model.core.ID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="yummyhome.entity.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>座位查询表</title>

<%@ include file="/WEB-INF/views/backstage/public/commitCSS.jsp"%>

</head>

<body>
	<!-- Begin page -->
	<header class="am-topbar am-topbar-fixed-top">
		<div class="am-topbar-left am-hide-sm-only">
			<a href="index.html" class="logo"><span>Admin<span>to</span></span><i
				class="zmdi zmdi-layers"></i></a>
		</div>

		<div class="contain">
			<ul class="am-nav am-navbar-nav am-navbar-left">

				<li>
					<h4 class="page-title">座位列表</h4>
				</li>
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
							<form class="am-form">
								<table
									class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-check"><input type="checkbox" /></th>
											<th class="table-id">ID</th>
											<th class="table-title">座位人数</th>
											<th class="table-author am-hide-sm-only">桌子总数</th>
											<th class="table-date am-hide-sm-only">桌子剩余</th>
											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody>
										<!-- loop start -->
										<input type="hidden" id="ctx" value="<%=request.getContextPath()%>"/>
										<%
											List<Table> tables = (List<Table>) request.getAttribute("tableList");
											if (null != tables) {
												for (Table t : tables) {
										%>
										<tr>
											<td><input type="checkbox" /></td>
											<td><%=t.getTable_id()%></td>
											<td><%=t.getTable_people()%>人桌</td>
											<td class="am-hide-sm-only"><%=t.getTable_total()%>张</td>
											<td class="am-hide-sm-only"><%=t.getTable_surplus()%>张</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">
														
														<button type="button" onclick="edit('<%=t.getTable_id()%>')"
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span>编辑 
														</button>
														<button type="button" onclick="del('<%=t.getTable_id()%>')"
														class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
														<span class="am-icon-trash-o"></span> 删除</button>
													</div>
												</div>
											</td>
										</tr>
										<%
											}
											}
										%>
										<!-- loop end -->

									</tbody>
								</table>

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
	<a href="admin-offcanvas"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"> <!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
</body>
 <script>
	function edit(id) {
		var url = document.getElementById("ctx").value+"/controller/back_control/totableChange.jsp?id="+id;
		window.location.href = url;
	}
	
	function del(id){
		var url = document.getElementById("ctx").value+"/controller/back_control/tableOperation/delete.jsp?id="+id;
		window.location.href = url;
	}
</script> 
</html>