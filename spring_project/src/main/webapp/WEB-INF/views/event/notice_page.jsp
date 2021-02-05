<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_page</title>
<link rel="stylesheet" href="css/event/notice_page.css">
<link rel="stylesheet" href="css/event/gj.css">
</head>
<body>
<!-- header -->
	<jsp:include page="../header.jsp" />
	<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">공지사항</h1>
				<p class="sub_text">
					<span>Bean's Story는 국내 브랜드의 자부심을 지키며</span> <br>대한민국 커피 문화를
					이끌어 나갑니다.
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do" class="select_on">공지사항</a></li>
					<li><a href="event.do">이벤트</a></li>
					<li><a href="question.do">자주 묻는 질문</a></li>
				</ul>
				<ul>
					<li><a href="map.do">지도</a></li>
					<li><a href="youtube.do">유튜브</a></li>
				</ul>
			</div>

		</section>
		<section>
			<div class="notice_list">

				<div class="hnm_text">
					<h1>HOME > 공지사항</h1>
					<a href="https://open.kakao.com/o/smjXAuSc" target="_blank"
						class="kakao_info"> 카카오톡 1:1 문의 <img class="kakao">
					</a>
				</div>


				<div class="nline"></div>
				<div class="hnm_text2">
					<h1 class="hnm_title">Bean's Story 영업시간 변동 안내</h1>
					<h1 class="hnm_date">2020-12-15</h1>
				</div>

				<div class="n2line"></div>

				<div class="page_text">
					<h1>
						안녕하세요! Bean's Story입니다.<br> 2020-12-25일부터 Bean's Story의 영업시간이
						변경되오니 참고부탁드립니다.<br> 감사합니다.<br>
						<br>
						<br>
						<br>
					</h1>
					<div class="page_img">
						<img src="images/noticepage.PNG">
					</div>

				</div>
				<div class="n3line"></div>
					
				<div class="notice_page_text">
					<h1>
					${vo.ncontent }
					</h1>
					<div class="notice_page_img">
						<img src="upload/${vo.nsfile}">
					</div>

				</div>
				
				<div class="n_option">
				
				<form action="notice_update.do?eid=${vo.nid}" method="get" onsubmit="return confirm('해당 게시물을 수정하시겠습니까?');">
						<input type="hidden" name="nid" id="nid" value="${vo.nid}" ><button type="submit" class="btn_style">수정</button>
					</form>		
					
					<form action="notice_delete.do?eid=${vo.nid}" method="get" onsubmit="return confirm('정말로 삭제하시겠습니까?');">
						<input type="hidden" name="nid" id="nid" value="${vo.nid}" ><button type="submit" class="btn_style">삭제</button>
					</form>					
					
				</div>
				
				<div class="n_textline">
					<div class="np_list">
						<a href="http://localhost:9000/test/notice.do">목록보기</a>
					</div>
				</div>



				<div class="n_textline2"></div>

				<div class="pagelist">
					<h1 class="npagelist">이전글 |</h1>
					<a href="http://localhost:9000/test/notice.do">2020 Bean's
						Story 가을 행사 </a>
					<h1 class="npagedate">2020-10-04</h1>
				</div>

				<div class="n_textline3"></div>

				<div class="pagelist2">
					<h1 class="npagelist2">다음글 |</h1>
					<a href="http://localhost:9000/test/notice.do">2020 Bean's
						Story 봄 행사 </a>
					<h1 class="npagedate2">2020-03-02</h1>
				</div>

				<div class="n_textline4"></div>

			</div>

		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp" />

</body>
</html>