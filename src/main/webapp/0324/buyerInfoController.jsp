<%@page import="kr.or.ddit.buyer.service.BuyerServiceImpl"%>
<%@page import="kr.or.ddit.buyer.service.IBuyerService"%>
<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
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
IBuyerService service = BuyerServiceImpl.getInstance();

String id = request.getParameter("id");

BuyerVO vo = service.selectById(id);

request.setAttribute("BuyerInfo", vo);

RequestDispatcher disp = request.getRequestDispatcher("/view/buyerInfoData.jsp");
disp.forward(request, response);
%>

</body>
</html>