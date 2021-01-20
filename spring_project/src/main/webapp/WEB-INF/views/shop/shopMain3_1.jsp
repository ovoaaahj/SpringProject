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
<style>
	div.content{
		border: 1px solid orange;
		width:1500px;
		margin:auto;
	}
	
	/**  
	* aside
	*/ 
	div.content>aside.side{
		width:250px;
		height:1000px;
		display:inline-block;
		float:left; 
	}
	div.content>aside.side>div.sidecontent{
		display:inline-block;
		position:fixed;
	}
	div.content>aside.side>div.sidecontent>ul.all{
		border-right:1px solid gray;
		list-style:none;
		display:inline-block;
		width:250px;
		margin:0;
		padding:100px 0 0 0;
		height:700px;
		
		
		
	}
	div.content>aside.side>div.sidecontent>ul.all>li.allli{
		
	}
	div.content>aside.side>div.sidecontent>ul.all>li.allli>ul.subul>li.subli{
		border:1px solid purple;
		list-style:none;
	}
	div.content>aside.side>div.sidecontent>ul.all a img{
		border:1px solid red;
		width:230px;
		display:inline-block;
		height:70px;
		margin:0;
	}
	div.content>aside.side>div.sidecontent>ul.all a {
		text-decoration:none;
		color:black;
	}
	
	/**  
	* shopMain
	*/ 
	
	div.content>div.shopMain{
		border:1px solid green;
		width:1200px;
		margin-left: 20px;
		display:inline-block;
	}
	
	div.content>div.shopMain>div.shopMainTop{
		border: 1px solid red;
		display: inline-block;
		font-size:15px; 
	}
	
		/**  
	* shopMainCenterMenu
	*/ 
	
	div.content>div.shopMain>div.shopMainCenterMenu{
		border:1px solid blue;
		text-align:center;
		padding:20px 0;
	}
	div.content>div.shopMain>div.shopMainCenterMenu ul{
		list-style:none;
	}
	div.content>div.shopMain>div.shopMainCenterMenu ul li{
		display:inline-block;
		padding: 0 8px;
	}
	div.content>div.shopMain>div.shopMainCenterMenu ul li a{
		text-decoration:none;
		color:black;
	}
	div.content>div.shopMain>div.shopMainCenterMenu ul li:hover{
		text-decoration:underline;
	}
	
	div.content>div.shopMain div.shopMainCenter div.subMainCenter{
		height: 30px;
		text-align: right;
		border:1px solid black;
	}
	
	div.subMainCenter{
		height: 30px;
		text-align: right;
		border:1px solid black;
		display:inline_block;
	}
	div.subMainCenter div.search{
		padding:0px 10px;
		font-size:13px;
		margin-top:2px;
		text-align:left;
		display:inline-block;
		border:1px solid red;
		height:21px;
		
	}
	div.subMainCenter div.orders{
		padding:0px 10px;
		font-size:13px;
		margin-top:0;
		text-align:right;
		display:inline-block;
		border:1px solid red;
		height:21px;
	}
	div.subMainCenter div.orders span.left{
		border-left:1px solid gray;
		padding:0px 1px;
	
	}
	
	
	/**  
	* shopMainCenterTable
	*/ 
	div.shopMainCenter{
		margin:auto;
		text-align:center;
	}
	table.shopMainCenterTable,
	table.shopMainCenterTable tr,
	table.shopMainCenterTable td,
	table.shopMainCenterTable th{
		border:1px solid black;
	}
	
	table.shopMainCenterTable{
		width:100%;
		border-collapse:collapse;
		border-top:1px solid lightgray;
		margin-top:5px;
	}

	table.shopMainCenterTable td{
		height: 400px;
		padding:2px;
		width:200px;
		text-align:left
	}
	table.shopMainCenterTable td>img{
		height:250px;
		width:250px;
		margin-right:25px;
		padding:0;
		margin-top:5px;
		
	}
	table.shopMainCenterTable td div{
		display:inline-block;
	}
	table.shopMainCenterTable td div.event{
		border:1px solid red;
		display:block;
		text-align:left;
		height:40px;
		margin:0px;
	}
	table.shopMainCenterTable td div.event div.a img{
		display:inline-block;
		height: 30px;
		width:100px;
		padding: 0px 0px 3px 24px;
	}
	table.shopMainCenterTable td div.event div.b img{
		display:inline-block;
		height: 30px;
		width:70px;
		padding: 3px;
	}
	table.shopMainCenterTable td div.title{
		font-size: 17px;
		font-weight:700;
		padding: 5px 10px;
		margin-right:20px;	
		text-align:left;
		border:1px solid red;
		width:250px;
		height:50px;
	}
	table.shopMainCenterTable td div.gray{
		font-size: 12px;
		font-weight:700;
		padding: 6px 10px;
		color:gray;	
		text-align:left;
		display:block;
	}
	table.shopMainCenterTable td div.price{
		border:1px solid red;
		text-align:left;
		display:block;
	}
	table.shopMainCenterTable td div.beforeprice{
		font-size: 18px;
		font-weight:700;
		padding: 5px 2px 5px 10px;
		color:gray;	
		display:inline-block;
		text-align:left;
		text-decoration:line-through
	}
	
	table.shopMainCenterTable td div.nowprice{
		font-size: 18px;
		font-weight:700;
		padding: 5px 2px;
		color:black;	
		display:inline-block;
		text-align:left;
	}
	table.shopMainCenterTable td div.discount{
		font-size: 18px;
		font-weight:700;
		padding: 5px 2px;
		color:black;	
		display:inline-block;
		text-align:left;
		color:orange;
	}
	table.shopMainCenterTable td div.review{
		font-size: 11px;
		font-weight:400;
		padding: 5px 10px;
		color:gray;	
		display:block;
		text-align:left;
	}
	
</style>
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
	
		$("#subTeaTitle").click(function(){
			$(location).attr('href','http://localhost:9000/project/shopMain3_1.do?pkind1=tea');
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
							<li class="subli" id="sub1"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=싱글오리진">싱글오리진</a></li>
							<li class="subli" id="sub2"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=블렌드">블렌드</a></li>
							<li class="subli" id="sub3"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=스페셜티">스페셜티</a></li>
							<li class="subli" id="sub4"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=커피팩/선물세트">커피팩/선물세트</a></li>				
							<li class="subli" id="sub5"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=더치커피">더치커피</a></li>				
							<li class="subli" id="sub6"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=디카페인">디카페인</a></li>	
						</ul>						
				</li>
				<li class="allli">
					<h3 id="subGoodsTitle">커피용품</h3>
						<ul class="subul" id="subulgoods">
							<li class="subli" id="sub1"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=핸드드립">핸드드립</a></li>
							<li class="subli" id="sub2"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=커피추출용품">커피추출용품</a></li>
							<li class="subli" id="sub3"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=브루잉세트">브루잉세트</a></li>
							<li class="subli" id="sub4"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=테이크아웃">테이크아웃</a></li>				
							<li class="subli" id="sub5"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=굿즈">Bean's Story 굿즈</a></li>				
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
				<li class="underline" id="sub1"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=싱글오리진">싱글오리진</a></li>
				<li class="underline" id="sub2"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=블렌드">블렌드</a></li>
				<li class="underline" id="sub3"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=스페셜티">스페셜티</a></li>
				<li class="underline" id="sub4"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=커피팩/선물세트">커피팩/선물세트</a></li>				
				<li class="underline" id="sub5"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=더치커피">더치커피</a></li>				
				<li class="underline" id="sub6"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=coffee&&pkind2=디카페인">디카페인</a></li>
			</ul>
			<% } else if(pkind1.equals("goods")){%>
			<ul>
				<h2><% if(pkind2 != null) { %>
						<%= pkind2 %>
					<% }else { %>
						커피용품
					<% } %>				
				</h2>
				<li class="underline" id="sub1"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=핸드드립">핸드드립</a></li>
				<li class="underline" id="sub2"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=커피추출용품">커피추출용품</a></li>
				<li class="underline" id="sub3"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=브루잉세트">브루잉세트</a></li>
				<li class="underline" id="sub4"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=테이크아웃">테이크아웃</a></li>				
				<li class="underline" id="sub5"><a href="http://localhost:9000/project/shopMain3_2.do?pkind1=goods&&pkind2=굿즈">Bean's Story 굿즈</a></li>				
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