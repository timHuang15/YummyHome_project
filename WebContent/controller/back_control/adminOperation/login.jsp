<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%!
	AdminDao adminDao = new AdminDaoImpl();

	private Admin login(String username,String password)
	{
		Admin admin = adminDao.queryByUsername(username);
		if(null!=admin && admin.getAdmin_pwd().equals(password))
		{
			return admin;	
		}
		
		return null;
	}
%>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	Admin a = login(username, password);
	
	if(a!=null){
		session.setAttribute("adminLogined", a);
		session.setMaxInactiveInterval(120*60);
		response.sendRedirect(request.getContextPath()+"/controller/back_control/toorderSelectTable.jsp");
	}
	else{
		response.sendRedirect(request.getContextPath()+"/controller/back_control/tobackLogin.jsp");
	}
%>