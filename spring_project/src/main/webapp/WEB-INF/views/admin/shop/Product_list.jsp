<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<style>
   div.admin_shop_content{
   		margin:auto;
   }
	div.admin_product_list{
		border:1px solid purple;
		text-align:auto;
		width:1000px;
		margin:auto;
	}
	div.admin_product_list div.product_TitleName{
		border:1px solid red;
		text-align:center;
	}
	div.admin_product_list div.product_TitleName h2{
		border-bottom:1px solid gray;
		display:inline-block;
		width:200px;
		padding-bottom:3px;
	}
	div.admin_product_list div.search{
		border:1px solid blue;
		height:40px;
		text-align:right;
	}
	div.admin_product_list div.search select{
		text-align:center;
		border:1px solid gray;
		border-radius:4px;
		width:80px;
		height:30px;
	}
	div.admin_product_list div.search input[type='text']{
		border:1px solid gray;
		border-radius:4px;
		width:150px;
		height:25px;
	}
	div.admin_product_list div.search button{
		border-radius:4px;
		width:50px;
		height:28px;
		margin-top:3px;
	}
	div.product_list_table{
		border:1px solid orange;
		width:90%;
		margin:auto;
	}
	
	div.product_list_table table.product_table,
	div.product_list_table table.product_table tr,
	div.product_list_table table.product_table td,
	div.product_list_table table.product_table th{
		border:1px solid gray;
		border-collapse: collapse;
	}
	div.product_list_table table.product_table td{
		text-align:center;
		width:180px;
		height:30px;
	}
	div.product_list_table table.product_table td button{
		border:1px solid gray;
		border-radius:4px;
		background-color:white;
		width:100px;
		height:30px;
		margin:10px;
	}
</style>
<script>
	$(document).ready(function(){
		$("#deleteProduct").click(function(){
			  var pid="";
		      $("input[name='chk']:checked").each(function(index){
		         pid += $("input[name='chk']:checked").attr("id");
		      });
		      
		      location.href='http://localhost:9000/project/admin/product_delete.do?pid='+pid;
		});
	});//ready

</script>
</head>
<body>
<div class="admin_shop_content">
<div class="admin_product_list">
	<div class="product_TitleName">
		<h2>상품목록</h2>
	</div>
	<div class="search">
		<select>
			<option>이름</option>
			<option>대분류</option>
			<option>소분류</option>
		</select>
		<input type='text'>
		<button type='button'>검색</button>
	</div>
	<div class="product_list_table">
		<table class="product_table">
			<tr>
				<th>선택</th><th>제품명</th><th>가격</th><th>대분류</th><th>소분류</th><th>할인여부</th>
			</tr>
			<c:forEach var="vo"  items="${list}">
			<tr>
				<td><input type='checkbox' name='chk' id=${vo.pid } ></td>
				<td>${vo.ptitle}</td>
				<td>${vo.pprice100}</td>
				<td>${vo.pkind1 }</td>
				<td>${vo.pkind2 }</td>
				<td>${vo.psub1 }</td> <!-- 여기는 O,X로 수정해야함 -->
			</tr>
			</c:forEach>
			<tr>
			<td colspan="6">
				<a href="http://localhost:9000/project/admin_product_insert.do"><button type='button'>상품추가</button></a>
				<button type='button' id="deleteProduct">상품삭제</button>
			</td>
			</tr>
		</table>
	</div>

</div>
</div>
</body>
</html>