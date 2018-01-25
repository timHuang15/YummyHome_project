<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! CustomerDao cd = new CustomerDaoImp();%>

<% 
	String idStr = request.getParameter("id");
	Integer id = Integer.valueOf(idStr);
	Customer c = cd.queryById(id);
	
	request.setAttribute("customerInfo", c);

	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/customerChange.jsp");
	rd.forward(request, response);
%>
    