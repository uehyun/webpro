<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String hobby[] = request.getParameterValues("hobby");
	String str = "";
	for(int i=0; i<hobby.length; i++) {
		str += hobby[i] + " ";
	}
%>
<%= str %>
</body>
</html>