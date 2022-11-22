<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
         <img src="<%=pjName%>/resources/images/${theme.themegenre}_${theme.picture}.jpg" width="300" height="400" >
   
   <h3 class="title" style="font-family: GangwonEdu_OTFBoldA;">${theme.themename}</h3>
   
   
   <div class="popIn" style="font-family: GangwonEdu_OTFBoldA;">

         <ul class="topCaption">
            <li><span class="title">장르</span> : ${theme.themegenre}</li>
            <li><span class="title">플레이시간</span> : ${theme.runtime}분</li>
            <li><span class="title">난이도 :</span> 
               <span class="star">${theme.thlevel}</span>
              </li>
           <li><span class = "title">가격 </span> : ${theme.thcost}원 ( 1인당 ) </li>
           <li><span class="title">권장 인원</span> : ${theme.peoplecount}명</li>
           <li><span class="title">이용 지역 </span> : ${theme.branch}</li>
           <li><span class="title">설명 </span> : ${theme.content}</li>  
            </ul>
            

      <input type = 'button' value='예약하기' id='reserve' style="font-family: GangwonEdu_OTFBoldA;">
   </div><!-- end : class : popIn -->
   </div><!-- center -->


    <!-- Scripts -->
         <script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
         <script type="text/javascript">
       $("#reserve").click(function(){
           alert("예약 페이지로 이동합니다.");
           opener.parent.location='reservation.do'; 
           window.close();
         })
   </script>
   
</body>
</html>