<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border : 1px solid blue;
}
td {
	width: 300px;
	height : 70px;
	text-align: center;
}

</style>
</head>
<body>
<%
//요청 시 전송데이터 받기

//데이터를 처리 수행 DB와 연결해서 CRUD

//처리결과로 응답데이터를 생성 - json Object 배열 객체
%>
<table border="1">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>전화번호</td>
		<td>주소</td>
	</tr>
	<tr>
		<td>a001</td>
		<td>홍길동</td>
		<td>010-1234-5678</td>
		<td>대전시 오류동</td>
	</tr>
	<tr>
		<td>b001</td>
		<td>홍길은</td>
		<td>010-1154-8678</td>
		<td>대전시 육류동</td>
	</tr>
	<tr>
		<td>c001</td>
		<td>홍길금</td>
		<td>010-1204-4378</td>
		<td>대전시 칠류동</td>
	</tr>

</table>
</body>
</html>