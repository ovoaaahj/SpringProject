<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Youtube</title>
<link rel="stylesheet" href="css/event/gj.css">
<link rel="stylesheet" href="css/event/youtube.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body>
<!-- header -->
	<jsp:include page="../header.jsp" />
	<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">유튜브</h1>
				<p class="sub_text">
					<span>Bean's Story의 유튜브를 확인하세요</span> <br>다양한 영상들이 여러분들 환영합니다.
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do">공지사항</a></li>
					<li><a href="event.do">이벤트</a></li>
					<li><a href="question.do">자주 묻는 질문</a></li>
				</ul>
				<ul>
					<li><a href="map.do">지도</a></li>
					<li><a href="youtube.do" class="select_on">유튜브</a></li>
				</ul>
			</div>

		</section>
		<section class="y_content">
			<div class="ymain_box">
				<!-- 	<div class="ymain_content"> -->
				<div class="hny_text">
					<h1>HOME > 공지사항 > 유튜브</h1>
					<a href="https://open.kakao.com/o/smjXAuSc" target="_blank"
						class="kakao_info"> 카카오톡 1:1 문의 <img class="kakao">
					</a>
				</div>
				<div class="hny2_text">
					<h1>Bean's Story의 다양한 컨텐츠를 확인하세요.</h1>
				</div>
				<!-- 	</div> -->
				<div class="yline"></div>
				<div class="youtube_content">
					<!-- 유튭 -->
					<div class="y_div">
						<iframe class="y_iframe"
							src="https://www.youtube.com/embed/wvyV5k2NADY" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
					</div>
				</div>
				<div class="y_text">
					<h1>언택트 시대의 설 선물법 이디야 선물세트로 따뜻한 마음 전하기</h1>
					<br> 만나지 못하지만, 커피와 차로 따뜻한 마음을 전하면 우리 모두 기부니가 매우 조크든요<br>
					Bean's Story 선물세트로 따뜻한 마음을 안전하게 전해보세요!<br> <br> 배달앱 및 택배
					주문 가능! 1/14 부터 (매장에 따라 상이) 택배 1/20 부터 (전국 매장 가능)<br> <a
						href="https://youtu.be/iXiVDeN44c4">#Bean's Story</a> <a
						href="https://youtu.be/Hh0L8Vq7q9A">#Bean's Story 선물</a> <a
						href="https://youtu.be/0jVwNKGXS7k">#Bean's Story 선물세트</a> <a
						href="https://youtu.be/luKlni3c7mQ">#커피</a> <a
						href="https://youtu.be/BKSOl8hIy-0">#얼죽아</a> <a
						href="https://youtu.be/olnvVImSeaA">#뜨아</a> <a
						href="https://youtu.be/tRnJqiS_InY">#눈온다</a>
				</div>
				<div class="y_textline"></div>
				<div class="y_slider">
					<p class="prev"><</p>
					<p class="next">></p>
					<div class="y_wrapper">

						<%--
			 			<c:forEach var="vo" items="${list}">
							<div class="post">
							<a href="${vo.ylink}"> <img src="${vo.yimg}" class="slider_image">
							<p>${vo.yinfo}</p>
							</div>
						</c:forEach> 
						--%>

						<div class="post">
							<a
								href="https://www.youtube.com/watch?v=iXiVDeN44c4&feature=youtu.be">
								<img
								src="https://i.ytimg.com/vi/iXiVDeN44c4/hq720.jpg?sqp=-oaymwEZCOgCEMoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLC7vWAz9psdK6znHodxbY7k1_W8dA"
								class="slider_image">
								<p>STARBUCKS MUSIC: 년 최고의 스타 벅스 음악 재생 목록! 여름 카페 음악, 일어나, 진정</p>
							</a>
						</div>


						<div class="post">
							<a
								href="https://www.youtube.com/watch?v=Hh0L8Vq7q9A&feature=youtu.be">
								<img
								src="https://i.ytimg.com/vi/Hh0L8Vq7q9A/hq720.jpg?sqp=-oaymwEZCOgCEMoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDEp5O1vfSPspgU0zBhCUkpMpRrHg"
								class="slider_image">
								<p>Winter Jazz Cafe Music ♫ ☕ ♫ 편안한 아침 커피 보사 노바 카페 음악 포지티브
									데이</p>
							</a>
						</div>
						<div class="post">
							<a href="https://youtu.be/0jVwNKGXS7k"> <img
								src="https://i.ytimg.com/vi/0jVwNKGXS7k/hqdefault.jpg?sqp=-oaymwEZCOADEI4CSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDiDN34exEbpdruqaaJhO9LudMF6A"
								class="slider_image">
								<p>[감성 팝송 모음] 카페에서 나올만한 감성 팝송 플레이리스트</p>
							</a>
						</div>
						<div class="post">
							<a href="https://youtu.be/luKlni3c7mQ"> <img
								src="https://i.ytimg.com/vi/YlH8Vieni4E/hq720.jpg?sqp=-oaymwEZCOgCEMoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLA4VP9bIElSFEVAr_BNSngay5-Bcg"
								class="slider_image">
								<p>공부할때 듣는 카페음악 모음 [motemote│모트모트│𝐒𝐓𝐔𝐃𝐘
									𝐌𝐎𝐎𝐃│스터디무드│가사 없는 노래│플레이리스트│Playlist]</p>
							</a>
						</div>
					</div>
				</div>

			</div>
		</section>
	</div>
	<script>
		$('.y_wrapper').slick({
			slidesToShow : 3,
			slidesToScroll : 1,
			autoplay : true,
			autoplaySpeed : 2000,
			nextArrow : $('.next'),
			prevArrow : $('.prev'),
		});
	</script>

	<!-- footer -->
	<jsp:include page="../footer.jsp" />

</body>
</html>