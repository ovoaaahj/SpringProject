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

  <script>
	  var buy_list = new Array(); 
	  buy_list.push('${vo.buylist_compose}');
	  var jsonObj = JSON.parse(buy_list);
	  
		function addComma(value){
		     value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		  return value; 
		}
	$(document).ready(function(){
		
		  var output="";
		  
		   
		   for(var i=jsonObj.length-1;i>=0;i--){
			   
			   	output += '<tr id="productList_tr">';/* "chk_'+i+'" */
				output += '<td><img src="http://localhost:9000/project/upload/'+jsonObj[i].pmsphoto+'" style="margin-top:5px;width:60px;height:60px;"></td>';
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
		   if(jsonObj[0].total_price >=30000){
			   $("#real_buylistMain_Table_price_td").append("상품구매금액("+ addComma(String(jsonObj[0].total_price)) + "원) + 배송비(0원) = 총 합계("+addComma("${vo.realPrice}")+"원)");
			   
		   }else{
			   $("#real_buylistMain_Table_price_td").append("상품구매금액("+ addComma(String(jsonObj[0].total_price)) + "원) + 배송비(2,500원) = 총 합계("+addComma("${vo.realPrice}")+"원)");
			   
		   }
	
	
	
	});
	
  
  
  
  
  
  </script>
  
</head>
<body>
 <!-- header -->
	<jsp:include page="../header.jsp" /> 
<div class="content" style="height:auto;margin-bottom:200px; ">
		<div class="order_h2"><h2>주문</h2></div>
		<div style="margin:0 auto ;  width:1400px;" >
			<div class="Main_div" >
				<table class="real_buylistMain_Table">
								<tr id="buylistMain_Table_first_tr">
									<td>이미지</td>
									<td>상품정보</td>
									<td>판매가</td>
									<td>수량</td>
									<td>배송구분</td>
									<td>합계</td>
								</tr>
								<tr class="real_buylistMain_Table_price">
									<td colspan="6" id="real_buylistMain_Table_price_td"></td>
									
								</tr>
							
				</table>				
			</div>
		</div>
		<div class="order_h2"><h2>구매자 정보</h2></div>
		<div class="buyer_info_div" style="margin:30px auto;width:1400px;">
								<table class="orderInfo_Table">
						<tr> 
								<td>성명</td>
								<td> 
								    <c:choose>
								        <c:when test="${vo.buyerName ne null}">
								        	<div style="font-size:15px; font-weight:bold;">${vo.buyerName}</div>
								        </c:when>         
								        <c:otherwise>
								        	<div style="font-size:15px; font-weight:bold;"></div>
								         </c:otherwise>
							    	</c:choose>
								</td>
						</tr>
						<tr> 
						
							<td>휴대전화</td>
							<td>
								    <c:choose>
								        <c:when test="${vo.hp ne null}">
								        	<div style="font-size:15px; font-weight:bold;">${vo.hp}</div>
								        </c:when>         
								        <c:otherwise>
								        	<div style="font-size:15px; font-weight:bold;"></div>
								         </c:otherwise>
							    	</c:choose>
							</td>
						
						</tr>
						<tr> 
							<td>이메일</td> 
							<td>
								        <c:choose>
								        <c:when test="${vo.email ne null}">
								        	<div style="font-size:15px; font-weight:bold;">${vo.email}</div>
								        </c:when>         
								        <c:otherwise>
								        	<div style="font-size:15px; font-weight:bold;"></div>
								         </c:otherwise>
							    		</c:choose>
								
							</td>
						</tr>
				
						<tr style="height:75px;"> 
							<td >주소</td>
						 	<td>
						 		  <c:choose>
								        <c:when test="${vo.address ne null}">
								        	<div style="color:#888888;margin:20px 0 2px 0;"><input type="text" name="address" class="address" value="${vo.address}" disabled style="background-color:white;font-size:15px; font-weight:bold;">&nbsp기본주소</div>
								        </c:when>         
								        <c:otherwise>
								        	<div style="color:#888888;"><input type="text" name="addressMore"class="address_more" value=""disabled style="background-color:white;font-size:15px; font-weight:bold;">&nbsp나머지주소(선택)</div>
								         </c:otherwise>
							    	</c:choose>
							    	
							    	  <c:choose>
								        <c:when test="${vo.addressMore ne null}">
								        	<div style="color:#888888;"><input type="text" name="addressMore"class="address_more" value="${vo.addressMore}"disabled style="background-color:white;font-size:15px; font-weight:bold;">&nbsp나머지주소(선택)</div>
								        </c:when>         
								        <c:otherwise>
								        	<div style="color:#888888;"><input type="text" name="addressMore"class="address_more" value="" disabled style="background-color:white;font-size:15px; font-weight:bold;">&nbsp나머지주소(선택)</div>
								         </c:otherwise>
							    	</c:choose>
						 		
								
						 	</td>
						</tr>
					</table>
		</div>
	
	
</div>
</body>
 <!-- header -->
	<jsp:include page="../footer.jsp" /> 
</html>