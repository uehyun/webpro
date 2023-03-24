<%@page import="kr.or.ddit.lprod.vo.LprodVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//Controller에서 저장된 처리 결과값을 꺼낸다.
List<LprodVO> varList = (List<LprodVO>) request.getAttribute("lprodList");
%>
[

<%
	for(int i=0; i<varList.size(); i++) {
		LprodVO vo = varList.get(i);
		if(i>0) out.print(",");
%>
	{
		"id" : "<%= vo.getLprod_id() %>",
		"gu" : "<%= vo.getLprod_gu() %>",
		"nm" : "<%= vo.getLprod_nm() %>"
	}
<%
	}
%>
]