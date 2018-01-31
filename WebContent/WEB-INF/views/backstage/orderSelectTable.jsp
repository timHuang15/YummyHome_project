<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="yummyhome.entity.*"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>订单列表</title>

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
						<h4 class="page-title">订单列表</h4></li>
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
										<button type="button" onclick="delAll()"
												class="am-btn am-btn-default">
											<span class="am-icon-trash-o"></span> 删除
										</button>
									</div>
								</div>
							</div>

							<div class="am-u-sm-12 am-u-md-3">
							<form class="am-form" 
							action="<%=request.getContextPath()%>/controller/back_control/toorderSelectTable.jsp" 
							method="post">
								<div class="am-input-group am-input-group-sm">
									<input type="text" class="am-form-field"
											name="where-customer_name-like" value="${param['where-customer_name-like']}"
											placeholder="请输入姓名">
									<span class="am-input-group-btn">
				            			<button class="am-btn am-btn-default" type="submit">搜索</button>
				          			</span>
								</div>
							</form>
							</div>
						</div>
						<!-- Row end -->

						<!-- Row start -->
						<div class="am-g">
							<div class="am-u-sm-12">
								<form class="am-form" method="post" id="listForm"
									  action="<%=request.getContextPath()%>/controller/back_control/orderOperation/delete.jsp">
									<table class="am-table am-table-striped am-table-hover table-main">
										<thead>
											<tr>
												<th class="table-check">
													<input type="checkbox" 
														   name="selectALL" onclick="selectAll()"/>
												</th>
												<th class="table-id">ID</th>
												<th class="table-title">顾客姓名</th>
												<th class="table-author am-hide-sm-only">下单时间</th>
												<th class="table-date am-hide-sm-only">订单状态</th>
												<th class="table-set">操作</th>
											</tr>
										</thead>
										<tbody>
										<!-- loop start -->
										<input type="hidden" id="ctx"
											value="<%=request.getContextPath()%>" />
											<%
												List<Order> orders = (List<Order>)request.getAttribute("ordersList");
											if(null!=orders){
												for(Order o : orders){
											%>
											<tr>
												<td>
													<input type="checkbox" name="id"
															value="<%=o.getOrder_id() %>"/>
												</td>
												<td><%=o.getOrder_id() %></td>
												<td><%=o.getCustomer().getCustomer_name() %></td>
												<td class="am-hide-sm-only"><%=o.getOrder_time() %></td>
												<td class="am-hide-sm-only"><%=o.getOrder_state() %></td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs">
															<button class="am-btn am-btn-default am-btn-xs am-text-secondary"
																	type="button" onclick="view(<%=o.getOrder_id()%>)">
																<span class="fa fa-eye"></span> 查看
															</button>
															<button type="button" onclick="delAll(<%=o.getOrder_id()%>)"
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
									<div class="am-cf">
										共 15 条记录
										<div class="am-fr">
											<ul class="am-pagination">
												<li class="am-disabled">
													<a href="#">«</a>
												</li>
												<li class="am-active">
													<a href="#">1</a>
												</li>
												<li>
													<a href="#">2</a>
												</li>
												<li>
													<a href="#">3</a>
												</li>
												<li>
													<a href="#">4</a>
												</li>
												<li>
													<a href="#">5</a>
												</li>
												<li>
													<a href="#">»</a>
												</li>
											</ul>
										</div>
									</div>
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
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}">
			<!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
	</body>

	<script type="text/javascript">
	/*---- 查看订单详情操作 ----*/
	function view(id) {
		var url = document.getElementById("ctx").value
				+ "/controller/back_control/toorderInfo.jsp?id=" + id;
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
			+ "/controller/back_control/orderOperation/delete.jsp?id=" + id;
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