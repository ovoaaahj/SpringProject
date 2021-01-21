<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- header -->
	<jsp:include page="../header.jsp" />
	
	<!-- content -->
	<div class="content">
		<section class="section1">
			<div>
				<h1>회원가입</h1>				
				<form name="joinForm" class="join">
					<ul>
						<li>
							<h2>Bean's Story의 회원이 되신 것을 환영합니다!</h2>
							<img src="http://localhost:9000/project/images/success.png" width="60%">
						</li>
						<li>
							<a href="http://localhost:9000/project/login.do"><button type="button" class="btn_style">로그인</button></a>
							<a href="http://localhost:9000/project/index.do"><button type="button" class="btn_style">메인페이지</button></a>
						</li>
					</ul>
				
				</form>
			</div>
		</section>		
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>