<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <!DOCTYPE html>
<html>
<head>
   <style>
      /*
      강원교육 모두체
      */
      @font-face {
       font-family: 'GangwonEdu_OTFBoldA';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
       font-weight: normal;
       font-style: normal;
        }

      </style>

<meta charset="UTF-8">
<title> 게시글 상세보기 </title>
<% String pjName = "/sosBoard"; %>
</head>
<body>


   <div style="text-align : center;">
   		<img src="<%=pjName%>/resources/images/comic_14.jpg" width="300" height="400" >
   
   <h3 class="title" style="font-family: GangwonEdu_OTFBoldA;">FILM BY BOB</h3>
   
   
   <div class="popIn" style="font-family: GangwonEdu_OTFBoldA;">

         <ul class="topCaption">
            <li><span class="title">장르</span> : 코믹</li>
            <li><span class="title">플레이시간</span> : 60분</li>
            <li><span class="title">난이도</span>
               <span class="star">★★★★★</span>
               </li>
            </ul>
            <p class="exp">오픈예정일 : 2023년 예정</p>

      <input type = 'button' value='예약하기' id='reserve' style="font-family: GangwonEdu_OTFBoldA;">
   </div><!-- end : class : popIn -->
   </div><!-- center -->


	 <!-- Scripts -->
         <script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
  		 <script type="text/javascript">
       $("#reserve").click(function(){
           alert("예약 페이지로 이동합니다.");
           opener.parent.location='comic.do'; 
           window.close();
         })
   </script>
   
</body>
</html>