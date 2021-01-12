<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		width:100%;
	}
	
	/**  
	* aside
	*/ 
	div.content>aside.side{
		border:1px solid red;
		width:350px;
		height:1000px;
		display:inline-block;
		float:left;
	}
	div.content>aside.side>div.sidecontent>ul.all{
		border:1px solid purple;
		list-style:none;
		display:inline-block
		
	}
	div.content>aside.side>div.sidecontent>ul.all>li.allli{
		
	}
	div.content>aside.side>div.sidecontent>ul.all>li.allli>ul.subul>li.subli{
		border:1px solid purple;
		list-style:none;
	}
	div.content>aside.side>div.sidecontent>ul.all a img{
		border:1px solid red;
		width:80%;
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
		width:80%;
		margin-left:380px;
		
	}
	div.content>div.shopMain>div.shopMainTop{
		border: 1px solid red;
		display: inline-block;
		font-size:20px; 
	}
	div.content>div.shopMain>div.shopMainCenter{
		border:1px solid blue;
		text-align:center;
	}
	div.content>div.shopMain>div.shopMainCenter ul{
		list-style:none;
	}
	div.content>div.shopMain>div.shopMainCenter ul li{
		display:inline-block;
		padding: 0 8px;
	}
</style>
<script>
	$(document).ready(function(){
		
		choose();
		
		function choose(){
		  var kind1 = "<%= kind1 %>";
			
		 if(kind1== null){
			 var item = "";
		}else{
			var item = "<%= kind1 %>";
		}
		if(item == "coffee"){
			$("#subulcoffee").show();
			$("#subulgoods").hide();
		}else if(item == "goods"){
			$("#subulcoffee").hide();
			$("#subulgoods").show();
		}else{
			$("#subulcoffee").hide();
			$("#subulgoods").hide();
		}
		}
		
		$("#subCoffeeTitle").click(function(){
			if($("#subulcoffee").is(":visible")){
				$("#subulcoffee").hide();
			}else{
				$("#subulcoffee").show();
				$(location).attr('href','http://localhost:9000/project/shopMain.do?kind1=coffee');
			}
		});
		
		$("#subGoodsTitle").click(function(){
			if($("#subulgoods").is(":visible")){
				$("#subulgoods").hide();
			}else{
				$("#subulgoods").show();
				$(location).attr('href','http://localhost:9000/project/shopMain.do?kind1=goods');
			}
		});
	});
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
		<%= kind1 %> <% if(kind2 != null) { %> > <%= kind2 %> <% } %>
		</div>
		<div class="shopMainCenter">
			<%-- if(kind1 == "coffee") { --%>
			<ul>
				<h2>커피</h2>
				<li>싱글오리진</li>
				<li>블렌드</li>
				<li>스페셜티</li>
				<li>커피팩/선물세트</li>
				<li>더치커피</li>
				<li>디카페인</li>
			</ul>
			<%-- } --%>
		</div>
	</div>

</div>
</body>
</html>