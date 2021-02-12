<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/project/css/wook.css">
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
  <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
var buy_list = new Array(); 
buy_list.push('${vo.hidden_buylist}');
var jsonObj = JSON.parse(buy_list);
function uuidv4() {
	  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
	    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
	    return v.toString(16);
	  });
	}
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
	

			
		   <c:if test="${vo.hidden_buylist ne null }">
			//천단위 콤마 펑션
			function addComma(value){
			     value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			  return value; 
			}
		/* 	var buy_list = new Array(); 
			  buy_list.push('${vo.hidden_buylist}');
			  var jsonObj = JSON.parse(buy_list); */
			  var output="";
				$("#bid").val(uuidv4());
				$("#total_count").val(jsonObj[0].total_count);
				$("#pmsphoto").val(jsonObj[0].pmsphoto);
			    $("#ptitle").val(jsonObj[0].ptitle);
			    $("#tot_price").val(jsonObj[0].tot_price);
			    $("#total_count").val(jsonObj[0].total_count);
			 
			   
				   for(var i=jsonObj.length-1;i>=0;i--){
					   var uuid = uuidv4();
					   	output += '<tr id="productList_tr">';/* "chk_'+i+'" */
					    output += '<td><input type="checkbox" id="'+i+'"></td>';
						output += '<td><img src="http://localhost:9000/project/upload/'+jsonObj[i].pmsphoto+'" style="width:70px;height:70px;"></td>';
						output += '<td><span style="font-size:15px">'+jsonObj[i].ptitle+'</span><br><span style="color:orange">'+jsonObj[i].compose+'</span></td>';
						output += '<td>'+jsonObj[i].compose_price+'원</td>';
						output += '<td>'+jsonObj[i].count+'개</td>';
						output += '<td>기본배송</td>';
						output += '<td id="tot_td">'+jsonObj[i].tot_price+'원</td>'; 
						output += '</tr>';
						  
						 
						 
								// '<tr id="opt_product'+uuid+'">';
						   //'<tr id="opt_product'+uuid+'">' 
					   $("#buylistMain_Table_first_tr").after(output);
						output="";
						//<td colspan="7" id="buylistMain_Table_price_tr">상품구매금액 5,300 + 배송비 2,500 - 상품할인금액 530 = 합계 : 7,270원</td>
					  // alert(JSON.stringify(jsonObj[i].ptitle));
					   /* var jsonData =JSON.stringify(jsonObj[i]);
					   alert(jsonData);  */
				   }
				   if(jsonObj[0].total_price>=30000){
					   $("#buylistMain_Table_price_tr").append("상품구매금액("+ addComma(String(jsonObj[0].total_price)) + "원) + 배송비(0원) = 총 합계("+addComma(String(jsonObj[0].total_price))+"원)");
					   $("#buylistMain_Table_price_tr").append("<br><br><div style='font-size:10px;color:orange;'>30,000원 이상 구매시 무료배송</div>");
					   $("#composeAll_price").text(addComma(String(jsonObj[0].total_price))); 
					   $("#realPrice").val(jsonObj[0].total_price);
				   }else{
					   $("#buylistMain_Table_price_tr").append("상품구매금액("+ addComma(String(jsonObj[0].total_price)) + "원) + 배송비(2,500원) = 총 합계("+addComma(String(jsonObj[0].total_price+2500))+"원)");
					   $("#buylistMain_Table_price_tr").append("<br><br><div style='font-size:10px;color:orange;'>30,000원 이상 구매시 무료배송</div>");
					   $("#composeAll_price").text(addComma(String(jsonObj[0].total_price+2500))); 
					   $("#realPrice").val(jsonObj[0].total_price+2500);
				   }
		   	</c:if>
		   		
			
		   	
		   	
			var h1_arr = ['010','011','016','017','018','019'];
		
		   	<c:if test="${mvo.hp ne null}">
		   		var h1 = "${mvo.hp}".slice(0,3);
		   		var h2 = "${mvo.hp}".slice(4,8);
		   		var h3 = "${mvo.hp}".slice(9,13);
		   		for (var i = 0; i <h1_arr.length; i++) {
					
					if(h1_arr[i]== h1){
						$("#hp1").val(h1).prop("selected", true);
						
					}
					
				}
		   		$("#hp2").val(h2);
		   		$("#hp3").val(h3);
		   		
		   	</c:if>
		   	<c:if test="${mvo.email ne null}">
		   	var split_stand = "${mvo.email}".indexOf("@");
		   	var email1 = "${mvo.email}".slice(0,split_stand);
		   	var email2 = "${mvo.email}".slice(split_stand+1,"${mvo.email}".length);
		    $("#email1").val(email1);
		    $("#email2").val(email2);
		   	/* 	var email1 = "${mvo.hp}".slice(0,3);
		   		var email2 = "${mvo.hp}".slice(4,8);
		   		for (var i = 0; i <h1_arr.length; i++) {
					
					if(h1_arr[i]== h1){
						$("#hp1").val(h1).prop("selected", true);
						
					}
					
				}
		   		$("#hp2").val(h2);
		   		$("#hp3").val(h3);
		   		 */
		   	</c:if>
		   	
		   	
		  /*  var jsonData =JSON.stringify(jsonObj[i]);
		   
		   alert(jsonData); */
		  // alert(JSON.stringify(jsonObj[0]));
		      //체크박스 전체선택
		      $("#all").change(function(){
		    	  var all_chk = $("#all").is(":checked");
		    	  if(all_chk){
		    		  $("input[type=checkbox]").prop("checked",true);
		    	  }else{
		    		  $("input[type=checkbox]").prop("checked",false);
		    	  }
		      });
		      //선택삭제 버튼
		      $("#btnDelete").click(function(){
		    	 var choice = confirm("정말로 삭제하시겠습니까?");
		    	 if(choice){
					//삭제리스트 - nid

							var chk_list = new Array();
							$("input[type=checkbox]:checked").each(function(i){ // 체크된것만 가져와서 for문 돌리는
								if($(this).attr("id") != "all"){
								
										//alert(jsonObj.length);
										//체크박스중에 체크된 리스트만 가져와서 삭제 리스트에 추가
										//alert(i);
										//alert($(this).parent().parent().children().eq(6).text()); //table에 있는 가격 가져옴
										var table_price = parseInt($(this).parent().parent().children().eq(6).text().slice(0,-1));
										//alert(typeof(table_price));
										/* alert("${user_id}"); */
										var table_row =$(this).parent().parent().index()-1// 테이블의 행번호
										//alert(table_row);
										//alert(JSON.stringify(jsonObj[0]));
										$(this).parent().parent().remove();
										/* var is = i;
										alert(typeof(is));
										jsonObj.splice(0,is+1);   체크를 한 인덱스 번호를 가져와서 해당 데이터 지울 수 있게 */
										//alert(JSON.stringify(jsonObj));
										var input_index= parseInt($(this).attr('id'));
						
										$("#buylistMain_Table_price_tr").text("");
										if(jsonObj[0].total_price-table_price >= 30000){
											$("#buylistMain_Table_price_tr").append("상품구매금액("+ addComma(String(jsonObj[0].total_price-table_price)) + "원) + 배송비(0원) = 총 합계("+addComma(String(jsonObj[0].total_price-table_price))+"원)");
											$("#buylistMain_Table_price_tr").append("<br><br><div style='font-size:10px;color:orange;'>30,000원 이상 구매시 무료배송</div>");
 											$("#composeAll_price").text(addComma(String(jsonObj[0].total_price-table_price))); 
											for(var i = 0 ;i<jsonObj.length;i++){
												jsonObj[i].total_price= jsonObj[i].total_price-table_price;
												jsonObj[i].total_count=jsonObj[i].total_count-jsonObj[table_row].count;
												
											}
											$("#realPrice").val(jsonObj[0].total_price);
											  $("#total_count").val(jsonObj[0].total_count);
											jsonObj.splice(table_row,1);
											  if(jsonObj.length<=0){
												  alert("상품이 존재하지 않아 상품페이지로 이동합니다.")
												  history.back();
										    	  
										      }
											
											//alert(JSON.stringify(jsonObj));	
										}else{
											$("#buylistMain_Table_price_tr").append("상품구매금액("+ addComma(String(jsonObj[0].total_price-table_price)) + "원) + 배송비(2500원) = 총 합계("+addComma(String(jsonObj[0].total_price+2500-table_price))+"원)");
											$("#buylistMain_Table_price_tr").append("<br><br><div style='font-size:10px;color:orange;'>30,000원 이상 구매시 무료배송</div>");
											$("#composeAll_price").text(addComma(String(jsonObj[0].total_price-table_price+2500))); 
											for(var i = 0 ;i<jsonObj.length;i++){
												jsonObj[i].total_price= jsonObj[i].total_price-table_price;
												jsonObj[i].total_count=jsonObj[i].total_count-jsonObj[table_row].count;
											}
											$("#realPrice").val(jsonObj[0].total_price+2500);
											  $("#total_count").val(jsonObj[0].total_count);
											jsonObj.splice(table_row,1);
											  if(jsonObj.length<=0){
												  alert("상품이 존재하지 않아 상품페이지로 이동합니다.")
												  history.back();
										    	  
										      }
											
											
										}
								
								}
							});
						
					
		    	 }else{
		    		 
		    	 }
		      });
		      

		     
	});
	/*****************************결제***************************************************/
		var IMP = window.IMP; // 생략가능
		IMP.init('imp53795418'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	  function requestPay() {
			
	      // IMP.request_pay(param, callback) 호출
	      IMP.request_pay({ // param
	          pg: "html5_inicis",
	          pay_method: "card",
	          merchant_uid: uuidv4(), // 이게 매번 달라져야지 결제 된다
	          name: jsonObj[0].ptitle,
	          amount: 100,
	          buyer_email: "${mvo.email}",
	          buyer_name: "${mvo.name}",
	          buyer_tel: "${mvo.hp}",
	          buyer_addr: "서울특별시 강남구 신사동",
	          buyer_postcode: "01182"
	      }, function (rsp) { // callback
	          if (rsp.success) {
	            // location.href="product_buy_success.do";
	             $("#buylist_compose").val(JSON.stringify(jsonObj));
	            $("#buylistMainForm").submit();
	              // 결제 성공 시 로직,
	              /*
				// jQuery로 HTTP 요청
			      jQuery.ajax({
			          url: "product_buy_import.do", // 가맹점 서버
			          method: "POST",
			          headers: { "Content-Type": "application/json" },
			          data: {
			              imp_uid: rsp.imp_uid,
			              merchant_uid: rsp.merchant_uid
			          }
			      }).done(function (data) {
			        // 가맹점 서버 결제 API 성공시 로직
			      })
			      */
	          } else {
	              // 결제 실패 시 로직,
	        	  alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
	          }
	      });
	    }
</script>


</head>
<body>
 <!-- header -->
	<jsp:include page="../header.jsp" /> 
	
	
	<div class="content" style="height:auto;margin-bottom:200px;">
	<form name="buylistMainForm" id="buylistMainForm" action="product_buy_success.do" method="post" class="buylistMainForm" >
		<div class="buylistMain">
			<input type="hidden" value="" name="buylist_compose" id="buylist_compose">
			<input type="hidden" value="${id}" name="id" id="buylist_compose">
			<input type="hidden" value="" name="realPrice" id="realPrice">
			<input type="hidden" value="" name="bid" id="bid">
			<input type="hidden" value="" name="ptitle" id="ptitle">
			<input type="hidden" value="" name="tot_price" id="tot_price">
			<input type="hidden" value="" name="pmsphoto" id="pmsphoto">
			<input type="hidden" value="" name="total_count" id="total_count">
			<div class="order_h2"><h2>주문서 작성</h2></div>
			<div class="order_h3"><h3>주문내역</h3></div>
			<div class="buylistMain_div"> 
				
					
					<table class="buylistMain_Table">
						<tr id="buylistMain_Table_first_tr">
							<td><input type="checkbox"id="all"></td>
							<td>이미지</td>
							<td>상품정보</td>
							<td>판매가</td>
							<td>수량</td>
							<td>배송구분</td>
							<td>합계</td>
						</tr>
						<!-- <tr id="productList_tr">
							<td><input type="checkbox"></td>
							<td><img src="http://localhost:9000/project/images/error.png" style="width:70px;height:70px;"></td>
							<td>에티오피아 예가체프 코케 G2</td>
							<td>3500원</td>
							<td>2개</td>
							<td>기본배송</td>
							<td>7000원</td>
							
						</tr> -->
						<tr class="buylistMain_Table_price">
							<td colspan="7" id="buylistMain_Table_price_tr"> </td>
							
						</tr>
						<tr class="buylistMain_Table_del">
							<td colspan="7"><button type="button" class="listDel_btn" id="btnDelete">삭제하기</button></td>
							
						</tr>
						
					</table>
					<div class="order_h3" style="text-align:left;"><h3>배송정보</h3></div>
					
					<table class="orderInfo_Table">
						<tr> 
								<td>성명</td>
								<td> 
								    <c:choose>
								        <c:when test="${mvo.name ne null}">
								            <input type="text"  name="buyerName"value="${mvo.name }"> 
								        </c:when>         
								        <c:otherwise>
								           <input type="text"  name="buyerName"value=""> 
								         </c:otherwise>
							    	</c:choose>
								</td>
						</tr>
						<tr> 
						
							<td>휴대전화</td>
							<td>
								<select name="hp1"  class="hp" id="hp1">
									<option value="선택">선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
								- &nbsp<input type="text" name="hp2" class="cp_number" id="hp2">
								- &nbsp<input type="text" name="hp3"class="cp_number" id="hp3">
							</td>
						
						</tr>
						<tr> 
							<td>이메일</td> 
							<td>
								<input type="text" name="email1" class="email1" id="email1" value=""> &nbsp@&nbsp
								<input type="text" name="email2"class="email2" id="email2" value="">
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
				
						<tr style="height:75px;"> 
							<td >주소</td>
						 	<td>
						 		<div style="color:#888888;margin:20px 0 2px 0;"><input type="text" name="address" class="address" >&nbsp기본주소</div>
								<div style="color:#888888;"><input type="text" name="addressMore"class="address_more" >&nbsp나머지주소(선택)</div>
						 	</td>
						</tr>
					</table>
					<div class="order_h3" style="text-align:center;background-color:rgb(34,58,93);color:white; font-size:25px;padding:30px 0;"><h3>결 제 정 보</h3></div>
					<table class="orderInfoPrice_Table" style="width:100%">
						<tr>

							<td colspan="3" style="width:50%; height:120px;border-bottom:1px solid #c9c9c9;border-right:1px solid #c9c9c9; border-left:1px solid #c9c9c9;">
								<div style="display:inline-block;width:49%;font-size:20px;text-align:center;margin:15px 0; ">총 결제금액</div>:
								<div id="composeAll_price" style="display:inline-block;width:49%;font-size:20px;text-align:center;margin:15px 0;/* border:1px solid blue; */"></div>
							</td> 
							<td style="width:50%;height:120px; border-bottom:1px solid #c9c9c9;border-right:1px solid #c9c9c9;">
								<div style="text-align:center; border-bottom:1px solid #c9c9c9;">
									<div style="font-size:15px; color:rgb(34,58,93);font-weight:bold; font-size:20px;padding:10px 0; border-bottom:1px solid #c9c9c9;background-color:rgb(235,214,192);">결제수단</div>
									<div style="height:20px; padding:10px 0;"><input type="radio" value="카드결제" >&nbsp&nbsp카드결제</div>
								</div> 
								<div style="text-align:center;">
									<button onclick="requestPay()" type="button" style="background-color:rgb(34,58,93);font-size:12px; color:white; margin:10px 0; padding:10px 90px; border:1px solid #c9c9c9; border-radius:5px;:">구매하기</button>
								</div>
							</td>
						</tr>
	
					
					</table>
					
					
					
				
		 	</div> <!--buylistMain_div--->
		</div>  <!--buylistMain--->
	</form>
	

	
	
	
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<!-- footer -->
	 <jsp:include page="../footer.jsp" /> 
</body>
</html>