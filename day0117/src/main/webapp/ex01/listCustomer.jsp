<%@page import="com.google.gson.Gson"%>
<%@page import="com.sist.vo.CustomerVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.CustomerDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	 CustomerDAO dao = new CustomerDAO();
	 ArrayList<CustomerVO> list = dao.listAll();
	 Gson gson = new Gson(); 
 %>
 
 <%=	gson.toJson(list)	%>