<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>后台登录</title>
		
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/core.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/menu.css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/amazeui.css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/component.css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/back_style/css/page/form.css"/>
	</head>
	<body>
		<div class="account-pages">
			<div class="wrapper-page">
				<div class="text-center">
	                <a href="index.html" class="logo"><span>Admin<span>to</span></span></a>
	            </div>
	            
	            <div class="m-t-40 card-box">
	            	<div class="text-center">
	                    <h4 class="text-uppercase font-bold m-b-0">Sign In</h4>
	                </div>
	                <div class="panel-body">
	                	<form class="am-form">
	                		<div class="am-g">
	                			<div class="am-form-group">
							      <input type="email" class="am-radius"  placeholder="Username">
							    </div>
							
							    <div class="am-form-group form-horizontal m-t-20">
							      <input type="password" class="am-radius"  placeholder="Password">
							    </div>
							    
							    <div class="am-form-group ">
		                           	<label style="font-weight: normal;color: #999;">
								        <input type="checkbox" class="remeber"> Remember me
								    </label>
		                        </div>
		                        
		                        <div class="am-form-group ">
		                        	<button type="button" class="am-btn am-btn-primary am-radius" style="width: 100%;height: 100%;">Log In</button>
		                        </div>
		                        
		                        <div class="am-form-group ">
		                        <a href="#" class="text-muted"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
		                        </div>
	                		</div>

	                	</form>
							
	                </div>
	            </div>
			</div>
		</div>
	</body>
</html>
