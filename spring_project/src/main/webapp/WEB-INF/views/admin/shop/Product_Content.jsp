<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/project/css/wook.css">
<script>


</script>


</head>
<body>
<jsp:include page="../../header.jsp" />

<div class="content" style="height:1300px;">
	<div style="text-align:center;margin-top:35px;">
		<h2>상품상세정보등록</h2>
	</div>
	<div class="product_content_insertMain" >
		<form name="shopinsertForm" action="shop_insert_proc.do" method="post" enctype="multipart/form-data">
			<ul style=" list-style:none; padding-left:0px">
   
				<li>
					<label>상품명</label>
					<input type='text' id="ptitle" name="ptitle">
				</li>
				
			
			
			</ul>
		
		
		
		
		</form>
	</div><!-- product_content_insertMain -->










</div>
<jsp:include page="../../footer.jsp" />
</body>
</html>