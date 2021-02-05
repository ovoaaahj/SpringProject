<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세정보 보기</title>
<style>
	div.admin_product_content div.toptitle{
		 text-align:center;
	 	
	}
	div.admin_product_content{
		border:1px solid red;
		width:1000px;
		height:800px;
		margin:auto;
	}
	table.product_content_table,
	table.product_content_table td,
	table.product_content_table tr{
	 	border:1px solid black;
	 	border-collapse: collapse;
	}
	table.product_content_table{
		margin:auto;
		width:800px;
	}
	
	table.product_content_table td img {
		border: 1px solid red;
		height:400px;
		width:400px;
		padding-left:80px;
		margin:auto;
	}
	table.product_content_table td div.title{
		/*border:1px solid gray;*/
		display:inline-block;
		
	}
	table.product_content_table td div.product{
		border-bottom:1px solid gray;
		display:inline-block;
		
	}
	table.product_content_table td.price{
		margin:auto;
		height:30px;
		padding-left:80px;
	}
	table.product_content_table td div.price{
		margin:10px 0;
	/**	 border:1px solid blue; */
		 display:inline-block;
		 width:150px;
		 height:20px;
	}
	table.product_content_table td div.price label.price{
		background-color:lightgray;
	}
	table.product_content_table td button{
		border:1px solid gray;
		border-radius:4px;
		margin:10px 10px;
		width:130px;
		height:40px;
		background-color:white;
		
	}
	table.product_content_table td.button{
		padding-left:80px;
	}
</style>



</head>
<body>
<div class="admin_product_content">
	<div class="toptitle"><h2>상세 정보 확인</h2></div>
	<table class="product_content_table">
		
		<tr>
			<td rowspan="5"><img src="http://localhost:9000/project/resources/upload/ ${vo.pmsphoto }"></td>
		</tr>
		<tr>
			<td>
				<div class="title">제품명:</div>
				<div class="product">${vo.ptitle }</div>
			</td>
		</tr>
		<tr>	
			<td>
				<div class="title">해쉬설명:</div>
				<div class="product">${vo.phash }</div>
			</td>
		</tr>
		<tr>	
			<td>
				<div class="title">대분류:</div>
				<div class="product">${vo.pkind1 }</div>
			</td>
		</tr>
		<tr>	
			<td>
				<div class="title">소분류:</div>
				<div class="product">${vo.pkind2 }</div>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="price">
				<div class="price">
					<label>100g가격:</label>
					<label class="price">
						<c:if test ="${!empty vo.pprice100 }">${vo.pprice100 }
					</c:if></label>
				</div>
				
				<div class="price">
					<label>200g가격:</label>
					<label class="price"><c:if test ="${!empty vo.pprice200 }">${vo.pprice200 }</c:if></label>
					<label class="price"><c:if test ="${empty vo.pprice200 }">0</c:if></label>
				</div>
				
				<div class="price">
					<label>500g가격:</label>
					<label class="price"><c:if test ="${!empty vo.pprice500 }">${vo.pprice500 }</c:if></label>
					<label class="price"><c:if test ="${empty vo.pprice500 }">0</c:if></label>
				</div>
				
				<div class="price">
					<label>1000g가격:</label>
					<label class="price"><c:if test ="${!empty vo.pprice1000 }">${vo.pprice1000 }</c:if></label>
					<label class="price"><c:if test ="${empty vo.pprice1000 }">0</c:if></label>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="button">
				<button type="button" id="contentshow">상세설명보기</button>
				<a href="http://localhost:9000/project/productContent_insert.do?pid=${vo.pid }"><button type="button" id="contentwrite">상세설명작성</button></a>
				<a href=""><button type="button" id="contentupdate">상세정보수정</button></a>
				<a href="http://localhost:9000/project/admin/product_list.do"><button type="button" id="contentupdate">뒤로가기</button></a>
			</td>
		</tr>
	</table>



</div>

</body>
</html>