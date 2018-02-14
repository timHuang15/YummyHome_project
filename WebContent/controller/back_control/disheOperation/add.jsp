<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="yummyhome.dao.*" %>
<%@page import="yummyhome.dao.Impl.*" %>
<%@page import="yummyhome.entity.*" %>
<%@page import="com.google.gson.*" %>

<%! 
	DisheDao disheDao = new DisheDaoImpl();
	Gson gson = new Gson();
%>
	
<%
//设置请求编码
	request.setCharacterEncoding("UTF-8");

	String StDisheName = request.getParameter("dishe_name");
	String StDisheCategory = request.getParameter("dishe_category");
	String StDishePrice = request.getParameter("dishe_price");
	String StDisheTotal = request.getParameter("dishe_total");
	String StDisheInfo = request.getParameter("dishe_info");
	String[] StDisheImages = request.getParameterValues("dishe_images");
	
	Double dDishePrice = Double.valueOf(StDishePrice);
	Integer IDisheTotal = Integer.valueOf(StDisheTotal);
	
	Dishe dishe = new Dishe();
	dishe.setDishe_name(StDisheName);
	dishe.setDishe_category(StDisheCategory);
	dishe.setDishe_price(dDishePrice);
	dishe.setDishe_total(IDisheTotal);
	dishe.setDishe_surplus(IDisheTotal);
	dishe.setDishe_info(StDisheInfo);
	dishe.setDishe_images(gson.toJson(StDisheImages));
	
	disheDao.insert(dishe);
	//转到视图呈现
	request.setAttribute("msg", "添加成功");
	request.setAttribute("targetPage", "/controller/back_control/todisheAdd.jsp");
		
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/public/msg.jsp");
	rd.forward(request, response);

%>