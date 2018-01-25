<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="yummyhome.entity.*"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>顾客查询表</title>

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
						<h4 class="page-title">顾客列表</h4></li>
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
										<button type="button" onclick="add()"
												class="am-btn am-btn-default">
											<span class="am-icon-plus"></span> 新增
										</button>
										<button type="button" onclick="delAll()"
												class="am-btn am-btn-default">
											<span class="am-icon-trash-o"></span> 删除
										</button>
									</div>
								</div>
							</div>

							<div class="am-u-sm-12 am-u-md-3">
								<div class="am-input-group am-input-group-sm">
									<input type="text" class="am-form-field">
									<span class="am-input-group-btn">
				            <button class="am-btn am-btn-default" type="button">搜索</button>
				          </span>
								</div>
							</div>
						</div>
						<!-- Row end -->

						<!-- Row start -->
						<div class="am-g">
							<div class="am-u-sm-12">
								<form class="am-form" id="listForm" method="post"
									  action="<%=request.getContextPath()%>/controller/back_control/customerOperation/delete.jsp">
									<table class="am-table am-table-striped am-table-hover table-main">
										<thead>
											<tr>
												<th class="table-check"><input type="checkbox" 
													name="selectALL" onclick="selectAll()"/></th>
												<th class="table-id">ID</th>
												<th class="table-title">顾客用户名</th>

												<th class="table-author am-hide-sm-only">姓名</th>
												<th class="table-date am-hide-sm-only">联系电话</th>
												<th class="table-set">操作</th>
											</tr>
										</thead>
										<tbody>
										<!-- loop start -->
										<input type="hidden" id="ctx"
											value="<%=request.getContextPath()%>" />
										<% 
										List<Customer> customers = (List<Customer>) request.getAttribute("customerList");
										if (null != customers) {
											for (Customer c : customers) {
										%>
											<tr>
												<td><input type="checkbox" name="idBox"
															value="<%=c.getCustomer_id()%>"/></td>
												<td><%=c.getCustomer_id()%></td>
												<td><%=c.getCustomer_user_name() %></td>
												<td class="am-hide-sm-only"><%=c.getCustomer_name() %></td>
												<td class="am-hide-sm-only"><%=c.getCustomer_phone() %></td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs">
															<button type="button" onclick="edit('<%=c.getCustomer_id()%>')"
															class="am-btn am-btn-default am-btn-xs am-text-secondary">
																<span class="am-icon-pencil-square-o"></span> 编辑
															</button>
															<button type="button" onclick="delAll(<%=c.getCustomer_id()%>)"
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
	/*---- 单个编辑操作 ----*/
	function edit(id) {
		var url = document.getElementById("ctx").value
				+ "/controller/back_control/customerOperation/toedit.jsp?id=" + id;
		window.location.href = url;
	}
	/*---- 全选操作 ----*/
	function selectAll() {
		var idDoms = document.getElementsByName('idBox');
		for (var i = 0; i < idDoms.length; i++) {
			idDoms[i].checked = !idDoms[i].checked;
		}
	}
	/*---- 添加操作 ----*/
	function add(){
		var url = document.getElementById("ctx").value
		+ "/controller/back_control/tocustomerAdd.jsp";
		window.location.href = url;
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
			+ "/controller/back_control/customerOperation/delete.jsp?id=" + id;
			window.location.href = url;
		}
		//多条记录删除提示
		else{
			var idDoms = document.getElementsByName('idBox');
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