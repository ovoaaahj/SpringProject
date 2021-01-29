<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/project/css/project.css">

<style>

</style>
</head>
<body>
<%
		String id=null;
		if(session.getAttribute("id") != null){
			id =(String) session.getAttribute("id");
		}
%>
	<header>
		<div class="right_menus">
			<nav class="right_nav">
				<ul class="right_ul">
					<% if(id != null) {%>
						<li class="right"><a class="right_a" href="http://localhost:9000/project/logout.do">로그아웃</a></li>
						<li class="right"><a class="right_a" href="http://localhost:9000/project/mypage/mypage.do">마이페이지</a></li>
						<li class="right"><a class="right_a" href="http://localhost:9000/project/join.do">회원가입</a></li>
						<li class="right"><a class="right_a" href="#"><img src="http://localhost:9000/project/images/instagram_icon.png"></a></li>
						<li class="right"><input type="search" placeholder="search"><button type="button">검색</button></li>
					<%}else{ %>
						<li class="right"><a class="right_a" href="http://localhost:9000/project/login.do">로그인</a></li>
						<li class="right"><a class="right_a" href="http://localhost:9000/project/mypage/mypage.do">마이페이지</a></li>
						<li class="right"><a class="right_a" href="http://localhost:9000/project/join.do">회원가입</a></li>
						<li class="right"><a class="right_a" href="#"><img src="http://localhost:9000/project/images/instagram_icon.png"></a></li>
						<li class="right"><input type="search" placeholder="search"><button type="button">검색</button></li>
					<%} %>
				</ul>
			</nav>
			
					<a class="logo" href="http://localhost:9000/project/index.do">
					<img src="http://localhost:9000/project/images/logo.png">
					</a>
			<div class="main_menus">
				<ul>
					<li class="dropdown">
					    <a href="http://localhost:9000/project/shopMain3_1.do?pkind1=coffee" class="dropbtn">Shop</a>
					    <div class="dropdown-content">
					      <a href="#">싱글오리진</a>
					      <a href="#">블렌드</a>
					      <a href="#">스페셜티</a>
					      <a href="#">더치커피</a>
					      <a href="#">디카페인</a>
					    </div>
					  </li>
					  <li class="dropdown">
				    <a href="javascript:void(0)" class="dropbtn">Menu</a>
				    <div class="dropdown-content">
				      <a href="#">커피</a>
				      <a href="#">티</a>
				      <a href="#">베이커리</a>
				    </div>
				  </li>
				  <li><a href="#news">Store</a></li>
				  <li class="dropdown">
				    <a href="javascript:void(0)" class="dropbtn">What's new</a>
				    <div class="dropdown-content">
				      <a href="#">공지사항</a>
				      <a href="#">FAQs</a>
				      <a href="#">이벤트</a>
				    </div>
				  </li>
				</ul>
			</div>	
		</div>
	</header>
	
	
</body>
</html>