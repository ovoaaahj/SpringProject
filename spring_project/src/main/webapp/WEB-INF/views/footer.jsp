<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/**
      footer
   */
   *{
      font-family:"나눔바른고딕";   
        
   }
   
footer{
      margin:0px; padding:0px;
      /* background-color:rgb(242,242,242); */
      width:100%;
      background-color:#ecd8c6;
      color:black;
   height:220px;   /* Height of the footer */
   clear:both; 
}

footer>div.info{
   width:100%;
   height:150px;
   padding:30px 25px;
}



   footer>div.info>div{
         font-size:13px;
         padding:3px 0;   
         margin-left: 20px;
         margin-bottom:15px;
   }
   footer nav>ul>li {
      display:inline-block;
         margin-left: 20px;
      
   }
   footer nav>ul>li>a {      
      text-decoration:none;
      font-size:13px;
      font-weight:bold;
      color:#333;   
      padding:0 8px 0 3px;   
   }
   footer nav>ul>li div {
   
      background-color:gray;
      width:1px; height:10px;
      display:inline-block;
   } 
   footer>div.info>div ul {
   
    font-size:16px;

   }
   
</style>
</head>
<body>
<footer>
      <div class="info">
      <div>
         <nav>
            <ul>
               <li><a href="">사이트 이용약관</a><div></div></li>
               <li><a href="">개인정보 처리방침</a></li>
            </ul>
         </nav>
      </div>
      <div>주식회사 bean's story 주소 : 서울시 강남구 역삼동 고객센터 : 02-123-4567 (평일 AM 10 ~ PM 4 / 점심 PM 12 ~ PM 1:00) FAX : 02-123-4567 MAIL : help@beanstory.net</div>
      <div>대표:현정이 사업자등록번호 : 555-66-77777 COPYRIGHT (C) WWW.BEANSTORY.CO.KR ALL RIGHT RESERVED Hosting by cafe24</div>      
   </div>
   </footer>
</body>
</html>