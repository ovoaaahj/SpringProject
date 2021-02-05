<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.spring.vo.SessionVO"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%--
    	SessionVO svo = (SessionVO)session.getAttribute("svo");
    	
    	if(svo != null){
    --%>
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
  display:inline-block;
}

.sidenav a {
  padding: 25px 6px 25px 32px;
  text-decoration: none;
  font-size: 21px;
  color: #000000;
  display: block;
  
}
.sidenav a:first-child {
	padding-top:31px;
}

.sidenav span {
	padding: 20px 6px 25px 32px;
  text-decoration: none;
  font-size:32px;
  color: #000000;
  font-weight:500;
  display:block;
}

.sidenav div.underline {
	height:2px;
	width:210px;
	background-color:lightgray;
	margin-left: 15px;
	margin-top:-10px;
	margin-bottom:17px;
}

.sidenav a:hover {
  color: #f1f1f1;
}
.del_section {
	margin-left:250px;
	margin-bottom:380px;
	margin-top:-450px;
}
div.content {
	display:inline-block;
}

tr.t1 td img {
	margin-left: 300px;
	margin-right: 400px;
	margin-top:80px;
	width:320px;
	height:280px;
	
}
table.del_account {
	display:inline-block;
	text-align:center;
}
table.del_account tr:nth-child(2) td {

	padding-top:38px;
	margin-left: 500px;
	margin-right: 400px;
}
table.del_account tr:nth-child(2) label {
	padding-right:50px;
	font-size:35px;
}
table.del_account tr:last-child td {
	margin-left:-50px;
}

table.del_account tr:last-child td div {
	padding-right:50px;
}

.btn_style {
	border:1px solid black;
	margin-top:30px;
	border:1px solid #c68c53;
	background-color: #996633;
	border-radius:4px;
	color:white;
	font-weight:450;
	width:80px;
	height:35px;
}

button.btn_style:hover {
	opacity:0.5;
	transition: all 500ms ease; 
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<div class="sidenav">
		<span>마이페이지</span>
			<div class="underline"></div>
				<a href="http://localhost:9000/project/mypage/userInfo.do">개인정보 수정</a>
				<a href="http://localhost:9000/project/mypage/cart_list.do">장바구니 목록</a>
				<a href="http://localhost:9000/project/mypage/buying_list.do">구매확인</a>
				<a href="http://localhost:9000/project/delAccount.do">회원탈퇴</a>
	</div>
	<section class="del_section">
		<div class="content">
				<form name="mypage_del_account" action="del_account_proc.do" method="get" class="del_account">
				<table>
            	<tr>
            		<td>
			           	<h1>회원탈퇴</h1>
				 		<div>
				        <table class="del_account">
					 	<tr class="t1">
					 		<td><label><img src="http://localhost:9000/project/images/del_account.png"></label></td>
					 	</tr>
					 	<tr>
					 		<td>
					 			<label>탈퇴 하시겠습니까?</label>
					 		</td>
					 	</tr>
					<!--  <tr>
					 		<th>아이디</th>
					 		<td><input type="text" name="id" disabled value=""></td>
					 	</tr>
					 	<tr>
					 		<th>비밀번호</th>
					 		<td><input type="password" name="pass" placeholder="비밀번호 입력"></td>
					 	</tr>
					 	<tr><td colspan="2"><div id="errMsg">< %=errMsg %></div></td></tr>	-->
					 	
					 	<tr>
					  	
					 		<td>
					 		<div>
					 		<button type="reset" class="btn_style">탈퇴취소</button>
					 		<button type="submit" class="btn_style">확인</button>
					 		</div>
					 		</td>
					 	</tr>
					 	</table>
				 		</div>
					</td>	            		
	            </tr>
	            </table>
				</form>
			</div>
	
	</section>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>
<%-- } --%>