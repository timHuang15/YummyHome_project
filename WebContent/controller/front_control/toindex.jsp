<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>
<%@page import="yummyhome.util.*" %>

<%! DisheDao disheDao = new DisheDaoImpl();%>

<% 
	List<Dishe> dishes = disheDao.pagequeryList(null, null, 2, 4);

	request.setAttribute("Showdishes", dishes);

	String target = "/WEB-INF/views/frontstage/index.jsp";
	RequsetUtils.forward(target, request, response);
	
%>