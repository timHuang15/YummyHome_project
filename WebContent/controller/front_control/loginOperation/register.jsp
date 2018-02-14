<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%!
	CustomerDao customerDao = new CustomerDaoImp();
%>

<%
	//设置请求编码
	request.setCharacterEncoding("UTF-8");

	//获取请求参数
	String StName = request.getParameter("customer_name");
	String StUserName = request.getParameter("customer_user_name");
	String StPhone = request.getParameter("customer_phone");
	String StPwd = request.getParameter("customer_pwd");
	
	Customer c = new Customer();
	c.setCustomer_name(StName);
	c.setCustomer_user_name(StUserName);
	c.setCustomer_phone(StPhone);
	c.setCustomer_pwd(StPwd);
	
	customerDao.insert(c);
	
	response.sendRedirect(request.getContextPath()+"/controller/front_control/tofrontLogin.jsp");
	
%>