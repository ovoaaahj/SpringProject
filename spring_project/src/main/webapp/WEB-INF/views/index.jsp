<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bean's Story</title>
<link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="http://localhost:9000/project/css/carousel.css" />
    <link rel="stylesheet" href="http://localhost:9000/project/css/jw.css" />
    <script
          src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
          integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
          crossorigin="anonymous"
        ></script>
        <script
          src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
          integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
          crossorigin="anonymous"
        ></script>
        <script
          src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
          integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
          crossorigin="anonymous"
        ></script>
</head>
<body>
<!-- header -->
	<jsp:include page="header.jsp" />
	
	
	
        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="5000">
            <div class="carousel-inner">
          <!-- 슬라이드 쇼 -->
          <div class="carousel-item active">
            <div class="visual_37 vl">
                <a href="#">
                    <div class="contents" style="margin-top:-16px;">
                        <img src="http://localhost:9000/project/images/index_carousel_pig.png" style="width:100%; max-width:560px; margin-top: -150px; ">
                    </div>
                </a>
            </div>
            <div class="visual_38 vr">
                <a href="#">
                    <div class="contents" style="margin-top:-60px;">
                        <a href="#">
                            <span class="tit" style="color:#fff; font-family: 'Playfair Display', serif; font-size:38px; font-weight:400;">
                                <span style="color:#e7b072; font-weight:700; font-size:82px">Personal</span>
                                <br>
                                - R O A S T I N G -
                            </span>
                            <span class="dec" style="color:#e7b072; opacity:0.8;">
                                커피를 사랑하고 커피 맛에 섬세한 커피 애호가들을 위해
                                <br>
                                빈즈스토리가 당신의 개인 로스터가 되어드립니다.
                            </span>
                        </a>
                        <a href="#">
                            <div class="btn3">맞춤로스팅 자세히보기 ></div>
                        </a>
                    </div>
                </a>
            </div>
          </div>
          <div class="carousel-item">
            <div class="visual_39 vl">
                <a href="#">
                    <div class="contents" style="margin-top:-50px;">
                        <a href="#">
                            <div style="font-size:18px; line-height:26px;  text-decoration:underline; padding: 0 0 10px 5px; color:#eaddae; font-weight:600;">2021 신규 스페셜티 출시!</div>
                            <span class="tit" style="margin-top: 0; color:#fff;font-family: 'Dancing Script', cursive; font-size:82px; ">
                                Guatemala
                                <br>
                                Waykan
                            </span>
                            <span class="dec" style="color:#fff; opacity:0.7; padding:10px 0;">
                                '와이칸'은 '밤하늘에 빛나는 별'이라는 뜻을 가지고 있어요.
                                <br>
                                아름다운 이름을 가지고 있는 
                                <br>
                                과테말라 우에우에테낭고 지역의 스페셜티를 만나보세요.
                            </span>
                        </a>
                        <a href="#">
                            <div class="btn3">우에우에테낭고 와이칸 바로가기 ></div>
                        </a>
                    </div>
                </a>
            </div>
            <div class="visual_40 vr">
                <a href="#">
                    <div class="contents" style="margin-top:-66px;">
                        <a href="#">
                            <div style="font-size:16px; font-weight:400; color:#fff; opacity:0.9; text-decoration:underline; letter-spacing:1px;">WINTER COFFEE PACK</div>
                            <img src="http://localhost:9000/project/images/index_main_putwinter.png" style="width:400px;">
                            <span class="dec" style="color:#fff; margin-top:-10px;">
                                찬바람에 꽁꽁 언 마음이 커피 한 잔으로 위로 받는 계절,
                                <br>
                                겨울에 어울리는 원두를 한 팩에 담았어요.
                                <br>
                                겨울에만 만날 수 있는 시즌한정 상품입니다.
                            </span>
                        </a>
                        <a href="#">
                            <div class="btn3">10% 할인되는 겨울을 담다 커피팩 ></div>
                        </a>
                    </div>
                </a>
            </div>
          </div>
          
         <!--  왼쪽 오른쪽 화살표 버튼 -->
          <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          </a>
          <a class="carousel-control-next" href="#myCarousel" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
          </a>
          <!-- 화살표 버튼 끝 -->
          
          <!-- 인디케이터 -->
          <ul class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <!-- 0번부터시작 -->
            <li data-target="#myCarousel" data-slide-to="1"></li>
            
          </ul>
          <!-- 인디케이터 끝 -->
        </div>

    <!-- 첫번째 배너 -->
    <div style="margin: 0 auto; width: 1200px; padding: 80px 10px">
      <div style="width: 400px; float: left; padding: 0 20px 0 10px">
        <div style="height: 153px">
          <div style="font-weight: bold; font-size: 17px; float: left">NOTICE</div>
          <div style="float: right">
            <a href="#" style="font-size: 11px; color: #666">더보기</a>
          </div>
          <div style="padding-top: 30px; border-bottom: 1px solid #ddd; height: 26px"></div>
          <div style="padding-top: 10px">
            <table style="width: 100%; border: 0; border-spacing: 0; border-collapse: collapse">
              <tbody>
                <tr>
                  <td>
                    <a href="#">12월 베스트리뷰 당첨자 발표</a>
                  </td>
                  <td style="font-size: 10px; color: #999; height: 30px; text-align: right; width: 80px">2021/01/06</td>
                </tr>
                <tr>
                  <td>
                    <a href="#">택배사 변경공지 (CJ대한통운 -> 우체국)</a>
                  </td>
                  <td style="font-size: 10px; color: #999; height: 30px; text-align: right; width: 80px">2021/12/05</td>
                </tr>
                <tr>
                  <td>
                    <a href="#">12월 베스트리뷰 당첨자 발표</a>
                  </td>
                  <td style="font-size: 10px; color: #999; height: 30px; text-align: right; width: 80px">2021/01/06</td>
                </tr>
                <tr>
                  <td>
                    <a href="#">12월 베스트리뷰 당첨자 발표</a>
                  </td>
                  <td style="font-size: 10px; color: #999; height: 30px; text-align: right; width: 80px">2021/01/06</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div id="coffeGuideBanner">
        <a href="#">
          <img src="http://localhost:9000/project/images/index_findcoffe.png" class="index-banner1-img1" />
          <img src="http://localhost:9000/project/images/index_arrow.png" class="index-banner1-img2" />
          <div class="index-banner1-txt">
            <a href="#">바로가기</a>
          </div>
          <div class="index-banner1-maintxt">
            <h1>내게 맞는 커피를 찾아서 한팩에 구성하고 10%할인까지!</h1>
            <h2>내 취향의 커피, 빈즈스토리</h2>
          </div>
        </a>
      </div>
    </div>
    <div style="clear: both"></div>
  <!-- 첫번째 배너끝 -->
  
	<!-- 두번째 배너시작 -->
  <div style="width: 1250px;padding: 50px;height: 500px;margin: 60px auto 0;position: relative;z-index: 100;
  text-align: center;color: #999;line-height: 22px;font-weight: 200;font-size: 15px;border-top: 1px solid #eaeaea;">
		<a href="#" style="color:#999">
			<div style="float: left;padding-right: 20px;font-size: 14px;padding-left: 25px">
				<img src="http://localhost:9000/project/images/index_mypack.png" style="width: 260px;display: block;">
				<h2 class="index-h2" style="color: #111;line-height: 40px;font-weight: 800;">내 취향의 커피, 빈즈스토리</h2>
				<p class="index-p">
					내 취향의 커피를 한팩에!
					<br>
					내게 맞는 커피를 찾으면
					<br>
					맞춤 마이팩을 만나실 수 있어요.
				</p>
        <div style="font-weight: 400;font-size: 12px;color: #fff;background: rgba(0,0,0,0.3);
        width: 140px;text-align: center;margin: 14px auto;border-radius: 2px;display: table;padding: 5px;">내 취향의 커피 찾기 ></div>
			</div>
		</a>
		<a href="#" style="color:#999">
			<div style="float: left;padding-right: 20px;font-size: 14px;">
				<img src="http://localhost:9000/project/images/index_quatemala.png" style="width: 260px;display: block;">
				<h2 class="index-h2" style="color: #111;line-height: 40px;font-weight: 800;">1월 신규 스페셜티</h2>
				<p class="index-p">
					'밤하늘에 빛나는 별' 이라는 뜻의
					<br>
					아름다운 이름을 가진 과테말라의
					<br>
					스페셜티 '와이칸'을 소개합니다.
				</p>
        <div style="font-weight: 400;font-size: 12px;color: #fff;background: rgba(0,0,0,0.3);
        width: 160px;text-align: center;margin: 14px auto;border-radius: 2px;display: table;padding: 5px;">우에우에테낭고 와이칸 ></div>
			</div>
		</a>
		<a href="#" style="color:#999">
			<div style="float: left;padding-right: 20px;font-size: 14px;">
				<img src="http://localhost:9000/project/images/index_banner2_1000AM.png" style="width: 260px;display: block;">
				<h2 class="index-h2" style="color: #111;line-height: 40px;font-weight: 800;">당일로스팅+당일발송</h2>
				<p class="index-p">
					빈즈스토리 커피는
					<br>
					<span style="font-weight: 600; color: #111;">평일 오전 10시</span>
					주문건까지
					<br>
					당일로스팅
					<span style="font-weight: 600; color: #111;">우체국택배</span>
					당일발송 됩니다
				</p>
        <div style="font-weight: 400;font-size: 12px;color: #fff;background: rgba(0,0,0,0.3);
        width: 100px;text-align: center;margin: 14px auto;border-radius: 2px;display: table;padding: 5px;">자세히보기 ></div>
			</div>
		</a>
		<a href="#" style="color:#999">
			<div style="float: left;padding-right: 20px;font-size: 14px;">
				<img src="http://localhost:9000/project/images/index_membership.png" style="width: 260px;display: block;">
				<h2 class="index-h2" style="color: #111;line-height: 40px;font-weight: 800;">빈즈스토리 멤버쉽안내</h2>
				<p class="index-p">
					빈즈스토리 회원이라면
					<br>
					꼭 챙겨야할 멤버쉽 혜택을
					<br>
					바로 확인하세요!
				</p>
        <div style="font-weight: 400;font-size: 12px;color: #fff;background: rgba(0,0,0,0.3);
        width: 100px;text-align: center;margin: 14px auto;border-radius: 2px;display: table;padding: 5px;">자세히보기 ></div>
			</div>
		</a>
	</div>
	<div style="clear: both"></div>
  <!-- 두번째 배너끝 -->
  
	<!-- 세번째 배너 -->
	<div id="coffeeMonth">
		<div class="monthBox">
			<h1>1월의 커피</h1>
			<h2 style="line-height: 24px;">
				2021년 새해, 10% 할인되는 첫번째 이달의 커피는 디카페인 3종입니다.
				<br>
				디카페인 원두도 취향에 따라 선택해서 즐겨보세요.
			</h2>
			<ul>
				<li>
					<a href="#"></a>
					<div class="index-banner3">
						<p>스페셜티</p>
						<img src="http://localhost:9000/project/images/index_banner3_decaf_colombia.png">
					</div>
					<h1>디카페인 콜롬비아 산 어거스틴</h1>
					<h2>
						<del>8,000원</del>
						<br>
						<b style="color:#db633a; font-size:16px;">[10%] 7,200원</b>
					</h2>
					<h3 style="color:#2b7663;">#캐러멜 #꿀 #오렌지 #밀크초콜릿</h3>
				</li>
				<li>
					<a href="#"></a>
					<div class="index-banner3">
						<img src="http://localhost:9000/project/images/index_banner3_decaf_ethiopia.png">
					</div>
					<h1>디카페인 에티오피아 시다모</h1>
					<h2>
						<del>5,800원</del>
						<br>
						<b style="color:#db633a; font-size:16px;">[10%] 5,200원</b>
					</h2>
					<h3 style="color:#86790b;">#꽃향기 #부드러운 산미 #캬라멜</h3>
				</li>
				<li>
					<a href="#"></a>
					<div class="index-banner3">
						<img src="http://localhost:9000/project/images/index_banner3_decaf_blend.png">
					</div>
					<h1>디카페인 블렌드</h1>
					<h2>
						<del>5,800원</del>
						<br>
						<b style="color:#db633a; font-size:16px;">[10%] 5,200원</b>
					</h2>
					<h3 style="color:#845928;">#곡물 #달콤 #꼬소미향</h3>
				</li>
			</ul>
		</div>
	</div>
	<div style="clear: both"></div>
  <!-- 세번째 배너끝 -->

  <!-- 네번째 배너시작 -->
  <div style="font-size:40px; font-weight:800; color:#111; letter-spacing:-1px;
  text-align:center; margin-top:100px;">이럴땐 이런 커피</div>
  <div style="font-size:16px; font-weight:200; color:#777; line-height:40px; 
  text-align:center; border-bottom:1px solid #666; padding-bottom:10px; width:1200px; margin:0 auto 40px; ">해시태그로 보는 원두추천</div>
  <div style="width:1200px; margin:0 auto 380px;">
    <a href="#">
      <div class="index-banner4-tag">#라떼용_원두</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#처음왔어요</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag2">#스페셜티_와이칸_출시!</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#모카포트용_원두추천</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#겨울_추천원두</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag2">#입문용_커피모음</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#고소한게_내취향</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#적립금_받는방법</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#핸드드립</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#디카페인</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#산미좋아</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag2">#프리미엄_맞춤로스팅</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#스페셜티_커피</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#나에게_맞는_커피찾기</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#12%할인쿠폰_받는방법</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag2">#고르기_어려울때</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#선물추천</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#나만의_커스텀_앞치마</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#과일향나는_커피</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag2">#임산부_추천</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#커피의_정석</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#10%할인되는_이달의커피</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#신상커피</div>
    </a>
    <a href="#">
      <div class="index-banner4-tag">#더치커피</div>
    </a>
  </div>
  <div style="clear: both"></div>
  <!-- 네번째 배너끝 -->

  <!-- 다섯번째 배너시작 -->
  <div id="mainProduct" style="background:#eaeaea; padding-bottom:80px; margin-top:30px;">
    <div class="productBox">
      <div class="xans-element- xans-product xans-product-listmain-1 xans-product-listmain xans-product-1 ec-base-product typeThumb" style="text-align:center;">
        <h1 style="font-size:36px;">SPECIALTY COFFEE</h1>
        <span style="font-weight:200; color:#888; line-height:40px;">뛰어난 향미를 자랑하는 커핑점수 80점 이상의 고품질 스페셜티 커피를 만나보세요. </span>
        <ul class="prdList grid3" style="text-align:center;">
          <li class="xans-record">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_santamonica.jpg" alt="브라질 산타 모니카 내추럴" style="border-radius:300px;">
                <p class="icon_box">
                  <img src="http://localhost:9000/project/images/index_specialitea.gif">
                </p>
              </a>
            </div>
            <div class="description">
              <strong class="name">
                <a href="#">
                  <span style="font-size:14px;color:#000000;">브라질 산타 모니카 내추럴</span>
                </a>
              </strong>
              <ul class="spec">
                <li class="summaryDesc ">#열대과일 #꿀 #체리</li>
                <li class="price">
                  8,000원 
                  <span class=displaynone"></span>
                  <span id="span_product_price_text">
                    <span id="span_product_tax_type_text"></span>
                  </span>
                </li>
                <p>
                  <span class="prdreview ">
                    후기 : 
                    <b> 6</b>
                  </span>
                </p>
                <li class="color displaynone"></li>
              </ul>
            </div>
          </li>
          <li class="xans-record">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_banner5_elsalbadore.jpg" alt="엘살바도르 핀카 에스코시아 SL34 에어로빅 내추럴" style="border-radius:300px;">
                <p class="icon_box">
                  <img src="http://localhost:9000/project/images/index_specialitea.gif">
                </p>
              </a>
            </div>
            <div class="description">
              <strong class="name">
                <a href="#">
                  <span style="font-size:14px;color:#000000;">엘살바도르 핀카 에스코시아 SL34 에어로빅 내추럴</span>
                </a>
              </strong>
              <ul class="spec">
                <li class="summaryDesc ">#짙은 시트러스 #견과류 #살구</li>
                <li class="price">
                  9,000원  
                  <span class=displaynone"></span>
                  <span id="span_product_price_text">
                    <span id="span_product_tax_type_text"></span>
                  </span>
                </li>
                <p>
                  <span class="prdreview ">
                    후기 : 
                    <b> 5</b>
                  </span>
                </p>
                <li class="color displaynone"></li>
              </ul>
            </div>
          </li>
          <li class="xans-record">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_banner5_costarica.jpg" alt="코스타리카 라 이사벨라 카투라 허니" style="border-radius:300px;">
                <p class="icon_box">
                  <img src="http://localhost:9000/project/images/index_specialitea.gif">
                </p>
              </a>
            </div>
            <div class="description">
              <strong class="name">
                <a href="#">
                  <span style="font-size:14px;color:#000000;">코스타리카 라 이사벨라 카투라 허니</span>
                </a>
              </strong>
              <ul class="spec">
                <li class="summaryDesc ">#만다린 #복숭아 #깨끗한 후미</li>
                <li class="price">
                  8,000원 
                  <span class=displaynone"></span>
                  <span id="span_product_price_text">
                    <span id="span_product_tax_type_text"></span>
                  </span>
                </li>
                <p>
                  <span class="prdreview ">
                    후기 : 
                    <b> 4</b>
                  </span>
                </p>
                <li class="color displaynone"></li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div style="text-align:center; margin:0 auto; padding-top:60px; margin-left: 40px;">
      <a href="#">
        <img src="http://localhost:9000/project/images/index_coffebanner.png" style="width:1200px;">
      </a>
    </div>
  </div>
  <div style="clear: both;"></div>
  <!-- 다섯번째 배너끝 -->

  <!-- 여섯번째 배너시작 -->
  <div id="mainProduct">
    <div class="productBox" style="padding-top:0;">
      <div class="xans-element- xans-product xans-product-listmain-2 xans-product-listmain xans-product-2 ec-base-product typeThumb">
        <h1 style="font-size:32px; text-align:center; padding-bottom:14px;">BEAN's Pick</h1>
        <ul class="prdList grid4">
          <li class="xans-record-">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_qutemalawikan.jpg" alt="과테말라 우에우에테낭고 와이칸">
                <p class="icon_box box2">
                  <img src="http://localhost:9000/project/images/index_specialitea.gif">
                </p>
                <p style="margin-top:10px;"></p>
              </a>
            </div>
            <div class="description des2">
              <strong class="name">
                <a href="#">
                  <span style="font-size:15px;color:#111111;">과테말라 우에우에테낭고 와이칸</span>
                </a>
              </strong>
              <ul class="spec spec2">
                <ul class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec2">
                  <li class=" xans-record-" style="line-height:26px">
                    <strong class="title displaynone">
                      <span style="font-size:12px;color:#8f8f8f;">상품요약정보</span>
                    </strong>
                    <span style="font-size:12px;color:#8f8f8f;">#바닐라 #초코 #몹시달다 #깨끗하다</span>
                  </li>
                  <li class=" xans-record-" style="line-height:26px">
                    <span style="font-size:15px;color:#000000;font-weight:bold;">8,000원</span>
                  </li>
                </ul>
              </ul>
            </div>
          </li>
          <li class="xans-record-">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_putwinter.jpg" alt="겨울을 담다 커피팩 (200g x 3개)">
                <p class="icon_box box2">
                  <img src="http://localhost:9000/project/images/index_seasononly.gif">
                  <img src="http://localhost:9000/project/images/index_coffeepack.gif">
                </p>
                <p style="margin-top:10px;"></p>
              </a>
            </div>
            <div class="description des2">
              <strong class="name">
                <a href="#">
                  <span style="font-size:15px;color:#111111;">겨울을 담다 커피팩 (200g x 3개)</span>
                </a>
              </strong>
              <ul class="spec spec2">
                <ul class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec2">
                  <li class=" xans-record-" style="line-height:26px">
                    <strong class="title displaynone">
                      <span style="font-size:12px;color:#8f8f8f;">상품요약정보</span>
                    </strong>
                    <span style="font-size:12px;color:#8f8f8f;">겨울과 잘 어울리는 스페셜티와 싱글오리진 원두로 구성</span>
                  </li>
                  <li class=" xans-record-" style="line-height:26px">
                    <span style="font-size:15px;color:#000000;font-weight:bold;text-decoration:line-through;">26,800원</span>
                    <span id="span_product_tax_type_text" style="text-decoration:line-through;"></span>
                  </li>
                  <li class=" xans-record-" style="line-height:26px">
                    <strong class="title">
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">할인가</span>
                    </strong>
                    <span style="font-size:15px;color:#e56b1f;font-weight:bold;">24,100원 </span>
                    <span style="font-size:15px;color:#e56b1f;font-weight:bold;">[ 10%]</span>
                  </li>
                </ul>
              </ul>
            </div>
          </li>
          <li class="xans-record-">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_banner6_ethiopia.jpg" alt="에티오피아 예가체프 아리차 G1 내추럴">
                <p class="icon_box box2">
                  <img src="http://localhost:9000/project/images/index_specialitea.gif">
                  <img src="http://localhost:9000/project/images/index_micro_lot.gif">
                </p>
                <p style="margin-top:10px;"></p>
              </a>
            </div>
            <div class="description des2">
              <strong class="name">
                <a href="#">
                  <span style="font-size:15px;color:#111111;">에티오피아 예가체프 아리차 G1 내추럴</span>
                </a>
              </strong>
              <ul class="spec spec2">
                <ul class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec2">
                  <li class=" xans-record-" style="line-height:26px">
                    <strong class="title displaynone">
                      <span style="font-size:12px;color:#8f8f8f;">상품요약정보</span>
                    </strong>
                    <span style="font-size:12px;color:#8f8f8f;">#크랜베리 #블루베리 #화사한 여운</span>
                  </li>
                  <li class=" xans-record-" style="line-height:26px">
                    <span style="font-size:15px;color:#000000;font-weight:bold;">8,000원</span>
                  </li>
                </ul>
              </ul>
            </div>
          </li>
          <li class="xans-record-">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_staterPack.jpg" alt="스타터팩 (100g x 5개)">
                <p class="icon_box box2">
                  <img src="http://localhost:9000/project/images/index_coffeepack.gif">
                </p>
                <p style="margin-top:10px;"></p>
              </a>
            </div>
            <div class="description des2">
              <strong class="name">
                <a href="#">
                  <span style="font-size:15px;color:#111111;">스타터팩 (100g x 5개)</span>
                </a>
              </strong>
              <ul class="spec spec2">
                <ul class="xans-element- xans-product xans-product-listitem-2 xans-product-listitem xans-product-2 spec2">
                  <li class=" xans-record-" style="line-height:26px">
                    <strong class="title displaynone">
                      <span style="font-size:12px;color:#8f8f8f;">상품요약정보</span>
                    </strong>
                    <span style="font-size:12px;color:#8f8f8f;">시작하기 좋은 BEST 커피를 모아 할인</span>
                  </li>
                  <li class=" xans-record-" style="line-height:26px">
                    <span style="font-size:15px;color:#000000;font-weight:bold;text-decoration:line-through;">23,700원</span>
                    <span id="span_product_tax_type_text" style="text-decoration:line-through;"></span>
                  </li>
                  <li class=" xans-record-" style="line-height:26px">
                    <strong class="title">
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">할인가</span>
                    </strong>
                    <span style="font-size:15px;color:#e56b1f;font-weight:bold;">19,600원 </span>
                    <span style="font-size:15px;color:#e56b1f;font-weight:bold;">[ 17%]</span>
                  </li>
                </ul>
              </ul>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <!-- 여섯번째 배너끝 -->
  
  <!-- 일곱번째 배너시작 -->
  <div id="mainProduct">
    <div class="productBox" style="padding-top:0;">
      <div class="xans-element- xans-product xans-product-listmain-3 xans-product-listmain xans-product-3 ec-base-product typeThumb">
        <h1 style="font-size:32px; text-align:center; padding-bottom:14px; font-weight:800;">마이팩 전체보기</h1>
        <div style="text-align:center;color:#888; font-weight:200;">
          마이팩은 구매하시기 전에 
          <a href="#" style="text-decoration:underline; font-weight:800; color:#222;">내게 맞는 커피찾기</a>
          에서 커피타입 선택 후, 구매하시길 추천합니다.
        </div>
        <ul class="prdList grid3">
          <li class="xans-record-">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_mypackA1.webp" alt="내 취향의 커피, 마이팩 A-1 (200g x 3개)">
                <p class="icon_box box2">
                  <img src="http://localhost:9000/project/images/index_mypack10percent.png">
                </p>
                <p style="margin-top:10px;"></p>
              </a>
            </div>
            <div class="description des2">
              <strong class="name">
                <a href="#">
                  <span style="font-size:15px;color:#555555;font-weight:bold;">내 취향의 커피, 마이팩 A-1 (200g x 3개)</span>
                </a>
              </strong>
              <ul class="spec2">
                <ul class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec2">
                  <li class="xans-record-">
                  <span style="font-size:12px;color:#8f8f8f;">새콤달콤한 향과 산뜻한 산미의 커피</span>
                  </li>
                  <li class="xans-record-">
                    <span style="font-size:15px;color:#000000;font-weight:bold;text-decoration:line-through;">28,500원</span>
                  </li>
                  <li class="xans-record-">
                    <strong class="title">
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">할인판매가</span>
                    </strong>
                    <span style="font-size:15px;color:#e56b1f;font-weight:bold;">25,600원
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">[ 10%]</span>
                    </span>
                  </li>
                </ul>
              </ul>
            </div>
          </li>
          <li class="xans-record-">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_mypackA2.webp" alt="내 취향의 커피, 마이팩 A-2 (200g x 3개)">
                <p class="icon_box box2">
                  <img src="http://localhost:9000/project/images/index_mypack10percent.png">
                </p>
                <p style="margin-top:10px;"></p>
              </a>
            </div>
            <div class="description des2">
              <strong class="name">
                <a href="#">
                  <span style="font-size:15px;color:#555555;font-weight:bold;">내 취향의 커피, 마이팩 A-2 (200g x 3개)</span>
                </a>
              </strong>
              <ul class="spec2">
                <ul class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec2">
                  <li class="xans-record-">
                  <span style="font-size:12px;color:#8f8f8f;">새콤달콤한 향과 부드러운 미디움 커피</span>
                  </li>
                  <li class="xans-record-">
                    <span style="font-size:15px;color:#000000;font-weight:bold;text-decoration:line-through;">27,600원</span>
                  </li>
                  <li class="xans-record-">
                    <strong class="title">
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">할인판매가</span>
                    </strong>
                    <span style="font-size:15px;color:#e56b1f;font-weight:bold;">24,800원 
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">[ 10%]</span>
                    </span>
                  </li>
                </ul>
              </ul>
            </div>
          </li>
          <li class="xans-record-">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_mypackA3.webp" alt="내 취향의 커피, 마이팩 B-2 (200g x 4개)">
                <p class="icon_box box2">
                  <img src="http://localhost:9000/project/images/index_mypack10percent.png">
                </p>
                <p style="margin-top:10px;"></p>
              </a>
            </div>
            <div class="description des2">
              <strong class="name">
                <a href="#">
                  <span style="font-size:15px;color:#555555;font-weight:bold;">내 취향의 커피, 마이팩 B-2 (200g x 4개)</span>
                </a>
              </strong>
              <ul class="spec2">
                <ul class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec2">
                  <li class="xans-record-">
                  <span style="font-size:12px;color:#8f8f8f;">고소한 단향에 부드러운 미디움의 커피</span>
                  </li>
                  <li class="xans-record-">
                    <span style="font-size:15px;color:#000000;font-weight:bold;text-decoration:line-through;">31,700원</span>
                  </li>
                  <li class="xans-record-">
                    <strong class="title">
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">할인판매가</span>
                    </strong>
                    <span style="font-size:15px;color:#e56b1f;font-weight:bold;">28,500원 
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">[ 10%]</span>
                    </span>
                  </li>
                </ul>
              </ul>
            </div>
          </li>
          <li class="xans-record-">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_mypackA4.webp" alt="내 취향의 커피, 마이팩 B-3 (200g x 4개)">
                <p class="icon_box box2">
                  <img src="http://localhost:9000/project/images/index_mypack10percent.png">
                </p>
                <p style="margin-top:10px;"></p>
              </a>
            </div>
            <div class="description des2">
              <strong class="name">
                <a href="#">
                  <span style="font-size:15px;color:#555555;font-weight:bold;">내 취향의 커피, 마이팩 B-3 (200g x 4개)</span>
                </a>
              </strong>
              <ul class="spec2">
                <ul class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec2">
                  <li class="xans-record-">
                  <span style="font-size:12px;color:#8f8f8f;">고소한 단향에 진하고 묵직한 커피</span>
                  </li>
                  <li class="xans-record-">
                    <span style="font-size:15px;color:#000000;font-weight:bold;text-decoration:line-through;">28,800원</span>
                  </li>
                  <li class="xans-record-">
                    <strong class="title">
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">할인판매가</span>
                    </strong>
                    <span style="font-size:15px;color:#e56b1f;font-weight:bold;">25,900원
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">[ 10%]</span>
                    </span>
                  </li>
                </ul>
              </ul>
            </div>
          </li>
          <li class="xans-record-">
            <div class="thumbnail">
              <a href="#">
                <img src="http://localhost:9000/project/images/index_mypackA5.webp" alt="내 취향의 커피, 마이팩 C-3 (200g x 4개)">
                <p class="icon_box box2">
                  <img src="http://localhost:9000/project/images/index_mypack10percent.png">
                </p>
                <p style="margin-top:10px;"></p>
              </a>
            </div>
            <div class="description des2">
              <strong class="name">
                <a href="#">
                  <span style="font-size:15px;color:#555555;font-weight:bold;">내 취향의 커피, 마이팩 C-3 (200g x 4개)</span>
                </a>
              </strong>
              <ul class="spec2">
                <ul class="xans-element- xans-product xans-product-listitem-3 xans-product-listitem xans-product-3 spec2">
                  <li class="xans-record-">
                  <span style="font-size:12px;color:#8f8f8f;">쌉싸름+구수하며 진하고 묵직한 커피</span>
                  </li>
                  <li class="xans-record-">
                    <span style="font-size:15px;color:#000000;font-weight:bold;text-decoration:line-through;">29,500원</span>
                  </li>
                  <li class="xans-record-">
                    <strong class="title">
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">할인판매가</span>
                    </strong>
                    <span style="font-size:15px;color:#e56b1f;font-weight:bold;">26,500원
                      <span style="font-size:15px;color:#e56b1f;font-weight:bold;">[ 10%]</span>
                    </span>
                  </li>
                </ul>
              </ul>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div style="clear: both;"></div>

  <!-- 일곱번째 배너끝 -->
	
<!-- footer -->
	<jsp:include page="footer.jsp" />
</body>
</html>