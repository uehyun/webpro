<%@page import="kr.or.ddit.buyer.vo.BuyerVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
BuyerVO vo = (BuyerVO) request.getAttribute("BuyerInfo");
%>

{
	"id" : "<%= vo.getBuyer_id() %>",
	"name" : "<%= vo.getBuyer_name() %>",
	"lgu" : "<%= vo.getBuyer_lgu() %>",
	"bank" : "<%= vo.getBuyer_bank() %>",
	"bankno" : "<%= vo.getBuyer_bankno() %>",
	"bankname" : "<%= vo.getBuyer_bankname() %>",
	"add1" : "<%= vo.getBuyer_add1() %>",
	"mail" : "<%= vo.getBuyer_mail() %>"
}

	