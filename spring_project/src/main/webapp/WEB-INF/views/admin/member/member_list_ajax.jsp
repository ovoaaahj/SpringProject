<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import = "com.spring.dao.*, com.spring.vo.*, java.util.*" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");

	//svo 객체 != null ==>> 로그인 성공!!
	//svo 객체 == null ==>> 로그인 하지 않은 상태
	if(svo != null){
%>       

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/MyCGV/css/mycgv.css">
<link rel="stylesheet" href = "http://localhost:9000/MyCGV/css/am-pagination.css">
<script src="http://localhost:9000/MyCGV/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/MyCGV/js/am-pagination.js"></script>
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
			$(location).attr('href','http://localhost:9000/project/admin/member/member_list_ajax.do?rpage='+e.page);  
		});
		
	});
	
</script>
<script>
	$(document).ready(function(){
		/** 페이지 로딩 시 회원 전체 리스트 출력
		member_list("total","","");		
		
		
		/** Ajax를 활용한 회원전체 리스트 출력 **/
	/**	function member_list(sname,svalue,rpage){
			$.ajax({
				url:"member_list_ajax_proc.do?sname="+sname+"&svalue="+svalue+"&rpage="+rpage,
				success:function(result){
					alert(result);
					var jdata = JSON.parse(result);
					
					//결과를 출력
					var output = '<table class="member_list_table">';
					output += '<tr><th>번호</th>';
					output += '<th>아이디</th>';
					output += '<th>성명</th>';
					output += '<th>핸드폰번호</th>';
					output += '<th>이메일</th>';
					output += '<th>가입일자</th></tr>';

					for(var i in jdata.jlist){ 
					output += '<tr>';
					output += '<td>'+ jdata.jlist[i].rno + '</td>';
					output += '<td>'+jdata.jlist[i].id + '</td>';
					output += '<td>'+jdata.jlist[i].name+'</td>';
					output += '<td>'+jdata.jlist[i].hp+'</td>';
					output += '<td>'+jdata.jlist[i].email+'</td>';
					output += '<td>'+jdata.jlist[i].mdate+'</td>';
					output += '</tr>'
					} 
					
					output += '<tr><td colspan="6"> <div id="ampaginationsm"></div> </td>';
					output += '</tr></table>';
					
					$("table").remove();
					$(".search").after(output);
					
					page(jdata.dbcount, jdata.reqpage, jdata.pagesize);  //페이지 출력
					
				}//success
			});//ajax
		}**/
		
		 
		
		/** 검색 버튼 이벤트 처리 **/
		$("#btnSearch").click(function(){
			if($("#sname").val() !="total" && $("#svalue").val() == ""){
				alert("검색할 데이터를 입력해 주세요");
				$("#svalue").focus();
				return false;
			}else{
				var sname = $("#sname").val();
				var svalue = $("#svalue").val();
				
				member_list(sname, svalue,"");
				//member_list($("#sname").val(),$("#svalue").val());
			}
		});
		
		
		/** 페이징 처리 함수 **/
		function page(dbcount, reqpage, pagesize){
			//페이지 번호 및 링크 		
			var pager = jQuery("#ampaginationsm").pagination({
				maxSize : 5,			
				totals:dbcount,
				page : reqpage,
				pageSize : pagesize,
						
				
				lastText : '&raquo;&raquo;',
				firstText : '&laquo;&laquo',
				prevTest : '&laquo;',
				nextTest : '&raquo;',
				
				btnSize : 'sm' 			
			}); 
			
			//
			jQuery("#ampaginationsm").on('am.pagination.change',function(e){
				//$(location).attr('href','http://localhost:9000/MyCGV/admin/member/member_list.jsp?rpage='+e.page);  
				//location.href('이동페이지');
				
				member_list($("#sname").val(), $("#svalue").val(), e.page);
			});
		}//page
		
	});//ready

</script>
<style>
div.member_list_table{
	/*	border:1px solid purple; */
		text-align:auto;
		width:1000px;
		margin:auto;
		height:800px;
		padding-top:10px;
	}
	div.member_list_table div.member_title {
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
	
	
		table.member_list_table{
	/*	border:1px solid orange; */
		width:90%;
		margin:auto;
		margin-bottom:0px;
		
	}
	table.member_list_table td a{
		color:black;
		text-decoration:none;
	}
	table.member_list_table tr:hover{
		text-decoration:underline;
	}
	table.member_list_table tr:first-child:hover{
		text-decoration:none;
	}
	 table.member_list_table,
	 table.member_list_table tr,
	 table.member_list_table td,
	 table.member_list_table th{
		border:1px solid gray;
		border-collapse: collapse;
	}
	table.member_list_table td{
		text-align:center;
		width:180px;
		height:40px;
	}
	table.member_list_table th{
		text-align:center;
		width:180px;
		height:40px;
	}
	 table.member_list_table td button{
		border:1px solid gray;
		border-radius:4px;
		background-color:white;
		width:100px;
		height:30px;
		margin:10px;
	}
	table.member_list_table td img{
		width:100px;
		height:40px;
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
	.search { 
		margin-bottom: 10px;
		padding-left:450px;
		}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../header.jsp" />
	
	<!-- content -->
	<div class="admin_member_content">
		<aside class="adminaside">
	<h2>관리자메뉴</h2>
	<ul class=adminaside_ul>
		
		<li><a href="http://localhost:9000/project/admin/member_list_ajax.do"><div class="choose">회원관리</div></a></li>
		<li><a href="http://localhost:9000/project/admin/product_list.do"><div class="choose">상품관리</div></a></li>
		<li><div class="choose">공지사항관리</div></li>
	</ul>
</aside>
				<div class="member_list_table">
				<div class="member_title">
				<h2>회원리스트 </h2>		
				</div>		
					<div class="search">
						<select id="sname">
							<option value="total">전체</option>
							<option value="id">아이디</option>
							<option value="name">성명</option>
							<option value="cp">핸드폰번호</option>
						</select>
						<input type="text" id="svalue">
						<button type="button" id="btnSearch">검색</button>
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
				<%--				
				<table class="admin_member_list">
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>성명</th>
						<th>핸드폰번호</th>
						<th>성별</th>
						<th>가입일자</th>
					</tr>
					<% for(CgvMemberVO vo : list){ %>
					<tr>
						<td><%= vo.getRno() %></td>
						<td><a href="member_content.jsp?id=<%= vo.getId() %>"><%= vo.getId() %></a></td>
						<td><%= vo.getName() %></td>
						<td><%= vo.getCp() %></td>
						<td><%= vo.getGender() %></td>
						<td><%= vo.getMdate() %></td>						
					</tr>
					<% } %>
					<tr>
						<td colspan="6"> <div id="ampaginationsm"></div> </td>
					</tr>
				</table>
				--%>
	</div>
	
	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>
<% }else{ %>
<script>
	alert("로그인을 진행하셔야 접근이 가능합니다.");
</script>
<% } %>













