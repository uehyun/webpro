<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="kr.or.ddit.lprod.service.LprodServiceImpl"%>
<%@page import="kr.or.ddit.lprod.service.ILprodService"%>
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
// 요청 데이터 아직은 없음 ex)회원 정보입력
	
// service객체
ILprodService service = LprodServiceImpl.getInstance();

List<LprodVO> lprodList = service.selectAll();

// 처리결과를 request에 저장
request.setAttribute("lprodList", lprodList);

//처리 결과를 view페이지로 이동시켜 응답데이터를 생성 - json Object배열 객체 생성
//이동방법 - forward(list내용을 view에도 공유해서 사용가능)
RequestDispatcher disp = request.getRequestDispatcher("/view/lprodData.jsp");
disp.forward(request, response);
%>
</body>
</html>