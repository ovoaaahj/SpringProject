<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<style>
</style>
<script>
</script>
<link rel="stylesheet" type="text/css" href="http://localhost:9000/project/css/wook.css">
<link rel="stylesheet" href = "http://localhost:9000/project/css/am-pagination.css">
<script src="http://localhost:9000/project/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/project/js/am-pagination.js"></script> 
<script>
	
	$(document).ready(function(){
		
	      // 페이지 번호 및 링크
	       var pager = jQuery("#ampaginationsm").pagination({
	         maxSize: 5,
	         totals: "${dbCount}",
	         pageSize: "${pageSize}",
	         page: "${reqPage}",
	         
	         lastText: '&raquo;&raquo;',
	         firstText: '&laquo;&laquo;',
	         prevText: '&laquo;',
	         nextText: '&raquo;',
	         
         btnSize: 'sm'
      });
	      
	      jQuery("#ampaginationsm").on('am.pagination.change',function(e){
	         $(location).attr('href','http://localhost:9000/project/mypage/buying_list.do?rpage=' + e.page); // location.href('이동페이지');
	      });

	      
	});
	

</script>

</head>
<body>
 <!-- header -->
	<jsp:include page="../../header.jsp" /> 
	
	
<div class="content" style="height:auto;margin-bottom:200px; ">
		<div class="order_h2"><h2>주문목록</h2></div>
		<div style="margin:0 auto ;  width:1400px;" >
		
			<div class="Main_div" >
					<table class="real_buylistMain_Table">
						<tr class="buylistMain_Table_first_tr">
							<td>번호</td>
							<td>이미지</td>
							<td>상품정보</td>
							<td>기본가격</td>
							<td>총수량</td>
							<td>주문날짜</td>
							<td>총가격</td>
						</tr>
				  		<c:forEach var="vo" items="${list}">
	  					<tr>
						  		<td>${vo.rno }</td>
						  		<td>
							  		<a href="http://localhost:9000/project/mypage/buyingContent.do?bid=${vo.bid}">
						  				<img  style='width:70px; height:70px' src = 'http://localhost:9000/project/upload/${vo.pmsphoto}'>
						  			</a>
						  			</td>
						  		<td>${vo.ptitle}</td>
						  		<td>${vo.tot_price}</td>
						  		<td>${vo.total_count}</td>
						  		<td>${vo.mdate }</td>
						  		<td>${vo.realPrice }</td>
						</tr> 
			
			</c:forEach> 
						<tr>
							<td colspan="7"><div id="ampaginationsm"></div></td>
						</tr>
					
					</table>
			</div>
		</div>

	
	
</div>
</body>
 <!-- header -->
	<jsp:include page="../../footer.jsp" /> 
</body>
</html>