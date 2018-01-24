<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! TableDao td = new TableDaoImpl();%>

<% 
	String idStr = request.getParameter("id");
	Integer id = Integer.valueOf(idStr);
	Table t = td.queryById(id);
	
	request.setAttribute("tableInfo", t);

	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/tableChange.jsp");
	rd.forward(request, response);
%>
    