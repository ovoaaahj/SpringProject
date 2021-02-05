<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Map</title>
<link rel="stylesheet" href="css/event/gj.css">
<link rel="stylesheet" href="css/event/map.css">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bcff40663f677af0a69dbdb9951c1630"></script>
</head>
<body>
<!-- header -->
	<jsp:include page="../header.jsp" />
	<div id="index_content">
		<section class="contentWrap">
			<div class="main_text_field">
				<h1 class="main_text">매장위치</h1>
				<p class="sub_text">
					<span>Bean's Story의 위치입니다.</span> <br>Kakao 맵을 통해 위치를 확인하세요.
				</p>
			</div>
			<div class="list">
				<ul>
					<li><a href="notice.do">공지사항</a></li>
					<li><a href="event.do">이벤트</a></li>
					<li><a href="question.do">자주 묻는 질문</a></li>
				</ul>
				<ul>
					<li><a href="map.do" class="select_on">지도</a></li>
					<li><a href="youtube.do">유튜브</a></li>
				</ul>
			</div>

		</section>
		<section>
			<div class="map_content">
				<div class="hnm_text">
					<h1>HOME > 공지사항 > 지도</h1>
					<a href="https://open.kakao.com/o/smjXAuSc" target="_blank"
						class="kakao_info"> 카카오톡 1:1 문의 <img class="kakao">
					</a>
				</div>
				<div class="hnm2_text">
					<h1>Bean's Story의 매장 위치를 확인하세요.</h1>
				</div>
				<div class="mline"></div>
				<div id="map"></div>

				<div class="root">
					<h1>역삼역에서 오시는 길</h1>
					<span>지하철 2호선 역삼역 3번 출구로 나오셔서 직진하시면 한독 빌딩에서 Bean's Story를
						만나실 수 있습니다.</span>
					<h1>강남역에서 오시는 길</h1>
					<span>지하철 2호선 강남역 1번 출구로 나오셔서 직진하시면 한독 빌딩에서 Bean's Story를
						만나실 수 있습니다.</span>
				</div>


				<div class="m_textline"></div>
			</div>

		</section>





	</div>



	<!-- 지도 스크립트 -->
	<script>
		var mapContainer = document.getElementById('map'), // 지도의 중심좌표
		mapOption = {
			center : new kakao.maps.LatLng(37.499291, 127.033142), //지도의 중심좌표.
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		var mapTypeControl = new kakao.maps.MapTypeControl(); //컨트롤러 생성
		var zoomControl = new kakao.maps.ZoomControl();

		map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

		// 지도에 마커를 표시합니다 
		var marker = new kakao.maps.Marker({
			map : map,
			position : new kakao.maps.LatLng(37.499291, 127.033142)
		});

		// 커스텀 오버레이에 표시할 컨텐츠 입니다
		// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
		// 별도의 이벤트 메소드를 제공하지 않습니다 
		var content = '<div class="wrap">'
				+ '    <div class="info">'
				+ '        <div class="title">'
				+ '            Bean&#39;s Story'
				+ '            <div class="close" onclick="closeOverlay()" title="닫기"></div>'
				+ '        </div>'
				+ '        <div class="body">'
				+ '            <div class="img">'
				+ '				<img src="./resources/images/logo.png" width="70" height="20" />'
				+ '           </div>'
				+ '            <div class="desc">'
				+ '                <div class="ellipsis">서울특별시 강남구 역삼동 테헤란로 132</div>'
				+ '                <div class="jibun ellipsis">(우) 06235 (지번) 역삼동 735-1</div>'
				+ '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>'
				+ '            </div>' + '        </div>' + '    </div>'
				+ '</div>';

		// 마커 위에 커스텀오버레이를 표시합니다
		// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlay = new kakao.maps.CustomOverlay({
			content : content,
			map : map,
			position : marker.getPosition()
		});

		// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		kakao.maps.event.addListener(marker, 'click', function() {
			overlay.setMap(map);
		});

		// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		function closeOverlay() {
			overlay.setMap(null);
		}
	</script>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>