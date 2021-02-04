<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.spring.vo.SessionVO"%>
    <%--
	SessionVO svo = (SessionVO)session.getAttribute("svo");

	//svo객체 != null : 로그인 상태
	//svo객체 = null : 비로그인 상태
if(svo != null){ --%>

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
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>
<%-- } --%>