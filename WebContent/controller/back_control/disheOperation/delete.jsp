<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! DisheDao disheDao = new DisheDaoImpl(); %>

<%
	//获得要删除的ID
	String[] idStrs = request.getParameterValues("id");
	Integer[] ids = new Integer[idStrs.length];
	for(int i=0;i<idStrs.length;i++){
		ids[i] = Integer.valueOf(idStrs[i]);
	}
	//调用dao进行删除
	disheDao.delete(ids);
	//转到视图呈现
	request.setAttribute("msg", "删除成功");
	request.setAttribute("targetPage", "/controller/back_control/todisheTable.jsp");
	
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/public/msg.jsp");
	rd.forward(request, response);
%>
    