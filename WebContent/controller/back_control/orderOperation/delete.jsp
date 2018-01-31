<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! 
	OrderDao orderDao = new OrderDaoImpl();
	OrderItemDao ItemDao = new OrderItemDaoImpl();
%>

<%
	//获得要删除的itemID
	String[] idStrs = request.getParameterValues("id");
	Integer[] ids = new Integer[idStrs.length];
	for(int i=0;i<idStrs.length;i++){
		ids[i] = Integer.valueOf(idStrs[i]);
	}
	//调用dao进行删除
	
	orderDao.delete(ids);
	ItemDao.delete(ids);
	
	//转到视图呈现
	request.setAttribute("msg", "删除成功");
	request.setAttribute("targetPage", "/controller/back_control/toorderSelectTable.jsp");
	
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/public/msg.jsp");
	rd.forward(request, response);
%>
    