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
	$('#lprod').on('click', function(){
		$.ajax({
			url : "http://localhost/jqpro/0324/LprodController.jsp",
			type : 'get',
			success : function(res){
				code = "<table border='1'>";
				code += "<tr><td>상품번호</td><td>상품코드</td>";
				code += "<td>상품명</td></tr>";
				$.each(res, function(i, v){
					code += `<tr><td> \${v.id} </td><td> \${v.gu} </td>`;
					code += `<td> \${v.nm} </td></tr>`;
					})
				code += `</table>`;
				$('#result1').html(code);
			},
			error : function(xhr) {
				alert("상태 : " + xhr.status);
			},
			dataType : 'json'
		})
	})
})
</script>
<style>
table {
	border : 2px dotted orange;
}
table tr:first-child {
	background: skyblue;
}
td {
	width : 150px;
	height : 70px;
	text-align: center;
}

</style>
</head>
<body>
<body>

	<div class="box">
		<p>
		</p>
		
		<input type="button" value="LPROD리스트" id="lprod">
		<br><br>
		<div class="result" id="result1"></div>
	</div>
</body>
</html>