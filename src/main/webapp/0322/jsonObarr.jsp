<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 요청 시 전송데이터 받기

// 데이터를 처리 수행 DB와 연결해서 CRUD

// 처리결과로 응답데이터를 생성 - json Object 배열 객체
%>
[
	{
		"id" : "a001",
		"name" : "홍길동",
		"tel" : "010-1234-5678",
		"addr" : "대전시 중구 오류동"
	},
	
	{
		"id" : "b001",
		"name" : "이발소",
		"tel" : "010-1624-1238",
		"addr" : "대전시 서구 탄방동"
	},
	
	{
		"id" : "c001",
		"name" : "소뚜껑",
		"tel" : "010-9344-5138",
		"addr" : "대전시 유성구 노은동"
	}
]