<%@page import="kr.or.ddit.member.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//Controller에서 저장된 처리 결과값을 꺼낸다.
List<MemberVO> varList = (List<MemberVO>) request.getAttribute("memList");
%>
[
	
<%
	for(int i=0; i<varList.size(); i++){
		MemberVO vo = varList.get(i);
		if(i>0) out.print(",");
	
%>
	{
		"id" : "<%= vo.getMem_id() %>",
		"name" : "<%= vo.getMem_name() %>",
		"tel" : "<%= vo.getMem_hp() %>",
		"mail" : "<%= vo.getMem_mail() %>"
	}
<%
	}
%>


]