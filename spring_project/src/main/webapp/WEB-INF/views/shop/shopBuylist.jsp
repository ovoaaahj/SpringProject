<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/project/css/wook.css">
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		   $('#select').change(function() {
	            if ($('#select').val() == 'directly') {
	                $('#email2').attr("disabled", false);
	                $('#email2').val("");
	                $('#email2').focus();
	            } else {
	                $('#email2').val($('#select').val());
	            }
	        });
	});

</script>


</head>
<body>
 <!-- header -->
	<jsp:include page="../header.jsp" /> 
	
	
	<div class="content" style="height:1300px;">
		<div class="buylistMain">
			<div class="order_h2"><h2>주문서 작성</h2></div>
			<div class="order_h3"><h3>주문내역</h3></div>
			<div class="buylistMain_div"> 
				<form name="buylistMainForm" action="" method="post" class="buylistMainForm" enctype="multipart/form-data">
					
					<table class="buylistMain_Table">
						<tr>
							<td><input type="checkbox"></td>
							<td>이미지</td>
							<td>상품정보</td>
							<td>판매가</td>
							<td>수량</td>
							<td>배송구분</td>
							<td>합계</td>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td><img src="http://localhost:9000/project/images/error.png" style="width:70px;height:70px;"></td>
							<td>에티오피아 예가체프 코케 G2</td>
							<td>3500원</td>
							<td>2개</td>
							<td>기본배송</td>
							<td>7000원</td>
							
						</tr>
						<tr class="buylistMain_Table_price">
							<td colspan="7">상품구매금액 5,300 + 배송비 2,500 - 상품할인금액 530 = 합계 : 7,270원</td>
							
						</tr>
						<tr class="buylistMain_Table_del">
							<td colspan="7"><button type="button" class="listDel_btn">삭제하기</div></td>
						</tr>
						
					</table>
					<div class="order_h3" style="text-align:left;"><h3>배송정보</h3></div>
					
					<table class="orderInfo_Table">
						<tr> 
								<td>성명 </td>
								<td> <input type="text"> </td>
						</tr>
						<tr> 
						
							<td>휴대전화</td>
							<td>
								<select name="cp1"  class="hp" id="cp1">
									<option value="선택">선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								- &nbsp<input type="text" name="cp2" class="cp_number" id="cp2">
								- &nbsp<input type="text" name="cp3"class="cp_number" id="cp3">
							</td>
						
						</tr>
						<tr> 
							<td>이메일</td> 
							<td>
								<input type="text" name="email1" class="email1" id="email1"> &nbsp@&nbsp
								<input type="text" name="email2"class="email2" id="email2">
								 <select id="select">
						            <option value="" disabled selected>E-Mail 선택</option>
						            <option value="naver.com" id="naver.com">naver.com</option>
						            <option value="hanmail.net" id="hanmail.net">hanmail.net</option>
						            <option value="gmail.com" id="gmail.com">gmail.com</option>
						            <option value="nate.com" id="nate.com">nate.com</option>
						            <option value="directly" id="textEmail">직접 입력하기</option>
						        </select>
								
							</td>
						</tr>
						<tr> 
							<td>배송지선택</td> 
							<td >
								<input type="checkbox">&nbsp기존배송지&nbsp
								<input type="checkbox">&nbsp새로운배송지
							</td>
						</tr>
						<tr style="height:75px;"> 
							<td >주소</td>
						 	<td>
						 		<div style="color:#888888;margin:20px 0 2px 0;"><input type="text" class="address">&nbsp기본주소</div>
								<div style="color:#888888;"><input type="text" class="address_more">&nbsp나머지주소(선택)</div>
						 	</td>
						</tr>
					</table>
					<div class="order_h3" style="text-align:center;background-color:rgb(34,58,93);color:white; font-size:25px;padding:30px 0;"><h3>결 제 정 보</h3></div>
					<table class="orderInfoPrice_Table" style="width:100%">
						<tr>

							<td colspan="3" style="width:50%; height:120px;border-bottom:1px solid #c9c9c9;border-right:1px solid #c9c9c9; border-left:1px solid #c9c9c9;">
								<div style="display:inline-block;width:49%;font-size:20px;text-align:center;margin:15px 0; ">총 결제금액</div>:
								<div style="display:inline-block;width:49%;font-size:20px;text-align:center;margin:15px 0;/* border:1px solid blue; */">50000</div>
							</td> 
							<td style="width:50%;height:120px; border-bottom:1px solid #c9c9c9;border-right:1px solid #c9c9c9;">
								<div style="text-align:center; border-bottom:1px solid #c9c9c9;">
									<div style="font-size:15px; color:rgb(34,58,93);font-weight:bold; font-size:20px;padding:10px 0; border-bottom:1px solid #c9c9c9;background-color:rgb(235,214,192);">결제수단</div>
									<div style="height:20px; padding:10px 0;"><input type="radio" value="카드결제" >&nbsp&nbsp카드결제</div>
								</div> 
								<div style="text-align:center;">
									<button type="button" style="background-color:rgb(34,58,93);font-size:12px; color:white; margin:10px 0; padding:10px 90px; border:1px solid #c9c9c9; border-radius:5px;:">구매하기</button>
								</div>
							</td>
						</tr>
	
					
					</table>
					
					
					
				</form>
		 	</div> <!--buylistMain_div--->
		</div>  <!--buylistMain--->
	
	

	
	
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- footer -->
	 <jsp:include page="../footer.jsp" /> 
</body>
</html>