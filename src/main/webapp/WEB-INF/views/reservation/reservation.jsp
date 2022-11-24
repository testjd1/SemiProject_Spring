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
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}
/*
         마포꽃섬
         */
@font-face {
   font-family: 'MapoFlowerIsland';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoFlowerIslandA.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title id='logo'>S.o.S escape</title>


<%
   String pjName = "/sosBoard";

%>
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
<link rel="stylesheet" href="<%=pjName%>/resources/assets/css/reservation.css" />
<!-- <link rel ="stylesheet" href='resources/css/test.css'> -->


<!-- bxSlider -->

<link rel="stylesheet"  href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


<!-- Favicon -->
<link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'>

<!-- login css -->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/login.css'>




<!-- 모달  css-->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/modal.css'>



<!-- 로그인, 모달  jquery
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
-->
<!-- modal js -->
<script src="<%=pjName%>/resources/assets/js/modal.js"></script>

<!--  날짜 스크립트 -->


</head>
<body class="homepage is-preload">
   <div id="page-wrapper">

      <!-- Header -->
      <header id="header"> </header>

      <!-- Nav -->

      <nav id="nav">
         <div id="navImage">
            <a href="../customer/index.do"><img
               src="<%=pjName%>/resources/images/logo2.png" height="138px"></a>
         </div>

         <ul>
            <li class="current"><a href="../customer/index.do">Home</a></li>

            <li><a href="../customer/story.do">Story</a></li>
            <li><a href="../customer/location.do">Location</a>
               <ul>
                  <li><a href="../customer/hongdae.do">홍대</a></li>
                  <li><a href="../customer/anyang.do">안양</a></li>
                  <li><a href="../customer/gumi.do">구미</a></li>
               </ul></li>
            <li><a href="../theme/theme.do">Theme</a>
               <ul>
                  <li><a href="../theme/theme.do?themegenre=horror">공포</a></li>
                  <li><a href="../theme/theme.do?themegenre=infiltration">잠입</a></li>
                  <li><a href="../theme/theme.do?themegenre=comic">코믹</a></li>
                  <li><a href="../theme/theme.do?themegenre=fantasy">판타지</a></li>
                  <li><a href="../theme/theme.do?themegenre=emotion">감성</a></li>
                  <li><a href="../customer/error.do">에러페이지</a></li>
               </ul></li>
            <li><a href="../qna/getQnaList.do">Q&A</a></li>
            <li><a href="../board/getBoardList.do">Board</a></li>
            <c:if test="${sessionScope.loginId==null}">
               <li><a id="gologin" class="btn trigger"
                  href="../customer/login.do">Login</a></li>
            </c:if>
            <c:if test="${sessionScope.loginId!=null}">
               <li><a href="../customer/mypage.do">Mypage</a></li>
               <li><a class="btn" href="../customer/logout.do">Logout</a></li>

            </c:if>




         </ul>
      </nav>

      <br> <br> <br> <br>
      <form method='post' id="insert-reservation" action = "insertReservation.do">
         <div class='container'>

            <!-- 테이블 div -->
            <div class="tablesize ">
               <section class='revsec'>
                  <h1 class='title' style="font-family: GangwonEdu_OTFBoldA;">
                     <span>예약 정보 입력</span>
                  </h1>




                  <table class="tablesize2 ">
                     <p style="font-family: GangwonEdu_OTFBoldA;"></p>



                     <tbody style="font-family: GangwonEdu_OTFBoldA;">
                     
                     
                        <tr>
                           <td>지점</td>
                           <td><input type="text" value="${reservation.BRANCH}" id="branch" readonly disabled style="font-family: GangwonEdu_OTFBoldA;"></td>
                           <input type = "hidden" value ="${reservation.BRANCH}" id = "branch" name = "branch" >
                        </tr>
                        
                        <tr>
                           <td>테마명</td>
                           <td><input type="text" value="${reservation.THEMENAME}" id="themename"  readonly  style="font-family: GangwonEdu_OTFBoldA;"></td>
                           <input type="hidden" value="${reservation.THEMENAME}" id="themename" name = "themename">
                        </tr>
                        
                        <tr>
                           <td>예약일</td>
                           <td><input type="date" class="regdate" id="regdate" name = "regdate" required ></td>
                        </tr>
                        <tr>
                           <td>시간</td>
                           <td>
                           <input type="radio" name="time" value="10:00" class ="time">10:00 
                              <input type="radio" name="time" value="12:00" class ="time">12:00 
                              <input type="radio" name="time" value="14:00" class ="time">14:00 
                              <input type="radio" name="time" value="16:00" class ="time">16:00 
                              <input type="radio" name="time" value="18:00" class ="time">18:00 
                              <input type="radio" name="time" value="20:00" class ="time">20:00
                              </td>
                        </tr>
                        <tr>
                           <td>성함</td>
                           <td><input type="text" class="inputname" id="name"
                              style="width: 220px; height: 30px;" placeholder="성함을 입력해 주세요"
                              name="name" minlength="2" maxlength="5" required></td>
                        </tr>
                        <tr>
                           <td>연락처</td>
                           <td><input type="text" class="inputtel" id="tel"
                              style="width: 350px; height: 30px;"
                              placeholder="하이픈(-)을 포함해 입력해 주세요" name="tel" minlength="13"
                              maxlength="13" required></td>
                        </tr>
                        
                        <tr>
                        <td>예약 인원</td>
                        <td><select name="peoplecount" id ="peoplecount" 
                           style="width: 220px; height: 40px;">
                           <option value="1" name="peoplecount" id="1">1명</option>
                              <option value="2" name="peoplecount" id="2">2명</option>
                              <option value="3"  name="peoplecount" id="3">3명</option>
                              <option value="4"  name="peoplecount" id="4">4명</option>
                              <option value="5"  name="peoplecount" id="5">5명</option>
                              <option value="6"  name="peoplecount" id="6">6명</option>
                        </select></td>
                        </tr>
                        <td><input type="hidden" name="userid" value= "${sessionScope.loginId}"></td>
                        <tr>
                           <td>결제 비용</td>
                           <td><input value="${reservation.THCOST}" id="total" name="total" readonly></td>
                        </tr>
                       

                     </tbody>

                  </table>
               </section>
            </div>




            <!-- 주의사항 div -->
            <div class="alertsize">
               <section class=alertsec>
                  <h1 style="font-family: GangwonEdu_OTFBoldA;">주의 사항</h1>
                  <p style="font-family: GangwonEdu_OTFBoldA;">
                     *S.o.S 방탈출의 경우, 계속된 NO-SHOW 방지를 위해 선결제 진행 하고 있습니다. <br> 1)
                     아래 '예약하기' 누르신 후, 예약이 확인 되시면 아래 계좌로 전액 계좌송금 부탁드립니다. <br>
                     계좌번호: 토스뱅크 1116-0222-0711 예소동 <br> 2) 예약후 게임 전날 오후 8시까지 입금
                     확인이 되지 않을시, 예약은 자동 취소처리 됩니다. <br> 3) 예약자 성함과 송금자 성함이 다를 시 홍대
                     본점 02-1234-5678으로 전화 부탁 드립니다. <br> 4) 카드 결제는 게임 당일 방문시
                     요구하시면, 계좌로 환불하여 드리고 카드로 재결제 가능합니다. <br> - 계좌 송금이 불가한 경우 게임
                     전날 오후 8시까지 매장으로 연락부탁드립니다. <br> 5) 환불 규정은 게임 하루 전날 취소시 전액환불,
                     당일 취소시 게임시작 2시간 전까지만 취소 및 50%환불 가능합니다. 다른 고객분들의 기회를 위해 신중한 예약
                     부탁드립니다. <br> <br> 저희는 수시로 기계 및 소품의 정상작동을 확인합니다. 게임 중간
                     예상치 못한 장치의 오작동이 있을 수 있습니다. 이 경우 최대한 빨리 대처하여, 게임 진행에 문제가 되지 않도록
                     최선을 다하겠습니다. <br> 업체의 특성상 게임 시작 후 게임 진행 자체가 불가한 경우를 제외한 환불 및
                     보상은 없다는 점 미리 숙지 이해 부탁드립니다. 감사합니다. <br>


                  </p>


               </section>
            </div>







         </div>

         <br /> <br />

         <div class="submits">
            <!--            <input type="submit" class="submit" value="이전으로" name="submit"> -->
            <input type='submit' value='예약하기' id='reservation'
               style="font-family: GangwonEdu_OTFBoldA;">

         </div>
      </form>


      <!-- Footer -->
      <footer id="footer">
         <div class="container">
            <div class="row gtr-200">
               <div class="col-12">

                  <!-- About -->



               </div>
               <div class="col-12">

                  <!-- Contact -->
                  <section>
                     <h2 class="major">
                        <span>Get in touch</span>
                     </h2>
                     <ul class="contact">
                        <li><a class="icon brands fa-facebook-f" href="#"><span
                              class="label">Facebook</span></a></li>
                        <li><a class="icon brands fa-twitter" href="#"><span
                              class="label">Twitter</span></a></li>
                        <li><a class="icon brands fa-instagram" href="#"><span
                              class="label">Instagram</span></a></li>

                     </ul>
                  </section>

               </div>
            </div>

            <!-- Copyright -->
            <div id="copyright">
               <ul class="menu">
                  <li>&copy; S.o.S escape</li>
                  <li>Design by: <a>Kosmo 1조 </a></li>
               </ul>
            </div>

         </div>
      </footer>





      <!-- login Modal -->
      <div class="modal-wrapper">
         <a class="btn-close trigger" href="#">Close</a>
         <div class="modal">
            <!--모달에 넣고싶은 내용 넣기-->



            <div class="form-structor">
               <div class="signup">
                  <h2 class="form-title" id="signup">
                     <span>or</span>Sign up
                  </h2>
                  <div class="form-holder">
                     <form method="POST" id="insert-customer" action="<%=pjName%>/customer/insertCustomer.do">

                        <input type="text" class="input" placeholder="id" name="userid">
                        <input type="text" class="input" placeholder="Name" name="name" />
                        <input type="password" class="input" placeholder="Password"
                           name="pass" /> <input type="email" class="input"
                           placeholder="Email" name="email" /> <input type="text"
                           class="input" placeholder="tel" name="tel" />

                        <!--<button class="submit-btn">OK</button> -->

                        <input type="submit" class="submit-btn" value="Submit"
                           name="submit" />
                     </form>
                  </div>
               </div>

               <div class="login slide-up">
                  <div class="center">
                     <h2 class="form-title" id="login">
                        <span>or</span>Log in
                     </h2>
                     <form method="POST" id="insert-customer"
                        action="<%=pjName%>/customer/loginCustomer.do">
                        <div class="form-holder">
                           <input type="text" class="input" placeholder="id" name="userid" />
                           <!--  ${sessionScope.loginId}-->
                           <input type="password" class="input" placeholder="Password"
                              name="pass" />
                        </div>
                        <!--  <button class="submit-btn">Log in</button>-->
                        <input type="submit" class="submit-btn" value="Log in"
                           name="login" />
                     </form>

                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>


   <!-- 모달 끝!!! -->







   <!-- Scripts -->
   <script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/jquery.dropotron.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/jquery.scrolly.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/browser.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/breakpoints.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/util.js"></script>
   <script src="<%=pjName%>/resources/assets/js/main.js"></script>
 
   <!--  
   <script
      src="<%=pjName%>/resources/https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>-->
   <!-- login  js 추가-->
   <script src="<%=pjName%>/resources/assets/js/login.js"></script>
   <!-- Scripts -->
   <script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
<%--    <script src='<%=pjName%>/resources/assets/js/reservation.js' --%>
<!--       type="text/javascript"></script> -->

   <script type="text/javascript">
      $("#reservation").click(function() { // 예약하기 버튼 클릭시 function
         
         var date = new Date(new Date().setDate(new Date().getDate()));      // 현재 시간
         var datecheck = new Date($("#regdate").val());
         var diftime = Math.floor((date.getTime() - datecheck.getTime())/(1000*60*60*24)); // 오늘 날짜 - 선택한 값 , 0>= 일경우 정상, +일경우 부적합
         
         if(diftime>0){
            alert("날짜를 똑바로 입력해주세요 ! ");            
            return false;
         }
       /* 유효성 검사 ( 시간 ) */
       var time = $("input[type=radio][name=time]:checked").val();        // 클릭한 시간
      // alert(time);
       if(time==null){
          alert("시간을 선택해주세요");
          return false;
       }
      }) // 예약하기 버튼 end
     $("#insert-reservation").submit(function(event){
        alert("예약 완료 되었습니다.")
     })
      
      
      $("#peoplecount").on("change",function(){ // 인원 수 변경시 total값 바로 변경
         
         var total = parseInt(${reservation.THCOST});
         var count = $(this).val();
        
         $("#total").val(count*total);
         
      }) // 인원수 변경 event end
      
      
      $(".time").click(function(){ // 시간 버튼 클릭시 function
         var date = new Date($("#regdate").val());   // 클릭한 달력
         var time = $(this).val();        // 클릭한 시간
         // alert(time);
         // alert(date);
         
         if(date=="Invalid Date"){
            alert("날짜를 먼저 선택해주세요.")
            return false;
         }
      }) // 시간 버튼 event end
      
   
      
   
        
   </script>



</body>
</html>s