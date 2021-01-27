<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/WebProject/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("input[name='chk']").change(function(){
			// $("#all:checked").length == 0
			if($(this).is(":checked")){
				//선택 - 하위 checkbox 선택
				$(this).prop("checked",true);
			}else{
				//선택 - 하위 checkbox 해제
				$(this).prop("checked",false);
				 $.ajax({
					url:"wishdelete.jsp?pid="+$(this).attr("wid"),
					success : function(result){
						if(result!=0){
							location.href="http://localhost:9000/project/mypage/wishlist.do";
						}
					}
				});
			}
	
		});
		
	});

</script>
<style>
body {
  font-family: "Lato", sans-serif;
}

div.sidenav>div{
	font-size:30px;
	color: white;
	text-decoration:underline;
}

div.sidenav>div.hover {
	font-color: #f1f1f1;
}
.sidenav {
  height: 500px;
  width: 200px;
  position: relative;
  z-index: 1;
  top: 0;
  left: 0;
  background-color:white;
  overflow-x: hidden;
  padding-top: 20px;
  padding-bottom: 0px;
  display:inline-block;
}

.sidenav a {
  padding: 25px 6px 25px 32px;
  text-decoration: none;
  font-size: 21px;
  color: #000000;
  display: block;
  
}
.sidenav a:first-child {
	padding-top:31px;
}

.sidenav span {
	padding: 20px 6px 25px 32px;
  text-decoration: none;
  font-size:32px;
  color: #000000;
  font-weight:500;
  display:block;
}

.sidenav div.underline {
	height:2px;
	width:210px;
	background-color:lightgray;
	margin-left: 15px;
	margin-top:-10px;
	margin-bottom:17px;
}

.sidenav a:hover {
  color: #f1f1f1;
}

div.content {
	display:inline-block;
}
.cart_section {
	margin-left:250px;
	margin-bottom:380px;
	margin-top:48px;

}

table {
	width:800px;
	overflow:scroll;
}
table, th, td {
	border:1px solid gray;
	border-collapse:collapse;
}
table tr {
	clear:both;
}
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
	
	<div class="content">
		<section class="cart_section">
			<div>
				 	<div>
				<form name="cartlist" action="#" method="get" class="cartlist">
				<table>
            	<tr>
            		<td>
			           <h1>찜목록</h1>
			           <div>
			           <%--for(wishlistVO vo:list){ --%>
				 		<table class="cart_list">
				 		<tr>
				 			<th>
				 				<input type="checkbox" name="chk" id="${vo.pid }" checked>
				 			</th>
				 			<th>상품사진</th>
				 			<th>상품명</th>
				 			<th>상품가격</th>
				 			<th>수량</th>
				 			<th>선택</th>
				 		</tr>
				 		<tr>
				 			<td>${vo.pmphoto }</td>
				 			<td>${vo.ptitle }</td>
				 			<td>${vo.bprice }</td>
				 			<td></td>
				 			<td>
				 				<a href=""><button type="button" class="cart_btn">주문하기</button></a>
				 				<a href="http://localhost:9000/project/mypage/cart_delete.do"><button type="button" class="cart_btn">삭제하기</button></a>
				 			</td>
				 		</tr>
				 		<tr>
				 			<td colspan="6">
				 				<!-- <a href="?pid=${vo.pid }"> -->
								<button type="button" class="btn_style">선택주문</button>
				 				<!-- </a> -->
				 				<a href="http://localhost:9000/project/shopMain3_1.do?pkind1=coffee">
								<button type="button" class="btn_style">쇼핑계속</button>
				 				</a>
				 			</td>
				 		</tr>
				 		</table>
				 		<%--} --%>
						</div>
					</td>	            		
	            </tr>
	            </table>
				</form>
			</div>
			</div>
		</section>
	</div>
		<!-- footer -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>