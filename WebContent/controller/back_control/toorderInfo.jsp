<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%!
	OrderDao orderDao = new OrderDaoImpl(); 
	OrderItemDao itemDao = new OrderItemDaoImpl();	
%>

<% 
	//设置请求编码
	request.setCharacterEncoding("UTF-8");

	String idStr = request.getParameter("id");
	
	
	Integer orderId = Integer.valueOf(idStr);
	
	
	Order o = orderDao.queryById(orderId);
	List<OrderItem> items = itemDao.queryList(orderId);
	
	request.setAttribute("orderInfo", o);
	request.setAttribute("itemInfo", items);

	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/orderInfo.jsp");
	rd.forward(request, response);
%>