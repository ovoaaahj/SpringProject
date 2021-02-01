<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/project/css/jw.css" />
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
$(document).ready(function () {
	  if("${result}"){
		  swal("아이디 또는 비밀번호가 틀렸습니다","","warning");
	  }
	  
	  var userInputId = getCookie("userInputId");
      $("input[name='id']").val(userInputId); 
      if($("input[name='id']").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 
      	$("#member_check_save_id0").attr("checked", true);// 아이디 저장하기 체크되어있을 시,
      }											// ID 저장하기를 체크 상태로 두기.
      
      $("#member_check_save_id0").change(function(){ // 체크박스에 변화가 발생시
          if($("#member_check_save_id0").is(":checked")){ // ID 저장하기 체크했을 때,
              var userInputId = $("input[name='id']").val();
              setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
          }else{ // ID 저장하기 체크 해제 시,
              deleteCookie("userInputId");
          }
      });
      
      // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
      $("input[name='id']").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
          if($("#member_check_save_id0").is(":checked")){ // ID 저장하기를 체크한 상태라면,
              var userInputId = $("input[name='id']").val();
              setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
          }
      });
      
      function setCookie(cookieName, value, exdays){
          var exdate = new Date();
          exdate.setDate(exdate.getDate() + exdays);
          var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
          document.cookie = cookieName + "=" + cookieValue;
      }
       
      function deleteCookie(cookieName){
          var expireDate = new Date();
          expireDate.setDate(expireDate.getDate() - 1);
          document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
      }
       
      function getCookie(cookieName) {
          cookieName = cookieName + '=';
          var cookieData = document.cookie;
          var start = cookieData.indexOf(cookieName);
          var cookieValue = '';
          if(start != -1){
              start += cookieName.length;
              var end = cookieData.indexOf(';', start);
              if(end == -1)end = cookieData.length;
              cookieValue = cookieData.substring(start, end);
          }
          return unescape(cookieValue);
      }
});
</script>
</head>
<body>
<div id="contentsWrap">
		<div id="subtop" style="bottom: inherit">
			<div class="subgnbinner">
				<div id="gnb">
					<div id="log"
						class="xans-element- xans-layout xans-layout-statelogoff">
						<a href="http://localhost:9000/project/login.do">로그인</a> <a href="http://localhost:9000/project/join.do">회원가입</a> <a href="#"
							style="margin-left: 8px; padding-left: 8px; border-left: 1px solid #ddd; color: #333; font-weight: bold">개인결제</a>
					</div>
				</div>
			</div>
		</div>
		<form id="login_form" action="login_proc.do" method="POST" target="_self">
			<div id="login-wrap" style="margin: 0 auto; border: 0"
				class="xans-element- xans-member xans-member-login memberloginbox">
				<div class="login" style="border: 0; padding: 200px 0">
					<div class="titleArea" style="margin: 0 auto; text-align: center">
						<a href="http://localhost:9000/project/index.do"> <img
							src="http://localhost:9000/project/images/logo.png"
							style="width: 180px" />
						</a>
						<div
							style="font-size: 26px; font-weight: bold; margin: 0 auto; padding-bottom: 15px; width: 380px; margin-top: 30px; text-align: center;">
							회원 로그인</div>
					</div>
					<fieldset>
						<label class="idbox" title="아이디"> <input id="id" name="id"
							type="text" autocomplete="off" required
							oninvalid="this.setCustomValidity('아이디를 입력해주세요')"
							oninput="setCustomValidity('')" />
						</label> <label class="pwbox" title="비밀번호"> <input id="pass"
							name="pass" type="password" autocomplete="off" required
							oninvalid="this.setCustomValidity('아이디를 입력해주세요')"
							oninput="setCustomValidity('')" />
						</label>
						<button type="submit" id="loginBtn"
							style="width: 128px; height: 93px; background: #222; color: #fff; font-size: 13px; text-align: center; line-height: 93px;">
							로그인</button>
						<ul style="margin-top: 15px">
							<li style="font-size: 12px; float: right">
								<p class="security">
									<input id="member_check_save_id0" name="check_save_id"
										type="checkbox" /> <label for="member_check_save_id0">아이디
										저장</label> <label>보안 접속</label>
								</p>
							</li>
						</ul>
						<div
							style="padding: 15px 0; font-size: 13px; border-top: 1px solid #eee; margin-top: 20px; text-align: center;">
							<a href="http://localhost:9000/project/join.do"
								style="padding: 0 10px; border-right: 1px solid #e9e9e9; color: #666;">회원가입</a>
							<a href="http://localhost:9000/project/find_id_pw.do"
								style="border-right: 1px solid #e9e9e9; padding: 0 12px; color: #666;">아이디
								/ 비밀번호 찾기</a> 
						</div>
						<div id="resultPopup"
							style="text-align: center; margin: 0 auto; background: #5392e5; padding: 10px;">
							<label id="popup"> <span
								style="font-size: 15px; padding: 10px; font-weight: 400; color: #fff; letter-spacing: 0; text-align: center;">
									어서오세요 빈즈 스토리에 오신것을 환영합니다!</span>
							</label>
						</div>
					</fieldset>
				</div>
			</div>
		</form>
	</div>
</body>
</html>