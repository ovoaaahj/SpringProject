<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
	String eid = request.getParameter("eid");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_page</title>
<link rel="stylesheet" href="css/event/event_page.css">
<link rel="stylesheet" href="css/event/gj.css">
</head>
<body>
<!-- header -->
	<jsp:include page="../header.jsp" />

	<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">이벤트 페이지</h1>
				<p class="sub_text">
					<span>삭제 페이지</span> <br>
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do">공지사항</a></li>
					<li><a href="event.do" >이벤트</a></li>
					<li><a href="question.do">자주 묻는 질문</a></li>
				</ul>
				<ul>
					<li><a href="map.do">지도</a></li>
					<li><a href="youtube.do">유튜브</a></li>
				</ul>
			</div>

		</section>
		<section>
			<div class="delete_page">

				<div class="delete_text">
					<h1>삭제</h1>
					<a href="https://open.kakao.com/o/smjXAuSc" target="_blank"
						class="kakao_info"> 카카오톡 1:1 문의 <img class="kakao">
					</a>
				</div>


					<div class="dline"></div>
						<div>
					<h1>게시판</h1>
					<form class="board_delete">
						<h3>정말로 삭제하시겠습니까?</h3>
						<img src="http://localhost:9000/MyCGV/images/delete.jpg">
						<div>
							<a href="board_delete_proc.do?bid=<%=eid%>"><button type="button" class="btn_style">삭제완료</button></a>		
							<a href="board_content.do?bid=<%=eid%>"><button type="button" class="btn_style">이전페이지</button></a>							
							<a href="board_list.do"><button type="button" class="btn_style">목록으로</button></a>
						</div>							
					</form>				
				</div>

				<div class="d_textline">
					<div class="dp_list">
						<a href="http://localhost:9000/test/event.do">목록보기</a>
					</div>
				</div>



				<div class="d_textline2"></div>

			</div>

		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />


</body>
</html>