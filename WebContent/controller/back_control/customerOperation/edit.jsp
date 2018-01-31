<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>

<%! CustomerDao cd = new CustomerDaoImp();%>

<%
	//设置请求编码
	request.setCharacterEncoding("utf-8");
	//获取请求参数
	String idStr = request.getParameter("customer_id");
	String StName = request.getParameter("customer_name");
	String StUserName = request.getParameter("customer_user_name");
	String StPhone = request.getParameter("customer_phone");
	String StPwd = request.getParameter("customer_pwd");
	//转换参数的类型
	Integer cId = Integer.valueOf(idStr);
	
	Customer c = new Customer();
	c.setCustomer_id(cId);
	c.setCustomer_name(StName);
	c.setCustomer_user_name(StUserName);
	c.setCustomer_phone(StPhone);
	c.setCustomer_pwd(StPwd);
	
	cd.update(c);
	//转到视图呈现
	request.setAttribute("msg", "修改成功");
	request.setAttribute("targetPage", "/controller/back_control/tocustomerTable.jsp");
	
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/public/msg.jsp");
	rd.forward(request, response);
%>
    