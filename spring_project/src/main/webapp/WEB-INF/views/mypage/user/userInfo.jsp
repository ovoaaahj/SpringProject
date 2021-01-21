<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
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
  height: 800px;
  width: 200px;
  position: relative;
  z-index: 1;
  top: 0;
  left: 0;
  background-color:white;
  overflow-x: hidden;
  padding-top: 10px;
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
	padding-top:0px;
}

.sidenav span {
	padding: 0px 6px 25px 32px;
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

div.content {
	 display:inline-block;
}
	
 div.content section.section1 {
      margin-left:250px;

   }
   span.red {
   color:red;
   }
   
   section.section1 h1 {
   	margin-top:48px;
   }
 section.section1 form.user_info ul li{
 	font-size:15px;
 	margin-top: 15px;
 	list-style-type:none;
		clear:both;
		margin-bottom:7px;
 }
 section.section1 label {
 		border:1px solid lightgray;
		background-color:lightgray;
		display:inline-block;
		width:105px;
		padding:7px 0;
		text-indent:20px;
		color:#333; font-size:13px; font-weight:600;
		border-radius:4px;
		float:left;
		margin-right:15px;
 }

section.section1 input[type='text'], section.section1 input[type='password'] {
	border:1px solid gray;
		border-radius:4px;
		width:27%;
		padding:7px 10px;
		color:#333; font-size:12px;
}

form.user_info textarea {
	width:55%;
	height:200px;
}

form.user_info button {
	font-size:12px;
		width:80px; padding:6px 0;
		border-radius:4px;
		margin:10px 5px 0 0;
}
section.section1 form.user_info ul li:last-child {
	text-align:center;
}
</style>
</head>
<body>
<!-- header -->
	<jsp:include page="../../header.jsp" />
	
	<div class="sidenav">
					<span>마이페이지</span>
					<div class="underline"></div>
					<a href="http://localhost:9000/project/userInfo.do">개인정보 수정</a>
					<a href="http://localhost:9000/project/cart_list.do">장바구니 목록</a>
					<a href="http://localhost:9000/project/buying_list.do">구매확인</a>
					<a href="http://localhost:9000/project/delAccount.do">회원탈퇴</a>
	</div>
	
	<!-- content -->
	<div class="content">
		<section class="section1">
			<div>
				<h1>개인정보 수정</h1>				
				<form name="user_info" action="join_proc.do" method="post" class="user_info">
				<div class="jtitle"><span class="red">*</span>표시 항목은 필수 입력 항목 입니다.</div>
					<ul>  
						<li>
							<label><span class="red">*</span>아이디</label>
							<input type="text" name="id" class="f1" placeholder="Email 형식" id="id">
							<button type="button" class="sub" id="idCheck">ID중복검사</button>
							<div id="idcheck_result">
							<div class="idcheck">아이디는 영문,숫자 조합으로 이메일 형식으로 입력해주세요</div>
							<div class="idcheck">아이디는 <span class="red">소문자</span>로 저장 됩니다.</div>
							</div>	
						</li>
						<li>
							<label><span class="red">*</span>패스워드</label>
							<input type="password" name="pass" class="f1" id="pass">
							<div>비밀번호는 6자리 이상 12자리 이하로 입력해주세요.</div>
						</li>
						<li>
							<label><span class="red">*</span>패스워드 확인</label>
							<input type="password" name="cpass" class="f1" id="cpass">
							<div id="msg"></div>
						</li>
						<li>
							<label><span class="red">*</span>성명</label>
							<input type="text" name="name" class="f1" id="name">
						</li>
						
						<li>
							<label><span class="red">*</span>E-mail</label>
							<input type="text" name="email" class="f1" id="email">
						</li>
						<li>
							<label><span class="red">*</span>메일수신</label>
							<input type="radio" name="email_agr" checked><span class="rchk">수신동의</span>
							<input type="radio" name="email_agr"><span class="rchk">수신거부</span>
						</li>
						<li>
							<label><span class="red">*</span>주소</label>
							<input type="text" name="addr1" class="addr" id="addr1">
							<button type="button" class="sub">검색</button><br>
							<input type="text" name="addr2" class="addr" id="addr2">
						</li>
						<li>
							<label><span class="red">*</span>전화번호</label>
							<select name="hp1" class="hp" id="hp1">
								<option value="선택">선택
								<option value="010">010
								<option value="011">011
								<option value="017">017
							</select>
							- <input type="text" name="hp2" class="hp_number" id="hp2">
							- <input type="text" name="hp3" class="hp_number" id="hp3">
						</li>
				
						<li>
							<label><span class="red">*</span>나이</label>
							<select name="age" class="age" id="age">
								<option value="선택">선택
								<option value="20대">20대
								<option value="30대">30대
								<option value="40대">40대
								<option value="50대">50대						
								<option value="60대">60대							
							</select>							
						</li>
						<li>
							<label>자기소개</label>
							<textarea name="intro"></textarea>
						</li>
						<li>
							<button type="button" class="btn_style" id="btnJoin">가입하기</button>
							<button type="reset" class="btn_style">다시쓰기</button>
						</li>
					</ul>
				
				</form>
			</div>
		</section>		
	</div>
	
	<!-- footer -->
		<jsp:include page="../../footer.jsp" />
	
</body>
</html>