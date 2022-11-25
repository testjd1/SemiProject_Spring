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
<title id='logo'>S.o.S escape</title>
<% String pjName = "/sosBoard"; %>
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
<link rel="stylesheet" href="<%=pjName%>/resources/assets/css/theme.css" />
<!-- Favicon -->
<link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'>

<!-- login css -->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/login.css'>

<!-- 모달  css-->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/modal.css'>

<!-- 로그인, 모달  jquery-->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<!-- modal js -->
<script src="<%=pjName%>/resources/assets/js/modal.js"></script>

      <style>
   ul{
         list-style:none;
      }      
      </style>

</head>
<body>

  <!-- Header -->
      <header id="header"> </header>

      <!-- Nav -->

      <nav id="nav">
         <div id="navImage">
            <a href="../customer/index.do"><img
               src="<%=pjName%>/resources/images/logo2.png" height="138px"></a>
         </div>

         <ul>
            <li><a href="../customer/index.do">Home</a></li>

            <li><a href="../customer/story.do">Story</a></li>
            <li><a href="../customer/location.do">Location</a>
               <ul>
                  <li><a href="../customer/hongdae.do">홍대</a></li>
                  <li><a href="../customer/anyang.do">안양</a></li>
                  <li><a href="../customer/gumi.do">구미</a></li>
               </ul></li>
           <li class="current"><a href="../theme/theme.do">Theme</a>
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
					<li><a href="../reservation/mypage.do?userid=${sessionScope.loginId}">Mypage</a></li>
					<li><a class="btn" href="../customer/logout.do">Logout</a></li>

				</c:if>



            
            
         </ul>
      </nav>





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
                     <form method="POST" id="insert-customer"
                        action="<%=pjName%>/customer/insertCustomer.do">

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



      <!-- 모달 끝!!! -->

<div class="container">
<div class="tedoori" id="tedoori">
   <!-- 테마 설명 -->
   <div style="text-align : center;">
         <img src="<%=pjName%>/resources/images/${theme.picture}" width="300" height="400" >
   <br/><br/>
   
   <h3 class="title" style="font-family: GangwonEdu_OTFBoldA;">${theme.themename}</h3>
   
      <div class="neayong" style="font-family: GangwonEdu_OTFBoldA;">
         <ul>
            <li><span>장르 :</span>${theme.themegenre}</li>
            <li><span>플레이시간 :</span>${theme.runtime}분</li>
            <li><span>난이도 :</span> ${theme.thlevel}</li>
            <li><span>가격 :</span>${theme.thcost}원 ( 1인당 )</li>
            <li><span>권장 인원 :</span>${theme.peoplecount}명</li>
            <li><span>이용 지역 :</span>${theme.branch}</li>
            <li><span>설명 :</span>${theme.content}</li>
            <li><a href = "../reservation/reservation.do?picture=${theme.picture}" style="font-family: GangwonEdu_OTFBoldA;" id="reservationgo">예약</a></li>
            <li><a href="../theme/theme.do" style="font-family: GangwonEdu_OTFBoldA;" id="reservationgo">전체 테마로 이동</a></li>
         </ul>
       </div>

   </div><!-- center -->
   

   
</div>

</div>
    <!-- Scripts -->
    <script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
    <script type="text/javascript">
      $("#reservationgo").click(function() {
         var k = "<%=session.getAttribute("loginId")%>" 
         if(k!="null"){
            alert(k +"님 예약 페이지로 이동하겠습니다.")
         }
         if(k=="null"){
            alert("로그인 후 이용가능 합니다.")
            return false;
         }
         
   
      })
   </script>   
   
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
      <!-- login  js 추가-->
      <script src="<%=pjName%>/resources/assets/js/login.js"></script>


</body>
</html>