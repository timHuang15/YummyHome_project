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
	
	//获取当前页
	long currentPage = 1;
	try{
		currentPage = Long.parseLong(request.getParameter("currentPage"));
		}catch(NumberFormatException e){
			
		}
	//设置每页多少条记录
	long pageSize = 10;
	//查出结果集
	List<Dishe> list = disheDao.pagequeryList(whereCondition.getWhereSql(), whereCondition.getWhereParams(), currentPage, pageSize);
	//查出结果集的总记录数
	long totalRecords = disheDao.queryCount(whereCondition.getWhereSql(),whereCondition.getWhereParams());
	//封装成PageDate实体
	PageData<Dishe> pageData = new PageData<Dishe>(currentPage,pageSize,totalRecords,list);
	//把分页后的数据传至页面
	request.setAttribute("dishePageList", pageData);
	
	//List<Dishe> list = disheDao.queryList(whereCondition.getWhereSql(),whereCondition.getWhereParams());
	//request.setAttribute("disheList", list);

	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/backstage/disheTable.jsp");
	rd.forward(request, response);
%>