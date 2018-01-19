<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
				<div class="am-offcanvas-bar admin-offcanvas-bar">
					<!-- User -->
					<div class="user-box am-hide-sm-only">
						<div class="user-img">
							<img src="<%=request.getContextPath() %>/assets/back_style/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
							<div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
						</div>
						<h5><a href="#">Mat Helme</a> </h5>
						<ul class="list-inline">
							<li>
								<a href="#">
									<i class="am-icon-cog" aria-hidden="true"></i>
								</a>
							</li>

							<li>
								<a href="#" class="text-custom">
									<i class="am-icon-cog" aria-hidden="true"></i>
								</a>
							</li>
						</ul>
					</div>
					<!-- End User -->

					<ul class="am-list admin-sidebar-list">
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-home"></span> 首页<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
								<li>
									<a href="<%= request.getContextPath()%>/controller/back_control/toorderSelectTable.jsp" class="am-cf"> 订单列表
									</a>
								</li>
							</ul>
						</li>
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="fa fa-users"></span> 顾客 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
								<li>
									<a href="<%= request.getContextPath()%>/controller/back_control/tocustomerTable.jsp" class="am-cf"> 顾客列表
									</a>
								</li>
								<li>
									<a href="<%= request.getContextPath()%>/controller/back_control/tocustomerAdd.jsp">顾客添加</a>
								</li>
							</ul>
						</li>
						<li class="admin-parent">
							<a class="am-cf" data-am-collapse="{target: '#collapse-nav3'}"><i class="fa fa-cutlery" aria-hidden="true"></i> 菜品 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
							<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav3">
								<li>
									<a href="<%= request.getContextPath()%>/controller/back_control/todisheTable.jsp" class="am-cf"> 菜品列表
									</a>
								</li>
								<li>
									<a href="<%= request.getContextPath()%>/controller/back_control/todisheAdd.jsp" class="am-cf"> 菜品添加
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>