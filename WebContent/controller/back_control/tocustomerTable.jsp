<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! 
CustomerDao cd = new CustomerDaoImp();
%>

<% 
	List<Customer> list = cd.queryList();
	request.setAttribute("customerList", list);

	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/customerTable.jsp");
	rd.forward(request, response);
%>