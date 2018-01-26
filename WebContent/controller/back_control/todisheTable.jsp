<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>
<%@page import="yummyhome.util.*" %>

<%! DisheDao disheDao = new DisheDaoImpl();%>
<% 
	//设置请求编码
	request.setCharacterEncoding("UTF-8");	

	WhereCondition whereCondition = SqlUtil.buildWhere(request);
	
	List<Dishe> list = disheDao.queryList(whereCondition.getWhereSql(),whereCondition.getWhereParams());
	request.setAttribute("disheList", list);

	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/disheTable.jsp");
	rd.forward(request, response);
%>