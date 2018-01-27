<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! CustomerDao cd = new CustomerDaoImp();%>

<%
	//设置请求编码
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding ("UTF-8");
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
	
	cd.insert(c);
	//转到视图呈现
	request.setAttribute("msg", "添加成功");
	request.setAttribute("targetPage", "/controller/back_control/tocustomerAdd.jsp");
	
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/public/msg.jsp");
	rd.forward(request, response);
%>
    