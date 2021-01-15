<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div.shopinsert{
		border:1px solid red;
		text-align:center;
	}
	div.shopinsert div.bigname{
		border:1px solid red;
	}
	div.shopinsert div.bigname h2{
		border-bottom:1px solid gray;
		display:inline-block;
		width:200px;
		padding-bottom:5px;
	}
	div.shopinsert div.shopInsertContent{
		text-align:center;
		border:1px solid red;
	}
	div.shopinsert div.shopInsertContent ul{
		list-style:none;
		border:1px solid green;
		width:800px;
		margin:auto;
	}
	
	div.shopinsert div.shopInsertContent ul li{
		margin:auto;
		border:1px solid blue;
		padding:10px;
		width:50%;
		clear:left;
		height:30px;
		
		
	}
	div.shopInsertContent ul li label{
		border:1px solid white;
		border-bottom :1px solid gray;
		height:30px;
		width:130px;
		padding-top:5px;
		display:inline-block;
		float:left;
	}
	
	div.shopinsert div.shopInsertContent ul li input[type='text']{
		border: 1px solid white;
		border-bottom: 1px solid gray;
		height:23px;
		width:200px;
		padding:5px;
		display:inline-block;
	}
	
	div.shopinsert div.shopInsertContent ul li select{
		border: 1px solid white;
		border-bottom: 1px solid gray;
		height:30px;
		width:200px;
		padding-top:5px;
		margin-top:5px;
	}
	div.shopinsert div.shopInsertContent ul li div.radio{
		border-bottom:1px solid gray;
		display:inline-block;
		height:30px;
		width:200px;
		margin:5px 0;
	}
	div.shopinsert div.shopInsertContent ul li button.btnStylep{
		border:1px solid gray;
		border-radius:4px;
		background-color:white;
		width:100px;
		height:30px;
		margin:0 10px;
		
	}
	div.shopinsert div.shopInsertContent ul li.picture{
		border:1px solid red;
		height:220px;
		text-align:center;
	}
	div.shopinsert div.shopInsertContent ul li div.picture{
		border:1px solid green;
		height:200px;
		width:200px;
		margin:auto;
	}
	div.shopinsert div.shopInsertContent ul li p{
		 border-bottom:1px solid gray;
		 margin:auto;
		 display:inline-block;
		 width:200px;
		 height:30px;
		 padding:0px;
	}
</style>
</head>
<body>
<div class="shopinsert">
	<div class="bigname">
	<h2>상품추가</h2>
	</div>
	<div class="shopInsertContent">
	<form name="shopinsertForm" action="shop_insert_proc.do" method="post">
	<ul>
		<li>
			<label>상품명</label>
			<input type='text' id="ptitle">
		</li>
		<li>
			<label>대분류</label>
			<select id="pkind1">
				<option value="coffee">커피</option>
				<option value="goods">상품</option>
				<option value="tea">티</option>
			</select>
		</li>
		<li>
			<label>소분류</label>
			<select id="pkind2">
				<option>싱글오리진</option>
				<option>블렌드</option>
				<option>스페셜티</option>
				<option>커피팩/선물세트</option>
				<option>더치커피</option>
				<option>디카페인</option>
			</select>
		</li>
		<li>
			<label>해쉬설명</label>
			<input type='text' placeholder="#000 형식으로 입력해주세요">
		</li>
		<li>
			<label>가격</label>
			<input type='text' placeholder="숫자만 입력해주세요">
		</li>
		<li>
			<label>할인여부</label>
			<div class="radio">
			<input type="radio" name="sub1" value="이달의커피_할인.png">O
			<input type="radio" name="sub1" value="">X
			</div>
		</li>
		<li>
			<label>카페인</label>
			<div class="radio">
			<input type="radio" name="sub2" value="디카페인.png">디카페인
			<input type="radio" name="sub1" value="">카페인
			</div>
		</li>
		<li>
			<p>메인사진</p>
			
		</li>
		<li class="picture">
		<div class="picture"></div>
		</li>
		<li >
			<button type="button" id="productInsert" class="btnStylep">등록하기</button>
			<button type="button" id="productList"  class="btnStylep">목록으로</button>
		</li>
	</ul>
	</form>
	</div>


</div>
</body>
</html>