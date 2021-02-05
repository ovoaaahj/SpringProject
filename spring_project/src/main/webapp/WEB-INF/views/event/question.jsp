<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/event/gj.css">
<link rel="stylesheet" href="css/event/question.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/gj.js"></script>
<script>
	$(document).ready(function() {
		$('details').click(function(event) {
			var index = $('details').index(this);
			var len = $("details").length;
			for (var i = 0; i < len; i++) {
				if (i != index) {
					$("details")[i].removeAttribute("open");
				}
			}
		});
	});
</script>
</head>
<body>
<!-- header -->
	<jsp:include page="../header.jsp" />
	<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">자주 묻는 질문</h1>
				<p class="sub_text">
					<span>Bean's Story의 고객님들의</span> <br>자주 묻는 질문 입니다.
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do">공지사항</a></li>
					<li><a href="event.do">이벤트</a></li>
					<li><a href="question.do" class="select_on">자주 묻는 질문</a></li>
				</ul>
				<ul>
					<li><a href="map.do">지도</a></li>
					<li><a href="youtube.do">유튜브</a></li>
				</ul>
			</div>

		</section>
		<section class="content">
			<div class="question_content">
				<div class="hnq_text">
					<h1>HOME > 공지사항 > 자주 묻는 질문</h1>
					<a href="https://open.kakao.com/o/smjXAuSc" target="_blank"
						class="kakao_info"> 카카오톡 1:1 문의 <img class="kakao">
					</a>
				</div>
				<div class="hnq2_text">
					<h1>Bean's Story의 다양한 질문들을 확인하세요.</h1>
				</div>
				<div class="qline"></div>
				<%--
 			<c:forEach var="vo" items="${list}">
				<summary>${vo.notice_name}</summary>
				<div>
				<p>${vo.notice_info}</p>
				</div>
			</c:forEach> 
--%>
				<details>
					<summary>Q 커피원두의 유통기한은 얼마나 되나요?</summary>
					<div>
						<p>
							커피콩의 경우 유통기한이 6개월 제품 (예:과테말라 안티구아,칠레 싱글오리진 등등)과<br> 3개월(분쇄원두
							맥널티,카이우아이 등)인 <br> 제품들로 구성되어 있습니다.
						</p>
					</div>
				</details>
				<details>
					<summary>Q 유통기한 경과제품은 Bean's Story에서 교환해주시나요? </summary>
					<div>
						<p>
							소비자법상에 유통기한 경과 제품을 구입한 것은 소비자 책임입니다. <br>따라서 구입시에 유통기한을 꼭
							확인하시기 바랍니다. <br>실수로 그런 제품을 구입했을 때 구입처와 협의해서 교환 받으시면 됩니다.
						</p>
					</div>
				</details>
				<details>
					<summary>Q Bean's Story 의미는 무엇인가요?</summary>
					<div>
						<p>Bean's Story 커피콩의 이야기를 커피에 담는다는 의미입니다.</p>
					</div>
				</details>
				<details>
					<summary>Q 일회용 커피컵은 재활용 되나요? </summary>
					<div>
						<p>
							일회용 컵은 재활용이 됩니다. 그 외에도 모든 포장지에는 분리배출 표시를 하도록 되어 있고<br> 당사에서도
							생산되는 제품의 포장재 유형별로 분리배출 비용을 지불하고 있습니다. 가정내에서는<br> 포장지에 있는
							분리배출 마크를 확인하시어 분리배출해 주시면 감사하겠습니다.
						</p>
					</div>
				</details>
				<details>
					<summary>Q 커피외 음료들은 어떻게 만들어지나요?</summary>
					<div>
						<p>과일 주스 혼합액, 고과당, 스테비아 그리고 물을 혼합하여 만들어집니다.</p>
					</div>
				</details>
				<details>
					<summary>Q 패스워드(비밀번호)변경은 어떻게 하나요?</summary>
					<div>
						<p>
							패스워드(비밀번호)의 변경은 농심 홈페이지 우측 상단 또는 우측 퀵메뉴의 <br> [로그인]을 클릭 하시어
							로그인 후, 우측 퀵메뉴의 [정보수정]을 클릭하시면<br> 해당 페이지 상단에 있는 [비밀번호변경] 버튼을
							클릭하셔서 변경하실 수 있습니다. <br> 비밀번호 변경 시, 이전 비밀번호, 신규 비밀번호, 신규 비밀번호
							확인에 요구되는 정보를 기입하시고 '비밀번호 변경'<br> 버튼을 누르시면 최종적으로 비밀번호가 변경됩니다.
						</p>
					</div>
				</details>
				<details>
					<summary>Q 로그아웃은 어떻게 하나요?</summary>
					<div>
						<p>로그아웃은 홈페이지 우측 상단 또는 우측 퀵메뉴의 [로그아웃] 버튼을 클릭하시어 실행하시면 됩니다.</p>
					</div>
				</details>

				<div class="q_textline"></div>

			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>