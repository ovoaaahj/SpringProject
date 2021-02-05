<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세정보 보기</title>
<style>
	table.product_content_table,
	table.product_content_table td,
	table.product_content_table tr{
	 	border:1px solid black;
	}
	table.product_content_table td img {
		border: 1px solid red;
		height:300px;
		width:300px;
	}
	table.product_content_table td div.price{
	 border:1px solid blue;
	 display:inline-block;
	}
	
</style>



</head>
<body>
<div class="admin_product_content">
	<h2>상세 정보 확인</h2>
	<table class="product_content_table">
		
		<tr>
			<td rowspan="5"><img src="http://localhost:9000/project/resources/upload/ ${vo.pmsphoto }"></td>
		</tr>
		<tr>
			<td>${vo.ptitle }</td>
		</tr>
		<tr>	
			<td>${vo.phash }</td>
		</tr>
		<tr>	
			<td>${vo.pkind1 }</td>
		</tr>
		<tr>	
			<td>${vo.pkind2 }</td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="price">
					<c:if test ="${!empty vo.pprice100 }">${vo.pprice100 }</c:if>
				</div>
				
				<div class="price">
					<c:if test ="${!empty vo.pprice200 }">${vo.pprice200 }</c:if>
					<c:if test ="${empty vo.pprice200 }">0</c:if>
				</div>
				
				<div class="price">
					<c:if test ="${!empty vo.pprice500 }">${vo.pprice500 }</c:if>
					<c:if test ="${empty vo.pprice500 }">0</c:if>
				</div>
				
				<div class="price">
					<c:if test ="${!empty vo.pprice1000 }">${vo.pprice1000 }</c:if>
					<c:if test ="${empty vo.pprice1000 }">0</c:if>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button type="button" id="contentshow">상세정보보기</button>
				<a href="http://localhost:9000/project/productContent_insert.do?pid=${vo.pid }"><button type="button" id="contentwrite">상세정보작성</button></a>
				<a href=""><button type="button" id="contentupdate">상세정보수정</button></a>
				<a href="http://localhost:9000/project/admin/product_list.do"><button type="button" id="contentupdate">뒤로가기</button></a>
			</td>
		</tr>
	</table>



</div>

</body>
</html>