<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style type="text/css">
	.submit{float:left;}
	.upload{float:left;}
</style>
</head>
<body>
<!-- 文件上传一定要加enctype="multipart/form-data" -->
	<form action="<%=request.getContextPath() %>/controller/back_control/disheOperation/handleUpload.jsp"
		  method="post" enctype="multipart/form-data">
		<input type="file" name="upload" class="upload"/>
		<input type="submit" value="上传" class="submit"/>
	</form>
</body>
</html>