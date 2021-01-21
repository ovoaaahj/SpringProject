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
<link rel="stylesheet" type="text/css" href="http://localhost:9000/project/css/shopMain.css">
<script>
	$(document).ready(function(){
		
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
				$(location).attr('href','http://localhost:9000/project/shopMain3_1.do?kind1=coffee');
			}
		}); // CoffeeClick
		
		$("#subGoodsTitle").click(function(){
			if($("#subulgoods").is(":visible")){
				$("#subulgoods").hide();
			}else{
				$("#subulgoods").show();
				$(location).attr('href','http://localhost:9000/project/shopMain3_1.do?kind1=goods');
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
		
	});//ready
</script>
</head>
<body>
<div class="content">
	<aside class="side">
		<div class="sidecontent">
			<ul class="all">
				<a href="http://localhost:9000/project/shopMain3.do"><img src="http://localhost:9000/project/images/logo.png"></a>
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
		<div class="shopMainCenter"></div>
		<div class="subMainCenter">
			<div class="search">
				<select id='sname'>
				<option value='total'>전체</option>
				<option value='ptitle'>이름</option>
				<option value='price'>가격</option>
				</select>
				<input type='text' id='svalue'>
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
				    <img src = 'http://localhost:9000/project/images/${vo.pmphoto }'>
				    <div class='event'>
					    <div class='a'>
					    	<img src = 'http://localhost:9000/project/images/${vo.psub1 }'>
					  	</div>
					   	<div class='b'>
					   		<img src = 'http://localhost:9000/project/images/${vo.psub2 }'>
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
		    </table>
		
	</div>

</div>
</body>
</html>