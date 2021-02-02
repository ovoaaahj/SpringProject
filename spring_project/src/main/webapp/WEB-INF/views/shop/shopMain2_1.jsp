<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.spring.dao.*,java.util.*,com.spring.vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%

	String pkind1 = request.getParameter("pkind1");
	String pkind2 = request.getParameter("pkind2");
	int i=0;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bean's Story Shop</title>
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/project/js/am-pagination.js"></script>  
<link rel="stylesheet" type="text/css" href="http://localhost:9000/project/css/shopMain.css">
<link rel="stylesheet" href = "http://localhost:9000/project/css/am-pagination.css">
<script>
	$(document).ready(function(){
		
		//페이지 번호 및 링크 		
		var pager = jQuery("#ampaginationsm").pagination({
			maxSize : 5,	
		/* 	totals:10,
			page:1,
			pageSize:5, */
			totals:'${dbCount}',
			page : '${reqPage}',
			pageSize : '${pageSize}', 
					
			
			lastText : '&raquo;&raquo;',
			firstText : '&laquo;&laquo',
			prevTest : '&laquo;',
			nextTest : '&raquo;',
			
			btnSize : 'sm' 			
		}); 
		
		//
		jQuery("#ampaginationsm").on('am.pagination.change',function(e){
			$(location).attr('href','http://localhost:9000/project/shop_Main3_1.do?pkind1=<%= pkind1%>&&rpage='+e.page);  
			//location.href('이동페이지');
		});
		
		
		
		choose();
		
		function choose(){
		  var kind1 = "<%= pkind1 %>";
			
		 if(kind1 != "null"){
			 var item = "<%= pkind1 %>";
				if(item == "coffee"){
					$("#subulcoffee").show();
					$("#subulgoods").hide();
				}else if(item == "goods"){
					$("#subulcoffee").hide();
					$("#subulgoods").show();
				}
		}else{
			$("#subulcoffee").hide();
			$("#subulgoods").hide();
		}
		}//choose
		
	
		
		 $("#subCoffeeTitle").click(function(){
			if($("#subulcoffee").is(":visible")){
				$("#subulcoffee").hide();
			}else{
				$("#subulcoffee").show();
				$(location).attr('href','http://localhost:9000/project/shopMain3_1.do?pkind1=coffee');
			}
		}); // CoffeeClick
		
		$("#subGoodsTitle").click(function(){
			if($("#subulgoods").is(":visible")){
				$("#subulgoods").hide();
			}else{
				$("#subulgoods").show();
				$(location).attr('href','http://localhost:9000/project/shopMain3_1.do?pkind1=goods');
			}
		}); //GoodsClick 
	
		$("#<%=pkind2%>").css('background','lightgray');
		
		
		var pkind1 = "<%= pkind1 %>";
		var pkind2 = "<%= pkind2 %>";
		
		if(pkind1=='coffee'){
			$('#subCoffeeTitle').css('text-decoration','underline');
		}else if(pkind1=='goods'){
			$('#subGoodsTitle').css('text-decoration','underline');
		}
		
		
		/** Ajax를 활용한 물건전체 리스트 출력 **/
		function product_list(pkind1,sname, svalue, rpage){
			
			
			$.ajax({
				url :"product_list_proc.do?pkind1="+pkind1+"sname="+sname+"&svalue="+svalue+"&rpage="+rpage,
				success:function(result){
					var jdata = result;
					
					//2-1. DHTML을 이용하여 테이블 생성 및 출력
					var output = "<table class='shopMainCenterTable'>";
					for(var i in jdata.jlist){
						if(i%4 == 0){
							output +="<tr>";
							output +="<a href='#'>";
							output +="<td>"
						    output +="<img src = 'http://localhost:9000/project/images/"+jdata.jlist[i].pmphoto+"'>"
						    output += "<div class='event'>"
						    output += "<div class='a'>"
						    output +="<img src = 'http://localhost:9000/project/images/"+jdata.jlist[i].psub1+"'>"
						    output += "</div>"
						   	output += "<div class='b'>"
						    output += "<img src = 'http://localhost:9000/project/images/"+jdata.jlist[i].psub2+"'>"
						    output += "</div>"
						    output += "</div>"
						    output += "<div class='title'>"
						    output += jdata.jlist[i].ptitle
						    output += "</div>"
						    output += "<div class='gray'>"
						 	output += jdata.jlist[i].phash
						    output += "</div>"
						    output += "<div class='price'>"
						    output += "<div class='beforeprice'>"
							output += jdata.jlist[i].pprice+"원"
							output += "</div>"
							output += "<div class='nowprice'>"
							output += jdata.jlist[i].pprice*0.9+"원"
							output += "</div>"
							output += "<div class='discount'>"
							output += "[10%]"
							output += "</div>"
							output += "</div>"
							output += "<div class='review'>"
							output += "후기: 17"
							output += "</div>"
						    output +="</td>"
						output +="</a>"
						}else if(i%4==3){
							output +="<a href='#'>";
							output +="<td>"
						    output +="<img src = 'http://localhost:9000/project/images/"+jdata.jlist[i].pmphoto+"'>"
						    output += "<div class='event'>"
						    output += "<div class='a'>"
						    output +="<img src = 'http://localhost:9000/project/images/"+jdata.jlist[i].psub1+"'>"
						    output += "</div>"
						   	output += "<div class='b'>"
						    output += "<img src = 'http://localhost:9000/project/images/"+jdata.jlist[i].psub2+"'>"
						    output += "</div>"
						    output += "</div>"
						    output += "<div class='title'>"
						    output += jdata.jlist[i].ptitle
						    output += "</div>"
						    output += "<div class='gray'>"
						 	output += jdata.jlist[i].phash
						    output += "</div>"
						    output += "<div class='price'>"
						    output += "<div class='beforeprice'>"
							output += jdata.jlist[i].pprice+"원"
							output += "</div>"
							output += "<div class='nowprice'>"
							output += jdata.jlist[i].pprice*0.9+"원"
							output += "</div>"
							output += "<div class='discount'>"
							output += "[10%]"
							output += "</div>"
							output += "</div>"
							output += "<div class='review'>"
							output += "후기: 17"
							output += "</div>"
						    output +="</td>"
							output +="</a>"
							output +="</tr>"
						}else{
							output +="<a href='#'>";
							output +="<td>"
						    output +="<img src = 'http://localhost:9000/project/images/"+jdata.jlist[i].pmphoto+"'>"
						    output += "<div class='event'>"
						    output += "<div class='a'>"
						    output +="<img src = 'http://localhost:9000/project/images/"+jdata.jlist[i].psub1+"'>"
						    output += "</div>"
						   	output += "<div class='b'>"
						    output += "<img src = 'http://localhost:9000/project/images/"+jdata.jlist[i].psub2+"'>"
						    output += "</div>"
						    output += "</div>"
						    output += "<div class='title'>"
						    output += jdata.jlist[i].ptitle
						    output += "</div>"
						    output += "<div class='gray'>"
						 	output += jdata.jlist[i].phash
						    output += "</div>"
						    output += "<div class='price'>"
						    output += "<div class='beforeprice'>"
							output += jdata.jlist[i].pprice+"원"
							output += "</div>"
							output += "<div class='nowprice'>"
							output += jdata.jlist[i].pprice*0.9+"원"
							output += "</div>"
							output += "<div class='discount'>"
							output += "[10%]"
							output += "</div>"
							output += "</div>"
							output += "<div class='review'>"
							output += "후기: 17"
							output += "</div>"
						    output +="</td>"
							output +="</a>"
						}
					}
						output +="</tr>"
						output += '<tr><td colspan="4"> <div id="ampaginationsm"></div> </td>';
					output +="</table>";
					$("table.shopMainCenterTable").remove();
					$("div.subMainCenter").after(output);
					page(jdata.dbcount, jdata.reqpage, jdata.pagesize);
					
				}//success
			});//ajax
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/** 검색 버튼 이벤트 처리 **/
		$("#btnsearch").click(function(){
			if($("#sname").val() !="total" && $("#svalue").val() == ""){
				alert("검색할 데이터를 입력해 주세요");
				$("#svalue").focus();
				return false;
			}else{
				var sname = $("#sname").val();
				var svalue = $("#svalue").val();
				
				product_list(sname, svalue,"");
			}
		});

	});//ready
</script>
</head>
<body>
<div class="content">
<jsp:include page="../header.jsp" />
	<aside class="side">
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
	<div class="shopMain">
		<div class="shopMainTop">
		<% if(pkind1 != null) {%> <%= pkind1 %> <% if(pkind2 != null) { %> > <%= pkind2 %> <% } } else {}%> 
		</div>
		<div class="shopMainCenterMenu">
			<% if(pkind1 != null) {%>
			<% if( pkind1.equals("coffee")  ) { %>
			<ul>
				<h2><% if(pkind2 != null) { %>
						<%= pkind2 %>
					<% }else { %>
						커피
					<% } %>				
				</h2>
				<li class="underline" id="싱글오리진"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=싱글오리진">싱글오리진</a></li>
				<li class="underline" id="블렌드"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=블렌드">블렌드</a></li>
				<li class="underline" id="스페셜티"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=스페셜티">스페셜티</a></li>
				<li class="underline" id="선물세트"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=선물세트">커피팩/선물세트</a></li>				
				<li class="underline" id="더치커피"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=더치커피">더치커피</a></li>				
				<li class="underline" id="디카페인"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=디카페인">디카페인</a></li>
			</ul>
			<% } else if(pkind1.equals("goods")){%>
			<ul>
				<h2><% if(pkind2 != null) { %>
						<%= pkind2 %>
					<% }else { %>
						커피용품
					<% } %>				
				</h2>
				<li class="underline" id="핸드드립"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=핸드드립">핸드드립</a></li>
				<li class="underline" id="커피추출용품"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=커피추출용품">커피추출용품</a></li>
				<li class="underline" id="브루잉세트"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=브루잉세트">브루잉세트</a></li>
				<li class="underline" id="테이크아웃"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=테이크아웃">테이크아웃</a></li>				
				<li class="underline" id="굿즈"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=굿즈">Bean's Story 굿즈</a></li>				
			</ul>
			<%  } %>
			<% } //kind1이 null이 아닐때 %>
		</div> 
		<div class="shopMainCenter">
		<div class="subMainCenter">
			<div class="search">
				<select id='sname'>
				<option value='total'>전체</option>
				<option value='ptitle'>이름</option>
				<option value='price'>가격</option>
				</select>
				<input type='text' id='svalue'>
				<button id="btnsearch">검색</button>
				</div>
				<div  class='orders'>
				<span id='pdate'>New</span>
				<span id='ptitle' class='left'>Name</span> 
				<span id='pprice' class='left'>LowPrice</span> 
				<span id='pprice' class='left'>HighPrice</span>
			    <span id='name' class='left'>Review</span>
				</div>	    
		<table class="shopMainCenterTable">
		  <c:forEach var="vo"  items="${list}">
		  	<% if(i%4==0) {%>
				<tr>	
				<%} %>	
		   		<td>
				    <img src = 'http://localhost:9000/project/resources/upload/ ${vo.pmsphoto }' 
				    onmouseover="this.src='http://localhost:9000/project/resources/upload/ ${vo.phsphoto }'"
					onmouseout="this.src='http://localhost:9000/project/resources/upload/ ${vo.pmsphoto }'">
				     <div class='event'>
					    <div class='a'>
					       <c:if test ="${!empty vo.psub1 }">
					    		<img src = 'http://localhost:9000/project/images/${vo.psub1 }'>
					  		</c:if>
					  	</div>
					   	<div class='b'>
					   		<c:if test ="${!empty vo.psub2 }">
					   			<img src = 'http://localhost:9000/project/images/${vo.psub2 }'>
					    	</c:if>
					    </div>
					 </div>
					    <div class='title'>
					   		 ${vo.ptitle }
					    </div>
					    <div class='gray'>
					 		${vo.phash }
					   </div>
					    <div class='price'>
						    <div class='beforeprice'>
								${vo.pprice100 }
							</div>
							<div class='nowprice'>
								${vo.pprice100 }
							</div>
							<div class='discount'>
								[10%]
							</div>
						</div>
						<div class='review'>
							후기: 17
						</div>
		   		 </td>
		   	<% if(i%4==3) {%>
				</tr>	
			<%} %>		 
		   	<% i++; %>	
		    </c:forEach>
			 	<tr>
			   		<td colspan="4"> <div id="ampaginationsm"></div> </td>
			    </tr>  
		   </table>
		
	</div>
</div>
</div>
<!-- footer -->
<jsp:include page="../footer.jsp" />
</body>
</html>