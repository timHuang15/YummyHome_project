<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! 
TableDao td = new TableDaoImpl();
%>

<%
	List<Table> list = td.queryList();

	request.setAttribute("tableList", list);
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/tableTable.jsp");
	rd.forward(request, response);
%>
    