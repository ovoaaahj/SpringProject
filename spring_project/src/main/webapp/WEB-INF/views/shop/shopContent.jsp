<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/project/css/wook.css">
<link rel="stylesheet" href="http://localhost:9000/project/css/am-pagination.css">
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<!-- <script src="http://localhost:9000/project/js/wook.js"></script> -->
<script>
	$(document).ready(function(){
		
		function taste_star(taste_val){
			var taste_grim=""
			if(taste_val=="1"){
				taste_grim ="■□□□□"
			}else if(taste_val=="2"){
				taste_grim ="■■□□□"
			}else if(taste_val=="3"){
				taste_grim ="■■■□□"
			}else if(taste_val=="4"){
				taste_grim ="■■■■□"
			}else if(taste_val=="5"){
				taste_grim ="■■■■■"
			}
			return taste_grim;
		}
	
			<c:if test="${cvo.aroma ne null}">
				$("#cupping_aroma").text(taste_star("${cvo.aroma}"));
			</c:if>
			<c:if test="${cvo.bitter ne null}">
				$("#cupping_bitter").text(taste_star("${cvo.bitter}"));
			</c:if>
			<c:if test="${cvo.acid ne null}">
				$("#cupping_acidity").text(taste_star("${cvo.acid}"));
			</c:if>
			<c:if test="${cvo.sweet ne null}">
				$("#cupping_sweetness").text(taste_star("${cvo.sweet}"));
			</c:if>
			<c:if test="${cvo.body ne null}">
				$("#cupping_body").text(taste_star("${cvo.body}"));
			</c:if>
			
			
			<c:if test="${cvo.roastingSel eq 'medium'}">
			$("#roasting_photo").attr("src","http://localhost:9000/project/images/ps_medium.png");
			</c:if>
			<c:if test="${cvo.roastingSel eq 'high'}">
			$("#roasting_photo").attr("src","http://localhost:9000/project/images/ps_high.png");
			</c:if>
			<c:if test="${cvo.roastingSel eq 'city'}">
			$("#roasting_photo").attr("src","http://localhost:9000/project/images/ps_city.png");
			</c:if>
			<c:if test="${cvo.roastingSel eq 'fullcity'}">
			$("#roasting_photo").attr("src","http://localhost:9000/project/images/ps_fullcity.png");
			</c:if>
			 
			
			
			
		
		//천단위 콤마 펑션
		function addComma(value){
		     value = value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		  return value; 
		}
		
		var total_count=parseInt("0");
		var total_price=parseInt("0");
		//난수생성
		function uuidv4() {
			  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
			    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
			    return v.toString(16);
			  });
			}
		
		var compose_arr = [];
		 var buy_list = new Array(); 
		 //고른제품 추가되는 기능
		function explan_table(compose,compose_price){
			var output="";
			var uuid = uuidv4();
			output += '<tr id="opt_product'+uuid+'">';
				output += 	'<td>';
					output +=   '<p id="ptitle_kor">';
						output +=   '<span id="bname">'+"${vo.ptitle}"+ '</span>';
						output +=   '<br>';
						output +=   '-';
						output +=   '<span id="bcompose">'+compose+'</span>';
					output +=   '</p>';
				output +=   '</td>';
				output +=   '<td>';
					output +=   '<span>';
						output +=   '<input type="text" id="bcount_input" value="1" disabled style="background-color:white";>';
						output +=   '<button type="button" class="plus_btn" id="plus_btn">+</button>';
						output +=   '<button type="button" class="minus_btn" id="minus_btn">-</button>';
					output += '</span>';	
						output += '<img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" id="option_box1_del" class="option_box_del">';	
				output += '</td>';	
				output += '<td>';	
					output += '<span><span id="bprice">'+addComma(String(compose_price))+'</span>원</span>';	
				output += '</td>';	
			output += '</tr> }';	

			 compose_arr.push(compose);
			 var set = new Set(compose_arr);
		    // duplicate
		    if(compose_arr.length !== set.size) {
		    	 /*  document.writeln(compose_arr.length); // 4
			    document.writeln(set.size); // 3 */
		      alert("중복발생");
			    var s = compose_arr.pop();
			   /*  alert("배열 >"+compose_arr ); */
			    total_price -= compose_price;
				$("#sumprice").text(addComma(String(total_price)));
				total_count -= 1;
		  		$("#bcount_span").text("("+String(total_count)+")개");
		    }else{
		    	if(compose_arr.length==0){}
		    	$(".ExplanationTable_3").append(output);
		    	 /* alert("배열 >"+compose_arr ); */
		    }
	
			var cnt_price =parseInt("0");
			var tot_price=cnt_price+compose_price;
		  	var count = parseInt($("#opt_product"+uuid+" #bcount_input").val());
		  	
		  	$("#opt_product"+uuid+" #plus_btn").click(function(){
		  		count +=1;
		  		$("#opt_product"+uuid+" #bcount_input").val(count);
		  		tot_price +=compose_price
		  		$("#opt_product"+uuid+" #bprice").text(addComma(String(tot_price)));
		  		total_price += compose_price;
				//$("#sumprice").text(String(total_price));
				$("#sumprice").text(addComma(String(total_price)));
				total_count += 1;
				$("#bcount_span").text("("+String(total_count)+")개");
		  	});
		  	$("#opt_product"+uuid+" #minus_btn").click(function(){
		  		if(count>1){
			  		count +=-1;
			  		$("#opt_product"+uuid+" #bcount_input").val(count);
			  		tot_price -=compose_price
			  		$("#opt_product"+uuid+" #bprice").text(addComma(String(tot_price)));
			  		total_price -= compose_price;
			  		$("#sumprice").text(addComma(String(total_price)));
			  		total_count -= 1;
			  		$("#bcount_span").text("("+String(total_count)+")개");
		  		}else{
		  			alert("최대 1개이상 주문가능");
		  		}
		  	});

		    $("#opt_product"+uuid+" #option_box1_del").click(function(){
		    	
		    	var find_compose = compose_arr.indexOf(compose)
		    	 compose_arr.splice(find_compose,1);

		  		var input_count = parseInt($("#opt_product"+uuid+" #bcount_input").val());
		    	total_count -= input_count;
		  		$("#bcount_span").text("("+String(total_count)+")개");
		  		total_price -= (compose_price * input_count);
		  		$("#sumprice").text(addComma(String(total_price)));
		  		$("#opt_product"+uuid).remove();
		  		
		  		if(compose_arr.length <= 0){
		  			
		  			$(".productExplanation_3").css("display","none");
		  		}
		  		
		    });
		    
		  	$("#product_buy").click(function(){
			    buy_list.push({ptitle:'${vo.ptitle}', compose:compose,tot_price:tot_price,pmsphoto:'${vo.pmsphoto}',count:$("#opt_product"+uuid+" #bcount_input").val(),compose_price:compose_price,total_price:total_price,total_count:total_count});
			    var jsonData = JSON.stringify(buy_list);
	/* 		    var jsonData = JSON.stringify(buy_list[0].ptitle); */
			    
			    
			   // alert(jsonData.replaceAll("\"", ""));
				$("#hidden_buylist").val(jsonData);
				//alert(typeof(jsonData));
/* 				$("#hidden_buylist").val(jsonData.replaceAll("\"", "")); */
				//$("#hidden_buylist").val(jsonData);
				$("#shopbuyForm").submit();
		  	})
		    
		    

/* 		    alert(jsonData); */

		} //function explan_table()
		
		
		// 그램 선택화면 select 부분 바뀌는곳
       function gramClick(input){
    	   
    	   	/* alert(input); */ 
    	   	$("#product_100g ,#product_200g, #product_500g, #product_1kg").parent().css("border", "1px solid #888888"); 
	  		$("#"+input+"").parent().css("border", "2px solid #888888"); 
	  		if(input == "product_100g"){
	  			$("#product_crush").html('<option value="" selected disabled hidden>-[필수]옵션을 선택해 주세요-</option><option value="" disabled>---------------</option><option value="분쇄안함/원두">분쇄안함/원두</option><option value="굵게분쇄/핸드드립">굵게분쇄/핸드드립</option><option value="중간분쇄/더치커피">중간분쇄/더치커피</option><option value="곱게분쇄/모카포트">곱게분쇄/모카포트</option><option value="아주곱게분쇄/에스프레소">아주곱게분쇄/에스프레소</option>');
	  			$("#hidden_input").attr("value","100");
	  		}else if(input=="product_200g"){
	  			$("#product_crush").html('<option value="" selected disabled hidden>-[필수]옵션을 선택해 주세요-</option><option value="" disabled>---------------</option><option value="분쇄안함/원두(+4000)">분쇄안함/원두(+4000)</option><option value="굵게분쇄/핸드드립(+4000)">굵게분쇄/핸드드립(+4000)</option><option value="중간분쇄/더치커피(+4000)">중간분쇄/더치커피(+4000)</option><option value="곱게분쇄/모카포트(+4000)">곱게분쇄/모카포트(+4000)</option><option value="아주곱게분쇄/에스프레소(+4000)">아주곱게분쇄/에스프레소(+4000)</option>');
	  			$("#hidden_input").attr("value","200");
	  		}else if(input=="product_500g"){
	  			$("#product_crush").html('<option value="" selected disabled hidden>-[필수]옵션을 선택해 주세요-</option><option value="" disabled>---------------</option><option value="분쇄안함/원두(+7000)">분쇄안함/원두(+7000)</option><option value="굵게분쇄/핸드드립(+7000)">굵게분쇄/핸드드립(+7000)</option><option value="중간분쇄/더치커피(+7000)">중간분쇄/더치커피(+7000)</option><option value="곱게분쇄/모카포트(+7000)">곱게분쇄/모카포트(+7000)</option><option value="아주곱게분쇄/에스프레소(+7000)">아주곱게분쇄/에스프레소(+7000)</option>');
	  			$("#hidden_input").attr("value","500");
	  		}else if(input=="product_1kg"){
	  			$("#product_crush").html('<option value="" selected disabled hidden>-[필수]옵션을 선택해 주세요-</option><option value="" disabled>---------------</option><option value="분쇄안함/원두(+9000)">분쇄안함/원두(+9000)</option><option value="굵게분쇄/핸드드립(+9000)">굵게분쇄/핸드드립(+9000)</option><option value="중간분쇄/더치커피(+9000)">중간분쇄/더치커피(+9000)</option><option value="곱게분쇄/모카포트(+9000)">곱게분쇄/모카포트(+9000)</option><option value="아주곱게분쇄/에스프레소(+9000)">아주곱게분쇄/에스프레소(+9000)</option>');
	  			$("#hidden_input").attr("value","1000");
	  		}
       }//function gramClick
    // 그램 선택화면 select 부분 클릭하면 
	  	$("#product_100g ,#product_200g, #product_500g, #product_1kg").click(function(){
	  		gramClick($(this).attr('id'));
	  		$("#product_crush option").prop('disabled',false);
	  		$("#product_crush option[value='']").prop('disabled',true);
	  	});
	  	
		
		$("#product_crush").change(function(){
			
			if($("#product_crush option").is(":selected")){
				$(".productExplanation_3").css("display","block");	
				if($("#hidden_input").val()=="100"){
					
					var compose = $("#product_100g").text()+"/"+ $(this).children('option:selected').text();
					var compose_price = parseInt("${vo.pprice100}");
				
					explan_table(compose,compose_price);
					total_price += compose_price;
					$("#sumprice").text(addComma(String(total_price)));
					total_count += 1;
					$("#bcount_span").text("("+String(total_count)+")개");
	
				}else if($("#hidden_input").val()=="200"){
					var compose = $("#product_200g").text()+"/"+ $(this).children('option:selected').text();
					var compose_price = parseInt("${vo.pprice200}");
					explan_table(compose,compose_price);
					total_price += compose_price;
					$("#sumprice").text(addComma(String(total_price)));
					total_count += 1;
					$("#bcount_span").text("("+String(total_count)+")개");
		
				}else if($("#hidden_input").val()=="500"){
					var compose = $("#product_100g").text()+"/"+ $(this).children('option:selected').text();
					var compose_price = parseInt("${vo.pprice500}");
					explan_table(compose,compose_price);
					total_price += compose_price;
					$("#sumprice").text(addComma(String(total_price)));
					total_count += 1;
					$("#bcount_span").text("("+String(total_count)+")개");
	
				}else if($("#hidden_input").val()=="1000"){
					var compose = $("#product_100g").text()+"/"+ $(this).children('option:selected').text();
					var compose_price = parseInt("${vo.pprice1000}");
					explan_table(compose,compose_price);
					total_price += compose_price;
					$("#sumprice").text(addComma(String(total_price)));
					total_count += 1;
					$("#bcount_span").text("("+String(total_count)+")개");
					
				}
				
 	  			
			} 
	  	});
	
	/* 	var jsonTest = {
		                 no : 1,
		                 productName : "컴퓨터",
		                 price : 200000,
		                 ls:[{"rnum":"10","rank":"15"},{"rnum":"1","rank":"5"}]

								
		               };

		$("#te_div").click(function(){
			$('#test').val(JSON.stringify(jsonTest.ls[1].rnum));
			alert($("#test").val());
		}); */
		
/* 		var json_buylist = {data:[{name:'라이언', value:13}, {name:'콘', value:10}, {name:'무지', value:5}, {name: '프로도', value:40}]};

		var boxoffice =buylist.buylistResult; // 코드 좀 줄이기위해서 쓴거임
		output += "<td>"+boxoffice.buylistResulteList[i].rank +"</td>";
	  	$("#product_buy").click(function(){
	  		$("#shopbuyForm").submit();
	  	});
 */
   });//ready
</script>


</head>
<body>

<div class="content" >
 <!-- header -->
	<jsp:include page="../header.jsp" /> 

<div class="color" style=" display:block;"></div>
	<aside class="side" >
		<div class="sidecontent">
		

			<ul class="all">
				<a href="http://localhost:9000/project/index.do"><img src="http://localhost:9000/project/images/logo.png"></a>
								<li class="allli">
					<h3 id="subCoffeeTitle">커피</h3>
						<ul class="subul" id="subulcoffee">
							<li class="subli" id="싱글오리진"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=싱글오리진">싱글오리진</a></li>
							<li class="subli" id="블렌드"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=블렌드">블렌드</a></li>
							<li class="subli" id="스페셜티"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=스페셜티">스페셜티</a></li>
							<li class="subli" id="선물세트"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=선물세트">커피팩/선물세트</a></li>				
							<li class="subli" id="더치커피"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=더치커피">더치커피</a></li>				
							<li class="subli" id="디카페인"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=디카페인">디카페인</a></li>	
						</ul>						
				</li>
				<li class="allli">
					<h3 id="subGoodsTitle">커피용품</h3>
						<ul class="subul" id="subulgoods">
							<li class="subli" id="핸드드립"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=핸드드립">핸드드립</a></li>
							<li class="subli" id="커피추출용품"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=커피추출용품">커피추출용품</a></li>
							<li class="subli" id="브루잉세트"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=브루잉세트">브루잉세트</a></li>
							<li class="subli" id="테이크아웃"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=테이크아웃">테이크아웃</a></li>				
							<li class="subli" id="굿즈"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=굿즈">Bean's Story 굿즈</a></li>				
						</ul>
					
				</li>
				<li class="allli"><h3>고객센터</h3></li>
				<li class="allli"><h3>이벤트</h3></li>
			</ul>		
		</div>
	</aside>
	<div class="shopMain"  >
		
		<!-- shopMainCenter 시작 -->
		<div class="shopMainCenter"  >
			<div class="centerExplanation_1"  >
				<ul >
					<li> 
						<img src="http://localhost:9000/project/resources/upload/${vo.pmphoto}" class="pmphoto" id ="pmphoto">
					</li>
				</ul>
			
			</div>
			<div class="centerExplanation_2" >
				<div style="padding:15%; text-align:left; line-height:24px;">

					<p>
						<span style="font-size: 9pt;">
							<span style="color: rgb(37, 37, 37);" class="kind2" id ="kind2">[ ${cvo.pkind} ]</span>
						</span>
					</p>
					<p>
						<b style="font-size: 9pt;">
							<span style="font-size: 20pt;">
								<span style="color: rgb(37, 37, 37);" class="ptitle_eng" id="ptitle_eng">${cvo.ptitleEng} &nbsp;<br></span>
							</span>
						</b>
						<span style="font-size: 9pt; color: rgb(154, 154, 154);">
							<span style="color: rgb(37, 37, 37);">
								<span style="color: rgb(154, 154, 154);" class="ptitle_kor" class="ptitle_kor">${vo.ptitle}</span>
							</span>
						</span>
					</p>
					<p>
						<span style="color: rgb(255, 0, 0);">
							<span style="color: rgb(154, 154, 154);">
								<span style="color: rgb(255, 0, 0);">
									<span style="color: rgb(154, 154, 154);">
										<br>
									</span>
								</span>
							</span>
						</span>
					</p>
					<p class="tasting_content_p1" id="tasting_content_p1">
						<font color="#464646">${cvo.productContent}
						</font>
					</p>
					<p class="tasting_content_p2" id="tasting_content_p2">
						<font color="#464646"></font>
					</p>
					<p class="tasting_content_p3" id="tasting_content_p3">
						<font color="#464646">
							<br>
						</font>
					</p>
					<p class="p1">
						<font color="#464646">
							<br>
						</font>
					</p>
					<div style="padding:5% 2%; border-top:1px solid #c9c9c9; border-bottom:1px solid #c9c9c9; ">
						<p>
							<b><span style="font-size: 10pt;" class="kind2" id ="kind2">·${cvo.pkind }</span>
							</b>
							<span style="font-family: palatino;">
								<em>
									<span style="font-size: 10pt;">
										<span style="color: rgb(125, 125, 125); font-style: italic;" class="kind2_eng" id ="kind2_eng">${cvo.noteTitle }</span>
									</span>
								</em>
							</span>
							<span style="color: rgb(125, 125, 125);"></span>
						</p>
						<span style="color: rgb(125, 125, 125);">
						</span>
						<p style="padding-left: 8px" class="kind2_content" id="kind2_content">
							<font color="#7d7d7d">${cvo.noteContent }</font>
						</p>
					</div>


					<span style="font-size: 14pt;">
						<span style="color: rgb(37, 37, 37); line-height:48px;"><br><br><b>CUPPING NOTE</b>
						</span>
					</span>
					<p class="p1">
						<span style="color: rgb(136, 136, 136); font-family: Montserrat, noto, sans-serif; font-size: 15px;">
							<b>
							<span class="cupping_hash" id="cupping_hash" style="color: rgb(110, 57, 26);">${vo.phash}</span>
							</b>
						</span>
					</p>
					<p class="p1">
						<br>
					</p>			


					<table width="200px" cellspacing="1" cellpadding="0" border="0" _moz_resizing="true" style="word-break: break-all; font-size:11px; color:#555; width:200px; float:left;">
						<tbody>
							<tr>
	  							<td width="40%" height="26" style="font-size:11px;" >AROMA</td>
	  							<td width="60%" style="font-size:14px"class="cupping_aroma" id="cupping_aroma"></td>
	 						</tr>
	 						<tr>
	    						<td height="26" style="font-size:11px;">BITTER</td>
	    						<td td=""><span style="font-size:14px" class="cupping_bitter" id="cupping_bitter"></span>    
	   				 			</td>
	   				 		</tr> 
	    				</tbody>
					</table>	
					<table width="200px" cellspacing="1" cellpadding="0" border="0" _moz_resizing="true" style="word-break: break-all; font-size:11px; color:#555; width:200px; float:left;">
						<tbody>
							<tr>
	  							<td width="40%" height="26" style="font-size:11px;" >ACIDITY</td>
	  							<td width="60%" style="font-size:14px" class="cupping_acidity" id="cupping_acidity"></td>
	  						</tr>
	  						<tr>
	    						<td height="26" style="font-size:11px;">SWEETNESS
	    						</td>
	    						<td td=""><span style="font-size:14px" class="cupping_sweetness" id="cupping_sweetness"></span>    
	    						</td>
	    					</tr>
	    				</tbody>
					</table>
		
					<table width="200px" cellspacing="1" cellpadding="0" border="0" _moz_resizing="true" style="word-break: break-all; font-size:11px; color:#555; width:200px; ">
						<tbody>
							<tr>
	  							<td width="40%" height="26" style="font-size:11px;">BODY</td>
	  							<td width="60%" style="font-size:14px" class="cupping_body" id="cupping_body"></td>
	  						</tr>
	    					<tr>
	      					<td height="26" style="font-size:11px;">&nbsp;</td>
	      					<td style="font-size:14px">&nbsp;</td>
	    					</tr>
	    				</tbody>
					</table>
					<span style="font-size: 14pt;">
						<span style="color: rgb(37, 37, 37); line-height:48px;"><br><br><b>ROASTING POINT <br></b></span>
					</span>
					<span style="color: rgb(125, 125, 125); font-size:13px; ">원두의 로스팅 강도를 뜻하는 로스팅 포인트로 원두의 맛과 향을 알 수 있습니다. <br>
					</span>
	
		
					<img style="width:100%;" src="" class="roasting_photo" id ="roasting_photo">	
	
					<br>
	
					<span style="font-size: 14pt;"><span style="color: rgb(37, 37, 37); line-height:48px;"><br><br><b>GRINDING <br></b></span>
					</span>
					<span style="color: rgb(125, 125, 125); font-size:13px; ">추출방식에 따른 다양한 분쇄도를 제공하고 있으나, 원두의 향을 잃지 않기 위해 원두상태로 받으시는 것을 추천드립니다.</span>
					<br>
					<img style="width:100%;" src="http://localhost:9000/project/images/grinding3.png"class="grinding_photo" id="grinding_photo">	



				</div>
				
			</div><!-- centerExplanation_2 끝-->
			<!-- centerReviewTOP 시작-->
			<div class="centerReviewTOP"  >
                        <div style="float:left;">Review (<span class="reviewCount" id="reviewCount">421</span>)
						</div>
                        <div style="float:right; text-align:right;" class="bt">
								<a href="#">Write</a>
								<a href="#" style="margin-left:15px">View all</a>
						</div>
                        <div ></div> 
            </div>
            <!-- centerReviewTOP 끝-->

            <!-- centerReviewTable시작 -->
			<div class="centerReviewTable">
		
				<table>
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>아이디</td>
						<td>
							<div class="ReviewTableDate">2020-12-29</div>
							<div class="ReviewTableImg"><img src="http://localhost:9000/project/images/coffee_sample.jpg"></div>
						</td>
						
					</tr>
					
					<tr>
						<td>2</td>
						<td>2</td>
						<td>2</td>
						<td>2</td>
					</tr>
					<tr>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
					</tr>
					<tr>
						<td colspan="4"><div id="ampaginationsm"></div></td>
					</tr>
				</table>
			</div>
			<!-- centerReviewTable끝 -->
			<!-- centerQaTOP 시작-->
			<div class="centerQaTOP" >
                        <div style="float:left;">Q&A (<span class="reviewCount" id="reviewCount">2</span>)
						</div>
                        <div style="float:right; text-align:right;" class="bt">
								<a href="#">Write</a>
								<a href="#" style="margin-left:15px">View all</a>
						</div>
                        <div></div> 
            </div>
            <!-- centerQaTOP 끝-->
                        <!-- centerReviewTable시작 -->
			<div class="centerQaTable">
		
				<table >
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>아이디</td>
						<td>
							<div class="QaTableDate">2020-12-29</div>
						</td>
						
					</tr>
					
					<tr>
						<td>2</td>
						<td>2</td>
						<td>2</td>
						<td>2</td>
					</tr>
					<tr>
						<td>3</td>
						<td>3</td>
						<td>3</td>
						<td>3</td>
					</tr>
					<tr>
						<td colspan="4"><div id="ampaginationsm"></div></td>
					</tr>
				</table>
			</div>
            
		</div>
		<!-- shopMainCenter 끝 -->
		<!-- shopMainRight 시작 -->
		 <div class="shopMainRight">
			<div class="icon">
				<!-- <img src="http://localhost:9000/project/images/custom_singleorigin.gif" id="kind2_photo"> -->
				<c:if test="${vo.psub1 ne null }">
				<img src="http://localhost:9000/project/resources/images/${vo.psub1}" id="kind2_photo">
				</c:if>
				<c:if test="${vo.psub2 ne null }">
				<img src="http://localhost:9000/project/resources/images/${vo.psub2}" id="kind2_photo">
				</c:if>
				<c:if test="${vo.psub3 ne null }">
				<img src="http://localhost:9000/project/resources/images/${vo.psub3}" id="kind2_photo">
				</c:if>
			</div>
			 <!-- 상품설명 시작 productExplanation -->
			<div class="productExplanation_1">
				<table class="ExplanationTable_1" >
					<tr>
						<td>
							<span style="font-size:20px;color:#000000;font-weight:bold;" id="ptitle_kor">${vo.ptitle}</span>
						</td>
					</tr>
					<tr>
						<td>
							<span style="font-size:13px;color:#888888;" id="cupping_hash">${vo.phash}</span>
						</td>
					</tr>
					<tr>
						<td>
							<strong id="product_price_text" style="font-size:25px; margin-bottom:10px;">${vo.pprice100}원</strong>
							<br><br>
							<!-- <input id="product_price" name="product_price" value="" type="hidden"> -->
						</td>
					</tr>
				</table>
			
			</div> 
			<!--  상품설명 끝 productExplanation -->
			<div class="productExplanation_2">
				<input type="hidden"  id ="hidden_input" value="">
				<table class = "ExplanationTable_2" >
					<tr>
						<th>중량 선택</th>
						<td>
							<ul style="margin-left:16px;">
								<li> <span id="product_100g" >100g</span></li>
								<li> <span id="product_200g">200g</span></li>
								<li> <span id="product_500g">500g</span></li>
								<li> <span id="product_1kg">1kg</span></li>
							</ul>
						</td>
					</tr>
					<tr>
						<th>분쇄도 선택</th>
						<td>
							<select id="product_crush">
								<option value="" selected disabled hidden>-[필수]옵션을 선택해 주세요-</option>
								<option value="" disabled>---------------</option>
								<option value="분쇄안함/원두" disabled >분쇄안함/원두</option>
								<option value="굵게분쇄/핸드드립" disabled >굵게분쇄/핸드드립</option>
								<option value="중간분쇄/더치커피" disabled >중간분쇄/더치커피</option>
								<option value="곱게분쇄/모카포트" disabled >곱게분쇄/모카포트</option>
								<option value="아주곱게분쇄/에스프레소" disabled >아주곱게분쇄/에스프레소</option>
							</select> 
						<!-- 		<select id="product_crush">
								<option value="" selected disabled hidden>-[필수]옵션을 선택해 주세요-</option>
								<option value="" disabled>---------------</option> -->
							<!-- </select> -->
						</td>
					</tr>
				
				</table>
			</div>
			<form name="shopbuyForm" id="shopbuyForm"action="shopBuylist.do" method="post" >
			<input type="hidden" id="hidden_buylist"  name ="hidden_buylist" value="">
				<div class="productExplanation_3">
					<table class="ExplanationTable_3" >
	
					</table>
				
				</div>
				<div class="productExplanation_4">
					합계 : <span class="sumprice" id="sumprice" ><strong>0</strong></span>	<span id="bcount_span">(0)개</span>
				
				</div>
				<div class="productExplanation_5">
				
						<div class="product_buy" id="product_buy">
							<span>바로구매</span>
						</div>
				
					<div class="product_cart" id="product_cart">
						<span>장바구니</span>
					</div>
					<div class="product_wish" id="product_wish" >
						<span>관심상품</span>
					</div>
					
				</div>
			</form>
		</div>
		
		<!-- shopMainRight 끝 -->
		
		
	</div><!-- shomain 끝 -->

</div><!-- content 끝 -->
	<!-- footer -->
	 <jsp:include page="../footer.jsp" /> 

</body>
</html>