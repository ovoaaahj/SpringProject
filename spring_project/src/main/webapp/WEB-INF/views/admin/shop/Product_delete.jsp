<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
	String pid=request.getParameter("del_list");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<style>
	div.productDeleteContent{
		border:1px solid red;
		text-align:center;
		margin:auto;
	}
	div.productDeleteContent table.productDeleteTable{
		width:800px;
		height:600px;
		text-align:center;
		margin:auto;
	}
	
	div.productDeleteContent table.productDeleteTable,
	div.productDeleteContent table.productDeleteTable tr,
	div.productDeleteContent table.productDeleteTable td{
		border:1px solid blue;
		
	}
	
	div.productDeleteContent table.productDeleteTable td{
		heigth:30px;
	}
	
	div.productDeleteContent table.productDeleteTable td img{
		width:300px;
		height:300px;
	}
	
	div.productDeleteContent table.productDeleteTable td button{
		width:100px;
		height:30px;
		margin:0 5px;
	}

</style>
</head>
<body>
<jsp:include page="../../header.jsp" />
	<div class="productDeleteContent">
		<table class="productDeleteTable">
			<tr>
				<td>
					<img src="http://localhost:9000/project/images/${vo.pmphoto }">
				</td>
			</tr>
			<tr>
				<td>
					${vo.ptitle }
				</td>
			</tr>
			<tr>
				<td>
					${vo.pprice100 }
				</td>
			</tr>
			<tr>
				<td>
					<a href="http://localhost:9000/project/admin/product_delete_proc.do?pid=${vo.pid }"><button type="button" id="deleteGo">삭제하기</button></a>
					<a href="http://localhost:9000/project/admin/product_list.do"><button type="button" id="back">뒤로가기</button></a>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="../../footer.jsp" />
</body>
</html>