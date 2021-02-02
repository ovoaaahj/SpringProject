<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.spring.dao.*,java.util.*,com.spring.vo.*"%>
<%

	String kind1 = request.getParameter("kind1");
	String kind2 = request.getParameter("kind2");
	
	ProductDAO dao = new ProductDAO();
	ArrayList<ProductVO> list = dao.getList();
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
		
		choose();
		
		function choose(){
		  var kind1 = "<%= kind1 %>";
			
		 if(kind1 != "null"){
			 var item = "<%= kind1 %>";
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
		
		/**페이지 로딩 시 회원 전체 리스트 출력 **/
		product_list("total", "","");
		
		$("#sname").change(function(){
			if($("#sname").val()=="total"){
				$("#svalue").val("");
			}
		});
		
		
		
		/** Ajax를 활용한 물건전체 리스트 출력 **/
		function product_list(sname, svalue, rpage){
			
			
			$.ajax({
				url :"product_list_proc.do?sname="+sname+"&svalue="+svalue+"&rpage="+rpage,
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
		
			/** 페이징 처리 함수 **/
			function page(dbcount, reqpage, pagesize){
				//페이지 번호 및 링크 		
				var pager = jQuery("#ampaginationsm").pagination({
					maxSize : 5,			
					totals:dbcount,
					page : reqpage,
					pageSize : pagesize,
							
					
					lastText : '&raquo;&raquo;',
					firstText : '&laquo;&laquo',
					prevTest : '&laquo;',
					nextTest : '&raquo;',
					
					btnSize : 'sm' 			
				}); 
				
				//
				jQuery("#ampaginationsm").on('am.pagination.change',function(e){
					product_list($("#sname").val(), $("#svalue").val(),e.page);
				});
			}//page
			
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
			
			
			
			
		
	<%-- 	
		var output ="<table class='shopMainCenterTable'>"
		    output +="<tr>"
		    output +="<th colspan='4' class='search'>" 
		    output +="<span id='new'>New</span>"  
		    output +="<span id='name' class='left'>Name</span>"  
		    output +="<span id='name' class='left'>LowPrice</span>" 
		    output +="<span id='name' class='left'>HighPrice</span>" 
		    output +="<span id='name' class='left'>Review</span>" 
		    output +="</th>"
		    output +="</tr>"
		    <%   for(int j=0;j<3;j++){ %>
		    output +="<tr>"
		    <%	  for(ProductVO vo:list) {%>
		    output +="<td>"
		    output +="<img src = 'http://localhost:9000/project/images/<%= vo.getPmphoto() %>'>"
		    output += "<div class='event'>"
		    output += "<div class='a'>"
		    output +="<img src = 'http://localhost:9000/project/images/<%= vo.getPsub1() %>'>"
		    output += "</div>"
		   	output += "<div class='b'>"
		    output += "<img src = 'http://localhost:9000/project/images/<%= vo.getPsub2() %>'>"
		    output += "</div>"
		    output += "</div>"
		    output += "<div class='title'>"
		    output += "디카페인 콜롬비아 수프리모 후일라 피탈리토 산어거스틴"
		    output += "</div>"
		    output += "<div class='gray'>"
		 	output += "#캐러멜 #꿀 #오렌지 #밀크초콜릿"
		    output += "</div>"
		    output += "<div class='price'>"
		    output += "<div class='beforeprice'>"
			output += "8000원"
			output += "</div>"
			output += "<div class='nowprice'>"
			output += "7200원"
			output += "</div>"
			output += "<div class='discount'>"
			output += "[10%]"
			output += "</div>"
			output += "</div>"
			output += "<div class='review'>"
			output += "후기: 17"
			output += "</div>"
		    output +="</td>"
		    <% } %>
		    output +="</tr>"
		    <% } %>
		    output +="</table>"
		    	-->
		    $(".shopMainCenter").append(output); --%>
		    
		    
		}//product_list    
		
	});//ready
	
</script>
</head>
<body>
<div class="content">
<jsp:include page="../header.jsp" />
	<aside class="side">
		<div class="sidecontent">
			<ul class="all">
				<a href="http://localhost:9000/project/shopMain.do"><img src="http://localhost:9000/project/images/logo.png"></a>
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
				<li class="allli"><h3 id="subTeaTitle">티</h3></li>
				<li class="allli"><h3>고객센터</h3></li>
				<li class="allli"><h3>이벤트</h3></li>
			</ul>		
		</div>
	</aside>
	<div class="shopMain">
		<div class="shopMainTop">
		<% if(kind1 != null) {%> <%= kind1 %> <% if(kind2 != null) { %> > <%= kind2 %> <% } } else {}%> 
		</div>
		<div class="shopMainCenterMenu">
			<% if(kind1 != null) {%>
			<% if( kind1.equals("coffee")  ) { %>
			<ul>
				<h2><% if(kind2 != null) { %>
						<%= kind2 %>
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
			<% } else if(kind1.equals("goods")){%>
			<ul>
				<h2><% if(kind2 != null) { %>
						<%= kind2 %>
					<% }else { %>
						커피용품
					<% } %>				
				</h2>
				<li>핸드드립</li>
				<li>커피추출용품</li>
				<li>브루잉세트</li>
				<li>테이크아웃</li>
				<li>Bean's Story 굿즈</li>
			</ul>
			<%  } %>
			<% } //kind1이 null이 아닐때 %>
		</div> 
		<div class="shopMainCenter"></div>
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
	
		</div>
		
	</div>

</div>
<jsp:include page="../footer.jsp" />
</body>
</html>