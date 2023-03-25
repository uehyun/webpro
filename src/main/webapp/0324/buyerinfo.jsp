<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/mystyle.css">
<script type="text/javascript" src="../js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
	 xhr = new XMLHttpRequest;
$(function(){
	$.ajax({
		url : "http://localhost/jqpro/0324/buyerController.jsp",
		type : 'get',
		success : function(res){
			code = "";
			$.each(res,function(i, v){
				code += `<div onclick=getBuyerInfo("\${v.id}");>\${v.name}</div>`;
			})
			$('#buyerId').html(code);
			
		},
		error : function(xhr) {
			alert("현재 상태 : " + xhr.status);
		},
		dataType : 'json'
		
	});
})	
	
function getBuyerInfo(buyerId) {
	$.ajax({
		url : "http://localhost/jqpro/0324/buyerInfoController.jsp",
		type : "post",
		data : {
			id : buyerId
		},
		dataType : 'json',
		success : function (res) {
			code = `<p>아이디 :  \${res.id}</p>`;
			code += `<p>이름 :  \${res.name}</p>`;
			code += `<p>상품코드 : \${res.lgu}</p>`;
			code += `<p>은행 :  \${res.bank}</p>`;
			code += `<p>계좌번호 :  \${res.bankno}</p>`;
			code += `<p>예금주 :  \${res.bankname}</p>`;
			code += `<p>주소 :  \${res.add1}</p>`;
			code += `<p>메일 :  \${res.mail}</p>`;
			$('#buyerInfo').html(code);
		}
	});
}
</script>
<style>
div {
	border : none;
	height : 20px;
	text-align: center;
	font-weight: bold;
	width : 150px;
	padding : 0;
	margin : 0;
}

#buyerInfo {
	width : 400px;
}
</style>
</head>
<body>

	<div class="box">
		
		<div class="result" id="result1">
		<table border="1">
			<tr>
				<td>거래처 이름</td>
				<td>거래처상세정보</td>
			</tr>
			<tr>
				<td id="buyerId"></td>
				<td id="buyerInfo"></td>
			</tr>
		
		</table>
		
		</div>
	</div>

</body>
</html>