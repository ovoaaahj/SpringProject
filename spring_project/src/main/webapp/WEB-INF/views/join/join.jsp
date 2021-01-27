<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/project/css/jw.css" />
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<script>
      $(document).ready(function () {
        $("#joinBtn").click(function () {
          if ($("#id").val() == "") {
            $("#id").focus();
            alert("아이디를 입력해주세요");
            return false;
          } else if ($("#password").val() == "") {
            alert("패스워드를 입력해주세요");
            $("#pass").focus();
            return false;
          } else if ($("#spassword").val() == "") {
            alert("패스워드 확인을 입력해주세요");
            $("#cpass").focus();
            return false;
          } else if ($("#name").val() == "") {
            alert("성명을 입력해주세요");
            $("#name").focus();
            return false;
          } else if ($("#email").val() == "") {
            alert("이메일을 입력해주세요");
            $("#email").focus();
            return false;
          } else if ($("#hp2").val() == "") {
            alert("핸드폰번호를 입력해주세요");
            $("#hp2").focus();
            return false;
          } else if ($("#hp3").val() == "") {
            alert("핸드폰번호를 입력해주세요");
            $("#hp3").focus();
            return false;
          } else {
            //서버전송
            joinForm.submit();
          }
        });
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
						<a href="#">로그인</a> <a href="#">회원가입</a> <a href="#"
							style="margin-left: 8px; padding-left: 8px; border-left: 1px solid #ddd; color: #333; font-weight: bold">개인결제</a>
					</div>
				</div>
			</div>
		</div>
		<div class="titleArea" style="margin-top: 80px">
			<a href="#"> <img
				src="http://localhost:9000/project/images/logo.png"
				style="width: 180px" />
			</a>
			<h2>회원 가입1</h2>
		</div>
		<form id="joinForm" name="joinForm" action="join_proc.do"
			method="POST" target="_self">
			<div style="width: 500px; margin: 0 auto"
				class="xans-element- xans-member xans-member-join">
				<div
					style="font-size: 18px; font-weight: bold; padding: 40px 0 10px 0">기본정보</div>
				<p class="required" style="font-size: 12px">
					<img src="http://localhost:9000/project/images/ico_required.gif"
						alt="필수" /> 필수입력사항
				</p>
				<div class="ec-base-table typeWrite">
					<table border="1">
						<tbody>
							<tr>
								<td class="joinkong" style="padding-top: 10px"><span
									style="font-size: 14px; color: #222">아이디</span> <img
									src="http://localhost:9000/project/images/ico_required.gif"
									alt="필수" /></td>
								<td class="joinkong2" style="padding-top: 10px"><input
									type="text" name="id" id="id" autocomplete="off" /> <br /> <span
									id="idMsg" class="error">아이디를 입력해 주세요.</span></td>
							</tr>
							<tr>
								<td class="joinkong" style="padding-top: 10px"><span
									style="font-size: 14px; color: #222">비밀번호</span> <img
									src="http://localhost:9000/project/images/ico_required.gif"
									alt="필수" /></td>
								<td class="joinkong2" style="padding-top: 10px"><input
									type="password" name="password" id="password"
									autocomplete="off" maxlength="16" /> <br /> (영문 대소문자/숫자/특수문자
									중 2가지 이상 조합,10자~16자)</td>
							</tr>
							<tr>
								<td class="joinkong" style="padding-top: 10px"><span
									style="font-size: 14px; color: #222">비밀번호 확인</span> <img
									src="http://localhost:9000/project/images/ico_required.gif"
									alt="필수" /></td>
								<td class="joinkong2" style="padding-top: 10px"><input
									type="password" name="spassword" id="spassword"
									autocomplete="off" maxlength="16" /> <br /> <span id="pwMsg"
									class="error">비밀번호가 일치하지 않습니다</span></td>
							</tr>
							<tr>
								<td class="joinkong" style="padding-top: 10px"><span
									style="font-size: 14px; color: #222">이름</span> <img
									src="http://localhost:9000/project/images/ico_required.gif"
									alt="필수" /></td>
								<td class="joinkong2" style="padding-top: 10px"><input
									type="text" name="name" id="name" maxlength="20"
									autocomplete="off" /></td>
							</tr>
							<tr>
								<td class="joinkong" style="padding-top: 10px"><span
									style="font-size: 14px; color: #222">휴대전화</span> <img
									src="http://localhost:9000/project/images/ico_required.gif"
									alt="필수" /></td>
								<td class="joinkong2" style="padding-top: 10px"><select
									name="hp[]" id="hp1">
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
								</select> - <input type="text" name="hp[]" id="hp2" maxlength="4"
									autocomplete="off" /> - <input type="text" name="hp[]"
									id="hp3" maxlength="4" autocomplete="off" /></td>
							</tr>
							<tr>
								<td class="joinkong" style="padding-top: 10px"><span
									style="font-size: 14px; color: #222">이메일</span> <img
									src="http://localhost:9000/project/images/ico_required.gif"
									alt="필수" /></td>
								<td class="joinkong2" style="padding-top: 10px"><input
									type="text" name="email" id="email" maxlength="20"
									autocomplete="off" /></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div
					style="font-size: 18px; font-weight: bold; padding: 40px 0 10px 0">
					이용약관동의 <span
						style="font-weight: normal; font-size: 12px; color: #999">*
						선택항목에 동의하지 않은 경우도 회원가입이 가능합니다.</span>
				</div>
				<div class="ec-base-box_join">
					<p style="font-size: 14px">
						<span class="ec-base-chk"> <input type="checkbox"
							id="sAgreeAllChecked" /> <em class="checkbox"></em>
						</span> <label for="sAgreeAllChecked"> <strong
							style="font-weight: bold;">전체동의</strong>
						</label>
					</p>
				</div>
				<div class="ec-base-box_join">
					<p class="check">
						<span> [필수] <a href="#"
							style="text-decoration: underline; font-weight: bold;">이용약관</a> 에
							동의하십니까?
						</span> <input type="checkbox" id="agree_service_chk">
					</p>
				</div>
				<div class="ec-base-box_join">
					<p class="check">
						<span> [필수] <a href="#"
							style="text-decoration: underline; font-weight: bold;">개인정보
								수집 및 이용</a> 에 동의하십니까?
						</span> <input type="checkbox" id="agree_service_chk">
					</p>
				</div>
				<div class="ec-base-box_join">
					<p class="check">
						<span> [선택] SMS 수신을 동의하십니까? </span> <input type="checkbox"
							id="agree_service_chk">
					</p>
				</div>
				<div class="ec-base-box_join">
					<p class="check">
						<span> [선택] 이메일 수신을 동의하십니까? </span> <input type="checkbox"
							id="agree_service_chk">
					</p>
				</div>
			</div>
			<div style="padding-top: 60px" class="ec-base-button">
				<button type="button" id="joinBtn" style="padding: 16px 60px; border: 1px solid #222; background: #222; font-size: 15px; color: #fff; font-weight: normal;">회원가입</button>
			</div>
		</form>
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>