<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<style>
	* {
		margin:0px;
		padding:0px;
	}
	header {		
  width:100%; height:20px;
      margin:0;
}
	 header>div{
      width:100%; 
      margin:auto;
   }
body {		
		margin:0px; padding:0px;
		/* background-color:rgb(253,252,240); */
		font-family:"나눔바른고딕";
  		font-size: 13px;
	}

	header>div>nav>ul:first-child {
		text-align:right;
		padding-top:7px;					
	}
	header>div>nav>ul>li {
		display:inline-block;		
	}
	header>div.right_menus>nav.right_nav>ul.right_ul>li.right>a.right_a {		
		text-decoration:none;
		font-size:14px;
		font-weight:bold;
		color:black;	
		padding:0 7px;	
		text-align:right;
	}
	header>div.right_menus>nav.right_nav>ul.right_ul>li.right>a.right_a:hover {
		color:lightgray;
	}

	li.right>button {
		width:45px;
		height:22px;
		font-size:12px;
		background-color:lightgray;
		margin-left:10px;
		border-radius:25px;
		border-color:lightgray;
		margin-right:18px;
	} 
	
	
	header>div>a.logo {
		display:inline-block;
		text-align:center;
	}
	header>div>a.logo>img {
		position:static;
		margin: 5px 0 0 15px;
	}
	div.right_menus li.right img {
		height:23px;
		width:23px;
		margin-top: -5px;
	}
	div.right_menus li.right:first-child {
		margin-top: -5px;
		
	}
	
	a.logo>img {
		width:55%;
		margin-right:100px;
		padding-left:-20px;
		margin-top:-30px;
		height:55px;
	}
	
	div.main_menus {
	padding-top:25px;
	}
	
	div.main_menus ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color:#d9b38c;
}

	div.main_menus li {
  float: left;
  margin-left:50px;
}

	div.main_menus li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 17px 16px;
  text-decoration: none;
  font-size: 15px;
}

	div.main_menus li a:hover, .dropdown:hover .dropbtn {
  background-color:#392613;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #d9b38c;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color:black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>
	<header>
		<div class="right_menus">
			<nav class="right_nav">
				<ul class="right_ul">
					<li class="right"><a class="right_a" href="#">로그인</a></li>
					<li class="right"><a class="right_a" href="#">마이페이지</a></li>
					<li class="right"><a class="right_a" href="#">회원가입</a></li>
					<li class="right"><a class="right_a" href="#"><img src="http://localhost:9000//MyWeb/images/instagram_icon.png"></a></li>
					<li class="right"><input type="search" placeholder="search"><button type="button">검색</button></li>
				</ul>
			</nav>
			
					<a class="logo" href="http://localhost:9000/project/index.do">
					<img src="http://localhost:9000/MyWeb/images/logo.png">
					</a>
			<div class="main_menus">
				<ul>
					<li class="dropdown">
					    <a href="javascript:void(0)" class="dropbtn">Shop</a>
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