<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

div.member_list_table{
	/*	border:1px solid purple; */
		text-align:auto;
		width:1000px;
		margin:auto;
		height:800px;
		padding-top:10px;
	}
	div.member_list_table div.product_TitleName{
	/*	border:1px solid red; */
		text-align:center;
	}
	div.member_list_table div.member_title h2{
		border-bottom:1px solid gray;
		border-top:1px solid gray;
		display:inline-block;
		width:900px;
		height:60px;
		font-Size:30px;
		padding-top:20px;
	}

/** admin aside */
	div.admin_member_content{
		width:1500px;
	}
	div.admin_member_content>aside.adminaside{
		margin-top:50px;
		width:200px;
		height:600px;
		border-right:1px solid gray;
		margin-left:50px;
		float:left;
	}
	aside.adminaside h2{
		 border-bottom:2px solid gray;
		 height:60px;
		 padding-top:30px;
		 font-Size:30px;
		 font-weight:70;
		 margin-top:20px;
	}
	aside.adminaside ul.adminaside_ul{
		list-style:none;
		margin-top:100px;
		/* border:1px solid blue; */
		margin-top:0;
	}
	
	aside.adminaside ul.adminaside_ul li{
		
		border-bottom:1px solid gray;
		padding : 5px;
		font-size:20px;
		font-weight:70;
		 padding:5px;
	}
	
	aside.adminaside ul.adminaside_ul li div.choose{
		display:inline-block;
		padding-right:3px;
		padding:5px;
	}
	 
	aside.adminaside ul.adminaside_ul li div.choose:hover{
		 -webkit-transform: scale(1.5,1.5);
    	-moz-transform: scale(1.5,1.5);
    	-o-transform: scale(1.5,1.5);
   		 -ms-transform: scale(1.5,1.5);
   		 transform: scale(1.5,1.5);
	} 
		
	 div.admin_member_content{
   		margin:auto;
   }
	div.admin_member_list{
		border:1px solid purple;
		text-align:auto;
		width:1000px;
		margin:auto;
		height:800px;
		padding-top:70px;
	}
	div.admin_member_list div.member_title{
		border:1px solid red;
		text-align:center;
	}
	div.admin_member_list div.member_title h2{
		border-bottom:1px solid gray;
		display:inline-block;
		width:200px;
		padding-bottom:3px;
	}
	
	div.admin_member_list{
		border:1px solid orange;
		width:90%;
		margin:auto;
	}
	
	div.admin_member_list table.member_list_table,
	div.admin_member_list table.member_list_table,
	div.admin_member_list table.member_list_table,
	div.admin_member_list table.member_list_table th{
		border:1px solid gray;
		border-collapse: collapse;
	}
	div.admin_member_list table.member_list_table td{
		text-align:center;
		width:180px;
		height:40px;
	}
</style>
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/project/js/am-pagination.js"></script>  
<script>
	$(document).ready(function(){
		
		//페이지 번호 및 링크 		
		var pager = jQuery("#ampaginationsm").pagination({
			maxSize : 5,			
			totals:'${dbCount}',
			page : '${reqPage}',
			pageSize : '${pageSize}',
					
			
			lastText : '&raquo;&raquo;',
			firstText : '&laquo;&laquo',
			prevTest : '&laquo;',
			nextTest : '&raquo;',
			
			btnSize : 'sm' 			
		}); 
		
		//
		jQuery("#ampaginationsm").on('am.pagination.change',function(e){
			$(location).attr('href','http://localhost:9000/MyCGV/admin/member/member_list.do?rpage='+e.page);  
		});
		
	});
	
</script>
</head>
<body>
<!-- header -->
	<jsp:include page="../../header.jsp" />

<div class="admin_member_content">
<aside class="adminaside">
	<h2>관리자메뉴</h2>
	<ul class=adminaside_ul>
		
		<li><a href="http://localhost:9000/project/admin/member_list.do"><div class="choose">회원관리</div></a></li>
		<li><a href="http://localhost:9000/project/admin/product_list.do"><div class="choose">상품관리</div></a></li>
		<li><div class="choose">공지사항관리</div></li>
	</ul>
</aside>
	<div class="member_list_table">
				<div class="member_title">
				<h1>회원리스트 </h1>		
				</div>		
			<div class="admin_member_list">
				<table class="member_list_table">
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>성명</th>
						<th>핸드폰번호</th>
						<th>이메일</th>
						<th>가입일자</th>
					</tr>
					<c:forEach var="vo" items="${plist}">
					<tr>
						<td>${vo.rno }</td>
						<td>${vo.id }</td>
						<td>${vo.name }</td>
						<td>${vo.hp }</td>
						<td>${vo.email }</td>
						<td>${vo.mdate }</td>						
					</tr>
					</c:forEach>
					<tr>
						<td colspan="6"> <div id="ampaginationsm"></div> </td>
					</tr>
				</table>
			</div>
	</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>