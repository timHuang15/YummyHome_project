<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/orderSelectTable.jsp");
	rd.forward(request, response);
%>
    