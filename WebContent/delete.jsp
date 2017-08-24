<%@page import="com.bigdata2017.guestbook.dao.GuestbookDao"%>
<%@page import="com.bigdata2017.guestbook.vo.GuestbookVo"%>
<%@page import="java.lang.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); 
    	String password = request.getParameter("password");
    	String no = request.getParameter("no");
    	
    	GuestbookVo vo = new GuestbookVo();
    	
    	vo.setNo(Long.parseLong(no));
    	vo.setPassword(password);
    	
    	new GuestbookDao().delete(vo);
    	
    	response.sendRedirect(request.getContextPath());
%>