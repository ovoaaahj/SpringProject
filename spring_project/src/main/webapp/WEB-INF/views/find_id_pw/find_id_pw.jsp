<%@page import="com.spring.vo.CoffeeMemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.spring.vo.CoffeeMemberVO"/>
<jsp:setProperty name="user" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/project/css/jw.css" />
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<script src="https://kit.fontawesome.com/5dfc498e79.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
$(document).ready(function () {
		if("${id}"){
			 swal("아이디는 ${id} 입니다","","success");
		}else if("${failId}"){
			swal("이름 혹은 전화번호가 맞지 않습니다","","warning");
		}
		
		if("${pass}"){
			 swal("비밀번호는 ${pass} 입니다","","success");
		}else if("${failPass}"){
			swal("아이디가 맞지 않습니다","","warning");
		}
		
		$("#name").focusout(function(){
		 	if ($("#name").val() == "") {
		        $("#name").focus();
		        return false;
		      }else{
				//ajax를 활용한 서버 연동
				$.ajax({
					url:"nameCheck.do?name="+$("#name").val(), 
					success:function(result){
						if(result == 1){
							$("#nameMsg").css("display","none");
							return true;
						}else{
							$("#nameMsg").css("display","block");
							$("#name").focus();
							return false;
						}
					}
				});
		    	  
		      }
		});
		
		$("#hp").focusout(function(){
		 	if ($("#hp").val() == "") {
		        $("#hp").focus();
		        return false;
		      }else{
				//ajax를 활용한 서버 연동
				$.ajax({
					url:"hpCheck.do?hp="+$("#hp").val(), 
					success:function(result){
						if(result == 1){
							$("#phoneMsg").css("display","none");
							$("#phoneMsg2").css("display","block");
							$("#hp").focus();
							return true;
						}else{
							$("#phoneMsg2").css("display","none");
							$("#phoneMsg").css("display","block");
							return false;
						}
					}
				});
		    	  
		      }
		});
		
		$("#id").focusout(function(){
		 	if ($("#id").val() == "") {
	            $("#id").focus();
	            return false;
	          }else{
				//ajax를 활용한 서버 연동
				$.ajax({
					url:"idCheck.do?id="+$("#id").val(), 
					success:function(result){
						if(result == 1){
							$("#idMsg").css("display","none");
							$("#id").focus();
							return true;
						}else{
							$("#idMsg").css("display","block");
							return false;
						}
					}
				});
	        	  
	          }
	});
});
</script>
</head>
<body class="find-id-pw-body">
    <header class="idpw_header">
      <div class="idpw_top">
        <a href="http://localhost:9000/project/index.do">
          <img src="http://localhost:9000/project/images/logo.png" class="logo"
        /></a>
      </div>
    </header>
    <div class="idpw_container">
      <div id="subtop" style="bottom: inherit; margin-top: 70px;" >
        <div class="subgnbinner">
          <div id="gnb">
            <div id="log" class="xans-element- xans-layout xans-layout-statelogoff">
              <a href="http://localhost:9000/project/login.do">로그인</a>
              <a href="http://localhost:9000/project/join.do">회원가입</a>
              <a
                href="#"
                style="margin-left: 8px; padding-left: 8px; border-left: 1px solid #ddd; color: #333; font-weight: bold"
                >개인결제</a
              >
            </div>
          </div>
        </div>
      </div>
      <div class="idpw_content">
        <h2>아이디 / 비밀번호 찾기</h2>
        <div class="idpw">
          <div class="id-content">
            <div class="idpw_head">아이디 찾기</div>
            <div class="idpw_body a">
              <form name="findId_form" action="http://localhost:9000/project/find_id.do" method="post">
                <div class="icon-form" id="nameMsg" style="display:none">
                  <i class="fas fa-exclamation-triangle"></i>
                  <p class="warningmsg">이름이 존재하지 않습니다</p>
                </div>
                <input type="text" name="name" id="name" placeholder="이름" autocomplete="off" required
							oninvalid="this.setCustomValidity('이름을 입력해주세요')"
							oninput="setCustomValidity('')" /> 
                <div class="icon-form" id="phoneMsg" style="display:none">
                  <i class="fas fa-exclamation-triangle"></i>
                  <p class="warningmsg">전화번호가 존재하지 않습니다</p>
                </div>
                 <div class="icon-form" id="phoneMsg2">
                  <p class="warningmsg" style="color:black">전화번호 입력시 - 를 포함해서 입력해주세요</p>
                </div>
                <input type="text" name="hp" id="hp" placeholder="전화번호" autocomplete="" required
							oninvalid="this.setCustomValidity('전화번호를 입력해주세요')"
							oninput="setCustomValidity('')" /> 
                <small class="">회원가입시 입력했던 이름과 전화번호를 입력해주시면 아이디를 알려드립니다.</small>
                <button id="btn_id" type="submit">아이디 찾기</button>
              </form>
            </div>
          </div>
          <div class="pw-content">
            <div class="idpw_head">비밀번호 찾기</div>
            <div class="idpw_body b">
              <form name="findPass_form" action="http://localhost:9000/project/find_pw.do" method="post">
                <div class="icon-form" id="idMsg" style="display:none">
                  <i class="fas fa-exclamation-triangle"></i>
                  <p class="warningmsg">아이디가 존재하지 않습니다</p>
                </div>
                <input type="text" name="id" id="id" placeholder="아이디" autocomplete="off" required
							oninvalid="this.setCustomValidity('아이디를 입력해주세요')"
							oninput="setCustomValidity('')" /> 
                <small>회원가입시 입력했던 아이디 입력시 비밀번호를 알려드립니다.</small>
                <button id="btn_pass" type="submit">비밀번호 찾기</button>
              </form>
            </div>
          </div>
          <div class="idpw_copyright">
            <h6 class="text-copy">Copyright © 2021 Bean's Story Inc. All rights reserved.</h6>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>