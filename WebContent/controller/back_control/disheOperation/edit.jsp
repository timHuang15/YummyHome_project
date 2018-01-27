<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! DisheDao disheDao = new DisheDaoImpl();%>

<%
	//设置请求编码
	request.setCharacterEncoding("utf-8");
	//获取请求参数
	String idStr = request.getParameter("dishe_id");
	String StName = request.getParameter("dishe_name");
	//String StCategory = request.getParameter("dishe_category");
	String StInfo = request.getParameter("dishe_info");
	String StPrice = request.getParameter("dishe_price");
	String StTotal = request.getParameter("dishe_total");
	String StSurplus = request.getParameter("dishe_surplus");
	//转换参数的类型
	Integer dId = Integer.valueOf(idStr);
	Double  dprice = Double.valueOf(StPrice);
	Integer dtotal = Integer.valueOf(StTotal);
	Integer dsurplus = Integer.valueOf(StSurplus);
	
	Dishe d = new Dishe();
	d.setDishe_id(dId);
	d.setDishe_name(StName);
	//d.setDishe_category(StCategory);
	d.setDishe_info(StInfo);
	d.setDishe_price(dprice);
	d.setDishe_total(dtotal);
	d.setDishe_surplus(dsurplus);
	
	disheDao.update(d);
	//转到视图呈现
	request.setAttribute("msg", "修改成功");
	request.setAttribute("targetPage", "/controller/back_control/todisheTable.jsp");
	
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/public/msg.jsp");
	rd.forward(request, response);
%>
    