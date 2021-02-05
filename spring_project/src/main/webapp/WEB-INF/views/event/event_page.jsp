<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.spring.vo.*"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%

		SessionVO svo = (SessionVO)session.getAttribute("svo");

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
					<span>Bean's Story의 다양한 이벤트를</span> <br>만나보세요
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do">공지사항</a></li>
					<li><a href="event.do" class="select_on">이벤트</a></li>
					<li><a href="question.do">자주 묻는 질문</a></li>
				</ul>
				<ul>
					<li><a href="map.do">지도</a></li>
					<li><a href="youtube.do">유튜브</a></li>
				</ul>
			</div>

		</section>
		<section>
			<div class="event_page">

				<div class="event_text">
					<h1>HOME > 공지사항 > 이벤트</h1>
					<a href="https://open.kakao.com/o/smjXAuSc" target="_blank"
						class="kakao_info"> 카카오톡 1:1 문의 <img class="kakao">
					</a>
				</div>


				<div class="eline"></div>
				
				<div class="event_text2">
					<h1 class="event_title">${vo.etitle}</h1>
					<h1 class="event_date">기간 : ${vo.edate } ~ ${vo.edate2 }</h1>
				</div>
				
				<div class="e_state_board">
							<c:choose>
								<c:when test="${vo.eend eq '진행'}">								
									<span class="end0">
											    진행								    
									</span>
								</c:when>
								<c:when test="${vo.eend eq '종료'}">
								   	<span class="end1">
											    종료								    
									</span>
								</c:when>
							</c:choose>
				</div>

				<div class="e2line"></div>
					
				<div class="event_page_text">
					<h1>
					${vo.econtent }
					</h1>
					<div class="event_page_img">
						<img src="upload/${vo.esfile}">
					</div>

				</div>
				
				<div class="e_option">
					<% if(svo != null) {%>
						<form action="event_update.do?eid=${vo.eid}" method="get" onsubmit="return confirm('해당 게시물을 수정하시겠습니까?');">
							<input type="hidden" name="eid" id="eid" value="${vo.eid}" ><button type="submit" class="btn_style">수정</button>
						</form>		
							
						<form action="event_delete.do?eid=${vo.eid}" method="get" onsubmit="return confirm('정말로 삭제하시겠습니까?');">
							<input type="hidden" name="eid" id="eid" value="${vo.eid}" ><button type="submit" class="btn_style">삭제</button>
						</form>		
					<%} %>
				</div>

				<div class="e_textline">
					<div class="ep_list">
						<a href="event.do">목록보기</a>
					</div>
				</div>



				<div class="e_textline2"></div>

			</div>

		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp" />

</body>
</html>