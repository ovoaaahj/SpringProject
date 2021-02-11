<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<style>
	div.shopinsert{
	/*	border:1px solid red; */
		text-align:center;
		margin:30px;
		
	}
	div.shopinsert div.bigname{
	/*	border:1px solid red; */
		height:50px;
		padding-top:20px;
		
	}
	div.shopinsert div.bigname h2{
		border-bottom:1px solid gray;
		display:inline-block;
		width:400px;
		padding-bottom:5px;
		margin-right:40px;
		
	}
	div.shopinsert div.shopInsertContent{
		text-align:center;
	/*	border:1px solid red; */
	}
	div.shopinsert div.shopInsertContent ul.big{
		list-style:none;
	/*	border:1px solid green; */
		width:900px;
		margin:auto;
	}
	
	div.shopinsert div.shopInsertContent ul.big>li{
		margin:auto;
	/*	border:1px solid blue; */
		padding:10px;
		width:50%;
		clear:left;
		height:30px;
		
		
	}
	div.shopInsertContent ul.big>li>label{
		border:1px solid white;
		border-bottom :1px solid gray;
		height:30px;
		width:130px;
		padding-top:5px;
		display:inline-block;
		float:left;
	}
	
	div.shopinsert div.shopInsertContent ul.big>li>input[type='text']{
		border: 1px solid white;
		border-bottom: 1px solid gray;
		height:23px;
		width:200px;
		padding:5px;
		display:inline-block;
	}
	
	div.shopinsert div.shopInsertContent ul.big>li>select{
		border: 1px solid white;
		border-bottom: 1px solid gray;
		height:30px;
		width:200px;
		padding-top:5px;
		margin-top:5px;
	}
	div.shopinsert div.shopInsertContent ul.big>li>div.radio{
		border-bottom:1px solid gray;
		display:inline-block;
		height:30px;
		width:200px;
		margin:5px 0;
	}
	div.shopinsert div.shopInsertContent ul.big>li>button.btnStylep{
		border:1px solid gray;
		border-radius:4px;
		background-color:white;
		width:100px;
		height:30px;
		margin:0 10px;
		
	}
	div.shopinsert div.shopInsertContent ul.big>li.picture{
	/*	border-top:1px solid red; */
		height:230px;
		text-align:center;
	}
	div.shopinsert div.shopInsertContent ul.big>li.picture input[type='file']{
	/**	border:1px solid red; */
		padding-left:60px;
		padding-bottom:5px;
	}
	div.shopinsert div.shopInsertContent ul.big>li>div.picture{
	/*	border:1px solid green; */
		height:200px;
		width:200px;
		margin:auto;
		margin-bottom:5px;
		
	}
	div.shopinsert div.shopInsertContent ul.big>li>div.picture img{
		height:200px;
		width:200px;
		margin:auto;
	}
	div.shopinsert div.shopInsertContent ul.big>li p{
		 border-bottom:1px solid gray;
		 margin:auto;
		 display:inline-block;
		 width:200px;
		 height:30px;
		 padding:0px;
	}
	div.shopinsert div.shopInsertContent  a{
		color:black;
		text-decoration:none;
	}
	
	div.shopinsert div.shopInsertContent ul.big>li:nth-child(5) button{
		width:50px;
		height:40px;
		float:right;
	}
	div.shopinsert div.shopInsertContent ul.big>li:nth-child(5) ul{
	/*	border:1px solid red; */
		text-align:center;
		list-style:none;
	}
	div.shopinsert div.shopInsertContent ul.big>li:nth-child(5) ul li{
	/*	border:1px solid red; */
		padding:5px 0;
	}
	div.shopinsert div.shopInsertContent ul.big>li:nth-child(5) ul li{
	/*	border:1px solid red; */
		padding:5px 0;
	}
	div.shopinsert div.shopInsertContent ul.big>li:nth-child(5) ul li label{
		border-bottom:1px solid gray;
		display:inline-block;
		width:80px;
		height:28px;
		margin:0,10px;
		
	}
	div.shopinsert div.shopInsertContent ul.big>li:nth-child(5) ul li input[type='text']{
		border: 1px solid white;
		border-bottom:1px solid gray;
		display:inline-block;
		width:200px;
		height:35px;
		padding:2px 0;
	}
	
	
	
</style>
<script>
$(document).ready(function(){
	$(".moreul").hide();
	
	$("#productInsert").click(function(){
			shopinsertForm.submit();
			});
	$("#more").click(function(){
		if($(".moreul").is(":visible")){
			$(".price").css('height','30');
			$(".moreul").hide();
		}else{
			$(".price").css('height','180');
			$(".moreul").show();
		}
		
		var pkind1= $("#pkind1").val();
		
	});
	
	$("#file1").on("change", ImgFileSelect1);
	$("#file2").on("change", ImgFileSelect2);
	
	});
	

	
	
	
	
function sub(type, select){
	$('#pkind2').empty();
	
	
	if(type=='coffee'){
		$('#pkind2').append("<option value=''>선택해주세요</option>");
		$('#pkind2').append("<option value='싱글오리진'>싱글오리진</option>");
		$('#pkind2').append("<option value='블렌드'>블렌드</option>");
		$('#pkind2').append("<option value='스페셜티'>스페셜티</option>");
		$('#pkind2').append("<option value='선물세트'>선물세트</option>");
		$('#pkind2').append("<option value='더치커피'>더치커피</option>");
		$('#pkind2').append("<option value='디카페인'>디카페인</option>");
	}else if(type == 'goods'){
		$('#pkind2').append("<option value='핸드드립'>핸드드립</option>");
		$('#pkind2').append("<option value='커피추출용품'>커피추출용품</option>");
		$('#pkind2').append("<option value='브루잉세트'>브루잉세트</option>");
		$('#pkind2').append("<option value='테이크아웃'>테이크아웃</option>");
		$('#pkind2').append("<option value='굿즈'>굿즈</option>");
	}
	document.getElementById("pkind2").style.display="";

		
};
	
function psub3_val(obj){
	getObj = obj[obj.selectedIndex].innerHTML;
	$("input[name='psub3']").val(getObj+".png");
}


function ImgFileSelect1(e){
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	filesArr.forEach(function(f){
		sel_file = f;
		var reader= new FileReader();
		reader.onload = function(e){
			$("#img1").attr("src",e.target.result);
		}
		reader.readAsDataURL(f);
	});
	
}

function ImgFileSelect2(e){
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	filesArr.forEach(function(f){
		sel_file = f;
		var reader= new FileReader();
		reader.onload = function(e){
			$("#img2").attr("src",e.target.result);
		}
		reader.readAsDataURL(f);
	});
	
}


</script>
</head>
<body>
<jsp:include page="../../header.jsp" />
<div class="shopinsert">
	<div class="bigname">
	<h2>상품추가</h2>
	</div>
	<div class="shopInsertContent">
	<form name="shopinsertForm" action="shop_insert_proc.do" method="post" enctype="multipart/form-data">
	<ul class="big">
		<li>
			<label>상품명</label>
			<input type='text' id="ptitle" name="ptitle">
		</li>
		<li>
			<label>대분류</label>
			<select id="pkind1" name="pkind1" onchange='sub(this.value)'>
				<option>대분류를 선택해주세요</option>
				<option value="coffee">커피</option>
				<option value="goods">상품</option>
			</select>
		</li>
		<li>
			<label>소분류</label>
		
			<select id="pkind2" name="pkind2" onchange="psub3_val(this)">
				<option>소분류를 선택해주세요</option>
			</select>
		
		</li>
		<li>
			<label>해쉬설명</label>
			<input type='text' placeholder="#000 형식으로 입력해주세요" id="phash" name="phash">
		</li>
		<li class="price">
			<label>기본가격</label>
			<input type='text' placeholder="숫자만 입력해주세요" id="pprice100" name="pprice100">
			<button type="button" id="more">more</button>
				<ul class="moreul">
					<li>
						<label>200g 가격</label>
						<input type='text' placeholder="숫자만 입력해주세요" id="pprice200" name="pprice200">
					</li>
					<li>
						<label>500g 가격</label>
						<input type='text' placeholder="숫자만 입력해주세요" id="pprice500" name="pprice500">
					</li>
					<li>
						<label>1kg 가격</label>
						<input type='text' placeholder="숫자만 입력해주세요" id="pprice1000" name="pprice1000">
					</li>	
						
				</ul>
		</li>
	
		<li>
			<label>할인여부</label>
			<div class="radio">
			<input type="radio" name="psub1" value="이달의커피_할인.png">O
			<input type="radio" name="psub1" value="">X
			</div>
		</li>
		<li>
			<label>카페인</label>
			<div class="radio">
			<input type="radio" name="psub2" value="디카페인.png">디카페인
			<input type="radio" name="psub2" value="">카페인
			</div>
		</li>
		<li>
			<label>커피라벨</label>
			<input type='text' placeholder="커피면 자동으로 입력됩니다." id="psub3" name="psub3" readonly>
		</li>
		
		<li>
			<p>메인사진</p>
			
			
		</li>
		<li class="picture">
			<input type ="file" name="file1" id="file1">
		<div class="picture" id="mphoto">
			<img id="img1" />
		</div>
		</li>
		<li>
			<p>마우스올렸을때사진</p>
		</li>
		<li class="picture">
			<input type ="file" name="file2" id="file2">
		<div class="picture">
			<img id="img2"/>
		</div>
		</li>
		<li >
			<button type="button" id="productInsert" class="btnStylep">등록하기</button>
			<button type="button" id="productList"  class="btnStylep"><a href="http://localhost:9000/project/admin/product_list.do">목록으로</a></button>
		</li>
	</ul>
	</form>
	</div>


</div>
<jsp:include page="../../footer.jsp" />
</body>
</html>