<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! OrderDao orderDao = new OrderDaoImpl();%>

<%
	//设置请求编码
	request.setCharacterEncoding("utf-8");
	//获取请求参数
	String idStr = request.getParameter("order_id");
	String StState = request.getParameter("order_state");
	
	//转换参数的类型
	Integer oId = Integer.valueOf(idStr);
	
	Order o = new Order();
	o.setOrder_id(oId);
	o.setOrder_state(StState);
	
	orderDao.dealed(o);
	
	//cd.update(c);
	//转到视图呈现
	request.setAttribute("msg", "处理成功");
	request.setAttribute("targetPage", "/controller/back_control/toorderSelectTable.jsp");
	
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/public/msg.jsp");
	rd.forward(request, response);
%>
    