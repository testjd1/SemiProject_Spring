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
<title>S.o.S escape</title>




<% String pjName = "/sosBoard"; %>


<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
<!-- <link rel ="stylesheet" href='resources/css/test.css'> -->

<!-- login css -->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/login.css'>

<!-- 모달  css-->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/modal.css'>



<!-- bxSlider -->

<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

<!-- Favicon -->
<link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'>





<!-- 로그인, 모달  jquery-->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<!-- modal js -->
<script src="<%=pjName%>/resources/assets/js/modal.js"></script>


<!-- 로그인 script -->

<script>
 
   var t = '${sok}';
   if (t == '1') {
      alert('회원 가입이 완료되었습니다! 로그인창을 통해 로그인해주세요');
   } else if (t == '9') {
      alert('중복된 아이디입니다. 다른 아이디를 입력해주세요!')
   } else if (t == '5') {
      alert('로그인 오류! 다시 입력해주세요')
   }
      
</script>




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
               <li><a id="gologin" class="btn trigger" href="../customer/login.do">Login</a></li>
            </c:if>
            <c:if test="${sessionScope.loginId!=null}">
               <li><a href="../customer/mypage.do">Mypage</a></li>
               <li><a class="btn" href="../customer/logout.do">Logout</a></li>
               
            </c:if>

            
            
         </ul>





      </nav>


      <div class="container">

         <ul class="slider">
            <li><img src="<%=pjName%>/resources/images/banner1.png" alt=""
               title=""></li>
            <li><img src="<%=pjName%>/resources/images/banner2.png" alt=""
               title=""></li>
            <li><img src="<%=pjName%>/resources/images/banner3.png" alt=""
               title=""></li>
            <li><img src="<%=pjName%>/resources/images/banner4.png" alt=""
               title=""></li>


         </ul>
      </div>



      <!-- login Modal -->
      <div class="modal-wrapper"  >
         <a  id="close" class="btn-close trigger" href="#">Close</a>
         <div class="modal">
            <!--모달에 넣고싶은 내용 넣기-->



         <div class="form-structor">
      <div class="signup">
         <h2 class="form-title" id="signup">
            <span>or</span>Sign up
         </h2>
         <div class="form-holder">
            <form method="POST" id="insert-customer" action="insertCustomer.do">

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
            <form method="POST" id="insert-customer" action="loginCustomer.do">
               <div class="form-holder">
                  <input type="text" class="input" placeholder="id" name="userid" />
                  <!--  ${sessionScope.loginId}-->
                  <input type="password" class="input" placeholder="Password"
                     name="pass" />
               </div>
               <!--  <button class="submit-btn">Log in</button>-->
               <input type="submit" class="submit-btn" value="Log in" name="login" />
            </form>

         </div>
      </div>
   </div>
         </div>
      </div>



      <!-- 모달 끝!!! -->
       





      <!-- Main -->
      <section id="main">
         <div class="container">

            <div class="row gtr-200">

               <div class="col-12">
                  <!-- Blog -->
                  <section class="box blog">
                     <h2 class="major">
                        <span style="font-family: GangwonEdu_OTFBoldA;">What about S.o.S?</span>
                     </h2>
                     <div>
                        <div class="row">
                           <div class="col-12-medium">
                              <div class="content">
                                 <div class="container">
                                    <!-- Featured Post -->
                                    <article class="box post">
                                       <header>
                                          <h3 style="font-family: GangwonEdu_OTFBoldA;">
                                             <a >ABOUT S.o.S</a>
                                          </h3>
                                          <p style="font-family: GangwonEdu_OTFBoldA;">"준비에 관계
                                             없이, 열망을 실현하기 위한 명확한 계획을 세우고 즉시 착수하여 그 계획을 실행에 옮겨라."</p>

                                       </header>
                                       <a class="image featured"><img
                                          src="<%=pjName%>/resources/images/pado.png" height="600" /></a>
                                       <p style="font-family: GangwonEdu_OTFBoldA;">Story설명설명</p>
                                       <a href="story.do" class="button">Story</a>
                                    </article>
                                 </div>
                              </div>
                           </div>

                        </div>
                     </div>
                  </section>

               </div>

               <div class="col-12">


                  <section class="box features">
                     <h2 class="major">
                        <span style="font-family: GangwonEdu_OTFBoldA;">연속된 이야기를 함께 즐겨보세요!</span>
                     </h2>
                     <div>
                        <div class="row">
                           <div class="col-3 col-6-medium col-12-small">

                              <!-- Feature -->
                              <section class="box feature">
                                 <p id="bx-text"  style="font-family: GangwonEdu_OTFBoldA;">
                                    난이도 : ★★★ </br> 장르 : Emotion</br> 시간 : 60m
                                 </p>
                                 <a class="image featured"><img
                                    src="<%=pjName%>/resources/images/emotion_1.jpg" alt="" /></a>


                                 <h3 style="font-family: GangwonEdu_OTFBoldA;">
                                    <a>[Ep1] Memory Company </a>
                                 </h3>
                                 <p style="font-family: GangwonEdu_OTFBoldA;">Ep1 : 메모리 컴퍼니의 시작</p>
                              </section>

                           </div>
                           <div class="col-3 col-6-medium col-12-small">

                              <!-- Feature -->
                              <section class="box feature">
                                 <p id="bx-text"  style="font-family: GangwonEdu_OTFBoldA;">
                                    난이도 : ★★★☆ </br> 장르 : Emotion</br> 시간 : 60m
                                 </p>
                                 <a class="image featured"><img
                                    src="<%=pjName%>/resources/images/emotion_2.jpg" alt="" /></a>

                                 <h3 style="font-family: GangwonEdu_OTFBoldA;">
                                    <a>[Ep2] Film By Steve</a>
                                 </h3>
                                 <p style="font-family: GangwonEdu_OTFBoldA;">Ep2 : 스티브의 한마디</p>
                              </section>

                           </div>
                           <div class="col-3 col-6-medium col-12-small">

                              <!-- Feature -->
                              <section class="box feature"  style="font-family: GangwonEdu_OTFBoldA;">
                                 <p id="bx-text"  style="font-family: GangwonEdu_OTFBoldA;">
                                    난이도 : ★★★★☆ </br> 장르 : Emotion</br> 시간 : 65m
                                 </p>
                                 <a class="image featured"><img
                                    src="<%=pjName%>/resources/images/emotion_3.jpg" alt="" /></a>
                                 <h3 style="font-family: GangwonEdu_OTFBoldA;">
                                    <a>[Ep3] Film By Eddy</a>
                                 </h3>
                                 <p style="font-family: GangwonEdu_OTFBoldA;">Ep3 : 에디의 한마디</p>
                              </section>

                           </div>
                           <div class="col-3 col-6-medium col-12-small">

                              <!-- Feature -->
                              <section class="box feature"  style="font-family: GangwonEdu_OTFBoldA;">
                                 <p id="bx-text" >
                                    난이도 : ★★★☆ </br> 장르 : Emotion</br> 시간 : 60m
                                 </p>
                                 <a class="image featured"><img
                                    src="<%=pjName%>/resources/images/emotion_4.jpg" alt="" /></a>
                                 <h3 style="font-family: GangwonEdu_OTFBoldA;">
                                    <a>[Ep4] Film By Bob</a>
                                 </h3>
                                 <p style="font-family: GangwonEdu_OTFBoldA;">Ep4 : 밥의 한마디</p>
                              </section>

                           </div>
                           <div class="col-12">
                              <ul class="actions">
                                 <li><a href="../theme/theme.do" class="button large">Theme</a></li>
                                 <!--<li><a href="location/location.html" class="button alt large">Where</a></li>-->
                              </ul>
                           </div>
                        </div>
                     </div>
                  </section>

               </div>
               <div class="col-12">

                  <!-- Highlight -->
                  <section class="box highlight">
                     <ul class="special">
                        <li><img src="<%=pjName%>/resources/images/notice1.png"
                           alt="time" /><br />
                        <p style="font-family: GangwonEdu_OTFBoldA;">
                              원활한 게임을 위해<br /> 예약시간 10분 전에 도착하여<br /> 사전안내를 받으셔야합니다.
                           </p></li>
                        <li><img src="<%=pjName%>/resources/images/notice2.png"
                           alt="talk" /><br />
                        <p style="font-family: GangwonEdu_OTFBoldA;">
                              아직 체험하지 않은<br /> 분들을 위해 문제공유는<br /> 삼가 해주시기 바랍니다.
                           </p></li>
                        <li><img src="<%=pjName%>/resources/images/notice3.png"
                           alt="picture" /><br />
                        <p style="font-family: GangwonEdu_OTFBoldA;">
                              컨텐츠 보호를 위해<br /> 촬영을 금지합니다. 입장 전<br /> 소지품을 보관함에 보관해주세요.
                           </p></li>
                        <li><img src="<%=pjName%>/resources/images/notice4.png"
                           alt="knife" /><br />
                        <p style="font-family: GangwonEdu_OTFBoldA;">
                              고객님의 안전을 위해<br /> 라이터, 칼 등 위험물품은<br /> 반입이 금지됩니다.
                           </p>
                     </ul>




                  </section>
               </div>

            </div>
         </div>
      </section>

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

   </div>

   <!-- Scripts -->
   <script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/jquery.dropotron.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/jquery.scrolly.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/browser.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/breakpoints.min.js"></script>
   <script src="<%=pjName%>/resources/assets/js/util.js"></script>
   <script src="<%=pjName%>/resources/assets/js/main.js"></script>
   <script
      src="<%=pjName%>/resources/https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script
      src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
   <!-- login  js 추가-->
   <script src="<%=pjName%>/resources/assets/js/login.js"></script>

   <script>
         $( document ).ready( function() {
           $( '.slider' ).bxSlider( {
         
            auto: true,  //자동넘어감
            controls : true,//좌우 화살표
            autoControls: true,   //stop,play 
            
            pause: 5000,
            speed: 500, 
            autoDelay: 0,
            stopAutoOnclick:true,
            slideWidth: 2000, //이미지 박스 크기설정 
            
            autoHover: true,
            minSlides: 1,
            maxSlides: 1,
            margin: 0 
         
           } );
         } );
        </script>


  
</body>

</html>