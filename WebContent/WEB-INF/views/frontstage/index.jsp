<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>Yummy Home</title>

		<link href="<%=request.getContextPath() %>/assets/front_style/css/bootstrap3/css/bootstrap.css" rel="stylesheet"/>
		<link href="<%=request.getContextPath() %>/assets/front_style/css/index/index.css" rel="stylesheet"/>
		<link href="<%=request.getContextPath() %>/assets/front_style/css/index/public.css" rel="stylesheet"/>

		<script src="<%=request.getContextPath() %>/assets/front_style/js/jquery/jquery-1.10.2.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/assets/front_style/js/bootstrap3/js/bootstrap.js" type="text/javascript"></script>

	</head>

	<body>
		<!--**************************顶部Yummy Home nav条**************************-->
		<nav class="navbar navbar-inverse nav-fixed-top navbar-change" role="navigation" name="topBar">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
					<a href="#" class="navbar-brand">Yummy Home</a>
				</div>
				<div id="navbar" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li>
							<a href="#">Home</a>
						</li>
						<li>
							<a href="#">Menu</a>
						</li>
						<li>
							<a href="#">MyTable</a>
						</li>
						<li>
							<a href="#" >Login</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>

		<!--**************************巨幕**************************-->

		<div class="jumbotron jumbotron-change">
			<div class="container">
				<h1>Welcome to Yummy Home!</h1>
				<p>
					<a class="btn btn-primary btn-lg" href="#" role="button">Go to Menu</a>
				</p>
			</div>
		</div>

		<!--**************************标题分割线**************************-->
		<div class="container">
			<hr class="hr-R">
			<h1 class="today-recommend">Today's Recommendation</h2>
			<hr class="hr-L"/>
		</div>
		
		<!--**************************推荐**************************-->
		

		<div class="container">		
			<div class="row">
			<!-- ************ loop start ************ -->
				<c:forEach items="${Showdishes}" var="b">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail thumbnail-change">
							<img src="${pageContext.request.contextPath}/${b.convertImages[0]}" alt="${b.dishe_name}">
						<div class="caption text-center">
							<h3>${b.dishe_name}</h3>
							<p>￥${b.dishe_price}</p>
							<p>
								<a href="#" class="btn btn-primary" role="button">预订</a>
								<a href="#" class="btn btn-default" role="button">详情</a>
							</p>
						</div>
					</div>
				</div>
				</c:forEach>
			<!-- ************ loop end ********assets/front_style/img/showImage/Spring rolls2.jpg**** -->	
							
			</div>
			
			<!--**************************分页**************************-->
			<nav aria-label="Page navigation ">
  				<ul class="pagination FR">
    				<li>
      					<a href="#" aria-label="Previous">
        					<span aria-hidden="true">&laquo;</span>
      					</a>
    				</li>
    				<li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
    				<li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
  				</ul>
			</nav>
		</div>
		<!--**************************底部**************************-->
		<div class="footer">
			<p>
				<a href="">Yummy Home简介</a>
				<i>|</i>
				<a href="">Yummy Home公告</a>
				<i>|</i>
				<a href="">招贤纳士</a>
				<i>|</i>
				<a href="">联系我们</a>
				<i>|</i>
				外賣热线：4008-517-517
			</p>

		<p>Copyright © 2006 - 2014 Zero版权所有&nbsp&nbsp&nbsp京ICP备09037834号&nbsp&nbsp&nbsp京ICP证B1034-8373号&nbsp&nbsp&nbsp某市公安局XX分局备案编号：123456789123</p>

		</div>
	</body>

</html>