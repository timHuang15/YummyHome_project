<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/backLogin.jsp");
	rd.forward(request, response);
%>