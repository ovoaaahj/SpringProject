<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<scirpt>
$(document).ready(function(){
		/**
		*	회원가입 - 아이디 중복체크
		**/
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
</scirpt>
</head>
<body>

</body>
</html>