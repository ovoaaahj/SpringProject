<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
  font-family: "Lato", sans-serif;
  
}

div.sidenav>div{
	font-size:30px;
	color: white;
	text-decoration:underline;
	
}
 div.alls{
 	width:1200px;
 /*	border:1px solid red; */
 	margin:auto;
 	height:800px;
 }
div.sidenav>div.hover {
	font-color: #f1f1f1;
}
.sidenav {
  height: 500px;
  width: 200px;
  position: relative;
  z-index: 1;
  top: 0;
  left: 0;
  background-color:white;
  overflow-x: hidden;
  padding-top: 20px;
  padding-bottom: 0px;
  border-right:1px solid gray;
  margin-top:30px;
}

ul.adminaside_ul{
		list-style:none;
		margin-top:100px;
		/* border:1px solid blue; */
		margin-top:0;
		
	}
	
	 ul.adminaside_ul li{
		
		border-bottom:1px solid gray;
		padding : 5px;
		font-size:20px;
		font-weight:70;
		 padding:5px;
	}
	
	ul.adminaside_ul li div.choose{
		display:inline-block;
		padding-right:3px;
		padding:5px;
	}
	 
	ul.adminaside_ul li div.choose:hover{
		 -webkit-transform: scale(1.5,1.5);
    	-moz-transform: scale(1.5,1.5);
    	-o-transform: scale(1.5,1.5);
   		 -ms-transform: scale(1.5,1.5);
   		 transform: scale(1.5,1.5);
	} 
	 h2{
		 border-bottom:2px solid gray;
		 height:60px;
		 padding-top:30px;
		 font-Size:30px;
		 font-weight:70;
		 margin-top:20px;
	}
</style>
</head>
<body>
<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="alls">
	<div class="sidenav">
		<h2>관리자메뉴</h2>
		<ul class=adminaside_ul>
		<li><a href="http://localhost:9000/project/admin/member_list.do"><div class="choose">회원관리</div></a></li>
		<li><a href="http://localhost:9000/project/admin/product_list.do"><div class="choose">상품관리</div></a></li>
		<li><div class="choose">공지사항관리</div></li>
		</ul>
	
					
			
	</div>
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>