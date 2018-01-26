<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! DisheDao disheDao = new DisheDaoImpl();%>

<% 
	String idStr = request.getParameter("id");
	Integer id = Integer.valueOf(idStr);
	Dishe d = disheDao.queryById(id);
	
	request.setAttribute("disheInfo", d);

	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/disheChange.jsp");
	rd.forward(request, response);
%>
    