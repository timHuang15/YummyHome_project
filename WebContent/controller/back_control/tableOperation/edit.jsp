<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! TableDao td = new TableDaoImpl();%>

<%
	//设置请求编码
	request.setCharacterEncoding("utf-8");
	//获取请求参数
	String idStr = request.getParameter("table_id");
	String StPeople = request.getParameter("table_people");
	String StTotal = request.getParameter("table_total");
	String StSurplus = request.getParameter("table_surplus");
	String StPrice = request.getParameter("table_price");
	//转换参数的类型
	Integer tId = Integer.valueOf(idStr);
	Integer tPeople = Integer.valueOf(StPeople);
	Integer tTotal = Integer.valueOf(StTotal);
	Integer tSurplus = Integer.valueOf(StSurplus);
	Double tPrice = Double.valueOf(StPrice);
	
	Table t = new Table();
	t.setTable_id(tId);
	t.setTable_people(tPeople);
	t.setTable_total(tTotal);
	t.setTable_surplus(tSurplus);
	t.setTable_price(tPrice);
	
	td.update(t);
	//转到视图呈现
	request.setAttribute("msg", "修改成功");
	request.setAttribute("targetPage", "/controller/back_control/totableTable.jsp");
	
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/public/msg.jsp");
	rd.forward(request, response);
%>
    