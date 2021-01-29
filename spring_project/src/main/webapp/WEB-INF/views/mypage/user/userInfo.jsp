<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%--
    	SessionVO svo = (SessionVO)session.getAttribute(svo);
    	
    	if(svo != null){
    --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
	
	$("#userInfoCheck").click(function(){
		if($("#name").val()==""){
			alert("성명을 입력해주세요");
			$("#name").focus();
			return false;
		}else if($("#pass").val()==""){
			alert("패스워드를 입력해주세요");
			$("#pass").focus();
			return false;
		}else if($("#spass").val()==""){
			alert("패스워드 확인을 입력해주세요");
			$("#spass").focus();
			return false;
		}else if($("#hp1").val()=="선택"){
			alert("휴대전화를 선택해주세요");
			$("#hp1").focus();
			return false;
		}else if($("#hp2").val()==""){
			alert("휴대전화를 입력해주세요");
			$("#hp2").focus();
			return false;
		}else if($("#hp3").val()==""){
			alert("휴대전화를 입력해주세요");
			$("#hp3").focus();
			return false;
		}else if($("#email").val()==""){
			alert("이메일을 입력해주세요");
			$("#email").focus();
			return false;
		}else{
			userupdateForm.submit();
		}
	});
	
	
	//idCheck
	$("#idCheck").click(function(){
			if(!ruleCheck($("#id"))){
				return false;
			}else{
				$.ajax({
					url:"idCheck.do?id="+$("#id").val(),
					success:function(result){
						if(result == 1){
							$("#idcheck_result").text("중복된 아이디 입니다.")
							.css("color","tomato");
						}else {
							$(".idcheck").css("display","none");
							$("#idcheck_result").text("사용가능한 아이디 입니다.")
							.css("color","dodgerblue");
						}
					}
				});
			}
		
		});
	
	$("#cpass").focusout(function(){
		if($("#pass").val() != "" && $("#cpass").val() != ""){
			if($("#pass").val() == $("#cpass").val()) {
				$("#msg").text("패스워드가 동일합니다").css("color","blue");
				$("#email").focus();
				return true;
			}else{
				$("#msg").text("패스워드가 다릅니다. 다시 입력해주세요").css("color","red");
				$("#pass").val("");
				$("#cpass").val("");
				$("#pass").focus();
				return false;
			}
		}
	});//비밀번호 확인 
});//ready


function ruleCheck(obj){
	var re = /^[A-Za-z0-9]{6,12}$/;
	if(obj.value != 0){
		if(re.test(obj.value)){	//정규식에 맞는 경우
			return true;
		}else {
			alert("비밀번호는 6~12자리 사이로 입력해주세요.")
			obj.focus();
			return false;
		}
	}
	
}//ruleCheck

</script>
<style>

</style>
</head>
<body>
<!-- header -->
	<jsp:include page="../../header.jsp" />
	
	<div class="sidenav">
					<span>마이페이지</span>
					<div class="underline"></div>
					<a href="http://localhost:9000/project/mypage/userInfo.do">개인정보 수정</a>
					<a href="http://localhost:9000/project/mypage/cart_list.do">장바구니 목록</a>
					<a href="http://localhost:9000/project/mypage/buying_list.do">구매확인</a>
					<a href="http://localhost:9000/project/delAccount.do">회원탈퇴</a>
	</div>
	
	<!-- content -->
	<div class="content">
		<section class="section1">
			<div>
				<h1>개인정보 수정</h1>				
				   <form id="userupdateForm" name="userupdateForm" action="join_proc.do"
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
                           id="idMsg" class="error"></span></td>
                     </tr>
                     <tr>
                        <td class="joinkong" style="padding-top: 10px"><span
                           style="font-size: 14px; color: #222">비밀번호</span> <img
                           src="http://localhost:9000/project/images/ico_required.gif"
                           alt="필수" /></td>
                        <td class="joinkong2" style="padding-top: 10px"><input
                           type="password" name="pass" id="pass" autocomplete="off"
                           maxlength="16" /> <br /> <span id="pwMsg1" class="error"></span></td>
                     </tr>
                     <tr>
                        <td class="joinkong" style="padding-top: 10px"><span
                           style="font-size: 14px; color: #222">비밀번호 확인</span> <img
                           src="http://localhost:9000/project/images/ico_required.gif"
                           alt="필수" /></td>
                        <td class="joinkong2" style="padding-top: 10px"><input
                           type="password" name="spass" id="spass" autocomplete="off"
                           maxlength="16" /> <br /> <span id="pwMsg2" class="error"></span></td>
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
                           name="hp1" id="hp1">
                              <option value="010">010</option>
                              <option value="011">011</option>
                              <option value="016">016</option>
                              <option value="017">017</option>
                              <option value="018">018</option>
                              <option value="019">019</option>
                        </select> - <input type="text" name="hp2" id="hp2" maxlength="4"
                           autocomplete="off" /> - <input type="text" name="hp3" id="hp3"
                           maxlength="4" autocomplete="off" /></td>
                     </tr>
                     <tr>
                        <td class="joinkong" style="padding-top: 10px"><span
                           style="font-size: 14px; color: #222">이메일</span> <img
                           src="http://localhost:9000/project/images/ico_required.gif"
                           alt="필수" /></td>
                        <td class="joinkong2" style="padding-top: 10px"><input
                           type="text" name="email" id="email" maxlength="20"
                           autocomplete="off" /><br>
                        <span id="emailMsg" class="error"></span></td>
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
            <button type="button" id="userInfoCheck"
               style="padding: 16px 60px; border: 1px solid #222; background: #222; font-size: 15px; color: #fff; font-weight: normal;">수정하기</button>
         </div>
      </form>
			</div>
		</section>		
	</div>
	
	<!-- footer -->
		<jsp:include page="../../footer.jsp" />
	
</body>
</html>

<%-- }else{ %>
<script>
   alert("로그인을 진행하셔야 접근이 가능합니다.");
</script>
<% } --%>