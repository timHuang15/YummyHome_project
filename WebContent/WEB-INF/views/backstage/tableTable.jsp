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
						<div class="am-u-sm-12 am-u-md-6">
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<button type="button" class="am-btn am-btn-default" onclick="add()">
										<span class="am-icon-plus"></span> 新增
									</button>
									<button type="button" class="am-btn am-btn-default" onclick="delAll()">
										<span class="am-icon-trash-o"></span> 删除
									</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Row end -->

					<!-- Row start -->
					<div class="am-g">
						<div class="am-u-sm-12">
							<form class="am-form" id="listForm" method="post"
								action="<%=request.getContextPath()%>/controller/back_control/tableOperation/delete.jsp">
								<table
									class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-check"><input type="checkbox"
												name="selectALL" onclick="selectAll()" /></th>
											<th class="table-id">ID</th>
											<th class="table-title">座位人数</th>
											<th class="table-author am-hide-sm-only">桌子总数</th>
											<th class="table-date am-hide-sm-only">桌子剩余</th>
											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody>
										<!-- loop start -->
										<input type="hidden" id="ctx"
											value="<%=request.getContextPath()%>" />
										<%
											List<Table> tables = (List<Table>) request.getAttribute("tableList");
											if (null != tables) {
												for (Table t : tables) {
										%>
										<tr>
											<td><input name="id" type="checkbox"
												value="<%=t.getTable_id()%>" /></td>
											<td><%=t.getTable_id()%></td>
											<td><%=t.getTable_people()%>人桌</td>
											<td class="am-hide-sm-only"><%=t.getTable_total()%>张</td>
											<td class="am-hide-sm-only"><%=t.getTable_surplus()%>张</td>
											<td>
												<div class="am-btn-toolbar">
													<div class="am-btn-group am-btn-group-xs">

														<button type="button"
															onclick="edit('<%=t.getTable_id()%>')"
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
															<span class="am-icon-pencil-square-o"></span>编辑
														</button>
														<button type="button"
															onclick="delAll(<%=t.getTable_id()%>)"
															class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
															<span class="am-icon-trash-o"></span> 删除
														</button>
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
	/*---- 单个编辑操作 ----*/
	function edit(id) {
		var url = document.getElementById("ctx").value
				+ "/controller/back_control/totableChange.jsp?id=" + id;
		window.location.href = url;
	}
	/*---- 添加操作 ----*/
	function add(){
		var url = document.getElementById("ctx").value
		+ "/controller/back_control/totableAdd.jsp";
		window.location.href = url;
	}
	/*---- 全选操作 ----*/
	function selectAll() {
		var idDoms = document.getElementsByName('id');
		for (var i = 0; i < idDoms.length; i++) {
			idDoms[i].checked = !idDoms[i].checked;
		}
	}
	/*---- 删除操作 ----*/
	function delAll(id){
		//单条记录删除提示
		if(!isNaN(id)){
			//提示用户确定删除
			var isSure = confirm('确定删除?');
			if(!isSure){
				return;
			}
			
			var url = document.getElementById("ctx").value
			+ "/controller/back_control/tableOperation/delete.jsp?id=" + id;
			window.location.href = url;
		}
		//多条记录删除提示
		else{
			var idDoms = document.getElementsByName('id');
			//过滤出选择的ID
			var selectArr = [];
			for(var i=0;i<idDoms.length;i++){
				if(idDoms[i].checked == true){
				selectArr.push(idDoms[i].value);
				}
			}
			//一条都没选中
			if(selectArr.length==0){
				alert('请选择需删除的记录!');
				return;
			}
			//提示用户确定删除
			var isSure = confirm('确定删除?');
			if(!isSure){
				return;
			}
			
			var form = document.getElementById('listForm');
			form.submit();
		}
	}
</script>
</html>