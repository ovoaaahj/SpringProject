<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.spring.dao.*,java.util.*,com.spring.vo.*"%>
<%

	String kind1 = request.getParameter("kind1");
	String kind2 = request.getParameter("kind2");

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
		height:100px;
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
	
	/**  
	* shopMainCenterTable
	*/ 
	div.content>div.shopMain>div.shopMainCenter{
		margin:auto;
		text-align:center;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable,
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable tr,
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td,
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable th{
		border:1px solid black;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable{
		width:100%;
		border-collapse:collapse;
		border-top:1px solid lightgray;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable th{
		height: 30px;
		text-align: right;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable th.search span{
		padding:0px 10px;
		font-size:13px;
		margin:0;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable th.search span.left{
		border-left:1px solid gray;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td{
		height: 400px;
		padding:2px;
		width:300px;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td img{
		height:250px;
		width:250px;
		margin-top:5px;
		padding:0;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div{
		display:inline-block;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.event{
		border:1px solid red;
		display:block;
		text-align:left;
		height:50px;
		margin:0px;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.event div.a img{
		display:inline-block;
		height: 30px;
		width:100px;
		padding: 0px 0px 3px 24px;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.event div.b img{
		display:inline-block;
		height: 30px;
		width:70px;
		padding: 3px;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.title{
		font-size: 17px;
		font-weight:700;
		padding: 5px 10px;	
		text-align:left;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.gray{
		font-size: 12px;
		font-weight:700;
		padding: 6px 10px;
		color:gray;	
		text-align:left;
		display:block;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.price{
		border:1px solid red;
		text-align:left;
		display:block;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.beforeprice{
		font-size: 18px;
		font-weight:700;
		padding: 5px 2px 5px 10px;
		color:gray;	
		display:inline-block;
		text-align:left;
		text-decoration:line-through
	}
	
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.nowprice{
		font-size: 18px;
		font-weight:700;
		padding: 5px 2px;
		color:black;	
		display:inline-block;
		text-align:left;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.discount{
		font-size: 18px;
		font-weight:700;
		padding: 5px 2px;
		color:black;	
		display:inline-block;
		text-align:left;
		color:orange;
	}
	div.content>div.shopMain>div.shopMainCenter>table.shopMainCenterTable td div.review{
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
				$(location).attr('href','http://localhost:9000/project/shopMain.do?kind1=coffee');
			}
		}); // CoffeeClick
		
		$("#subGoodsTitle").click(function(){
			if($("#subulgoods").is(":visible")){
				$("#subulgoods").hide();
			}else{
				$("#subulgoods").show();
				$(location).attr('href','http://localhost:9000/project/shopMain.do?kind1=goods');
			}
		}); //GoodsClick
		
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
		    <%	  for(int i=0 ;i<4;i++) {%>
		    output +="<td>"
		    output +="<img src = 'http://localhost:9000/project/images/콜롬비아산_어거스틴.jpg'>"
		    output += "<div class='event'>"
		    output += "<div class='a'>"
		    output +="<img src = 'http://localhost:9000/project/images/이달의커피_할인.png'>"
		    output += "</div>"
		   	output += "<div class='b'>"
		    output += "<img src = 'http://localhost:9000/project/images/디카페인.png'>"
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
		    $(".shopMainCenter").append(output);
		
	});//ready
</script>
</head>
<body>
<div class="content">
	<aside class="side">
		<div class="sidecontent">
			<ul class="all">
				<a href="http://localhost:9000/project/shopMain.do"><img src="http://localhost:9000/project/images/logo.png"></a>
				<li class="allli">
					<h3 id="subCoffeeTitle">커피</h3>
						<ul class="subul" id="subulcoffee">
							<li class="subli" id="sub1"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=싱글오리진">싱글오리진</a></li>
							<li class="subli" id="sub2"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=블렌드">블렌드</a></li>
							<li class="subli" id="sub3"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=스페셜티">스페셜티</a></li>
							<li class="subli" id="sub4"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=커피팩/선물세트">커피팩/선물세트</a></li>				
							<li class="subli" id="sub5"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=더치커피">더치커피</a></li>				
							<li class="subli" id="sub6"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=디카페인">디카페인</a></li>	
						</ul>						
				</li>
				<li class="allli">
					<h3 id="subGoodsTitle">커피용품</h3>
						<ul class="subul" id="subulgoods">
							<li class="subli" id="sub7">핸드드립</li>
							<li class="subli" id="sub8">커피추출용품</li>
							<li class="subli" id="sub9">브루잉세트</li>
							<li class="subli" id="sub10">테이크아웃</li>
							<li class="subli" id="sub11">Bean's Story 굿즈</li>
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
				<li class="underline" id="sub1"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=싱글오리진">싱글오리진</a></li>
				<li class="underline" id="sub2"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=블렌드">블렌드</a></li>
				<li class="underline" id="sub3"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=스페셜티">스페셜티</a></li>
				<li class="underline" id="sub4"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=커피팩/선물세트">커피팩/선물세트</a></li>				
				<li class="underline" id="sub5"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=더치커피">더치커피</a></li>				
				<li class="underline" id="sub6"><a href="http://localhost:9000/project/shopMain.do?kind1=coffee&&kind2=디카페인">디카페인</a></li>
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
		
	</div>

</div>
</body>
</html>