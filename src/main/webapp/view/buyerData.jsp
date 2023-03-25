<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<BuyerVO> varList = (List<BuyerVO>) request.getAttribute("BuyerList");
%>

[
<%
	for(int i=0; i<varList.size(); i++) {
		BuyerVO vo = varList.get(i);
		if(i>0) out.print(",");
%>
	{
		"id" : "<%= vo.getBuyer_id() %>",
		"name" : "<%= vo.getBuyer_name() %>"

	}
<%
	}
%>
]


	