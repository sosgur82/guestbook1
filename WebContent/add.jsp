<%@page import="com.bigdata2017.guestbook.dao.GuestbookDao"%>
<%@page import="com.bigdata2017.guestbook.vo.GuestbookVo"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); 
    	String Name = request.getParameter("name");
    	String password = request.getParameter("pass");
    	String content = request.getParameter("content");
    	
    	GuestbookVo vo = new GuestbookVo();
    	vo.setName(Name);
    	vo.setContent(content);
    	vo.setPassword(password);
    	
    	new GuestbookDao().insert(vo);
    	
    	response.sendRedirect(request.getContextPath());
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록되었습니다.</h1>
	<a href="index.jsp">리스트 돌아가기</a>
	
</body>
</html>