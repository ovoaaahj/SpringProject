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
    	  /**
    		 * 회원가입 - 아이디 중복체크
    		 */
    		 $("#id").focusout(function(){
    			 	if ($("#id").val() == "") {
    		            $("#idMsg").text("아이디를 입력해주세요").css("color","#da7354");
    		            $("#id").focus();
    		            return false;
    		          }else{
	    				//ajax를 활용한 서버 연동
	    				$.ajax({
	    					url:"idCheck.do?id="+$("#id").val(), 
	    					success:function(result){
	    						if(result == 1){
	    							$("#idMsg").text($("#id").val()+"는 이미 사용중인 아이디입니다.")
	    							.css("color","#da7354");
	    							$("#id").focus();
	    							return false;
	    						}else{
	    							$("#idMsg").text($("#id").val()+"는 사용 가능한 아이디입니다.")
	    							.css("color","#da7354");
	    							$("#pass").focus();
	    							return true;
	    						}
	    					}
	    				});
    		        	  
    		          }
    		});
    	  
    	/* 회원가입 폼체크 */
        $("#joinBtn").click(function () {
          if ($("#id").val() == "") {
            $("#id").focus();
            alert("아이디를 입력해주세요");
            return false;
          } else if ($("#pass").val() == "") {
            alert("비밀번호를 입력해주세요");
            $("#pass").focus();
            return false;
          } else if ($("#spass").val() == "") {
            alert("비밀번호를 확인을 입력해주세요");
            $("#spass").focus();
            return false;
          } else if ($("#name").val() == "") {
            alert("이름을 입력해주세요");
            $("#name").focus();
            return false;
          }else if ($("#hp2").val() == "") {
            alert("핸드폰번호를 입력해주세요");
            $("#hp2").focus();
            return false;
          } else if ($("#hp3").val() == "") {
            alert("핸드폰번호를 입력해주세요");
            $("#hp3").focus();
            return false;
          }else if ($("#email").val() == "") {
              alert("이메일을 입력해주세요");
              $("#email").focus();
              return false;
          } else {
            //서버전송
              joinForm.submit();
          }
        });
        /* 비밀번호 정규식  */
		 $("#pass").focusout(function(){
			 	var regExp = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
	    		if(regExp.test($("#pass").val())){
	    			$("#pwMsg1").text("");
	    			return true;	//이메일 형식에 맞는 경우
	    		}else{
	    			$("#pwMsg1").text("최소 8 자, 최소 하나의 문자 및 하나의 숫자를 입력해주세요").css("color","#da7354");
	    			$("#pass").focus();
	    			return false;
	    		}
			}); //focusout
			
		/* 비밀번호 같은지 확인 */
        $("#spass").focusout(function(){
			if($("#pass").val() != "" && $("#spass").val() != ""){	
				
				if($("#pass").val() == $("#spass").val()){					
					$("#pwMsg2").text("패스워드가 동일합니다").css("color","#da7354");
					$("#name").focus();
					return true; 
				}else{
					$("#pwMsg2").text("패스워드가 다릅니다. 다시 입력해주세요").css("color","#da7354");
					$("#spass").val("");
					$("#pass").focus();
					return false;				
				}		
			}
		}); //focusout
		
    	/**
    	*	이메일 정규식 체크
    	**/
		 $("#email").focusout(function(){
			 	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	    		if(regExp.test($("#email").val())){
	    			$("#emailMsg").text("");
	    			return true;	//이메일 형식에 맞는 경우
	    		}else{
	    			$("#emailMsg").text("이메일 형식으로 입력해 주세요").css("color","#da7354");
	    			$("#email").focus();
	    			return false;
	    		}
			}); //focusout
			
		 $("#sAgreeAllChecked").click(function(){
	            //만약 전체 선택 체크박스가 체크된상태일경우
	            if($("#sAgreeAllChecked").prop("checked")) {
	                $("input[type=checkbox]").prop("checked",true);
	                //input type이 체크박스인것은 모두 체크함
	            } else {
	                $("input[type=checkbox]").prop("checked",false);
	                //input type이 체크박스인것은 모두 체크 해제함
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
						<a href="#">로그인</a> <a href="http://localhost:9000/project/join.do">회원가입</a> <a href="#"
							style="margin-left: 8px; padding-left: 8px; border-left: 1px solid #ddd; color: #333; font-weight: bold">개인결제</a>
					</div>
				</div>
			</div>
		</div>
		<div class="titleArea" style="margin-top: 80px">
			<a href="http://localhost:9000/project/index.do"> <img
				src="http://localhost:9000/project/images/logo.png"
				style="width: 180px" />
			</a>
			<h2>회원 가입</h2>
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
				<button type="button" id="joinBtn"
					style="padding: 16px 60px; border: 1px solid #222; background: #222; font-size: 15px; color: #fff; font-weight: normal;">회원가입</button>
			</div>
		</form>
	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>