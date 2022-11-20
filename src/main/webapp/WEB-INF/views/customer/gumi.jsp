<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<!DOCTYPE HTML>

<html>
   <head>

      <title>S.o.S escape</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <% String pjName = "/sosBoard"; %>
      
      <!-- 로그인, 모달  jquery-->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<!-- modal js -->
<script src="<%=pjName%>/resources/assets/js/modal.js"></script>

<!-- login css -->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/login.css'>

<!-- 모달  css-->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/modal.css'>
<!-- main css -->
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
     
   </head>
   <body class="is-preload">
      <div id="page-wrapper">

        <!-- Header -->
            <header id="header">
            
            </header>
            
         <!-- Nav -->
         
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
				<li><a href="../customer/theme.do">Theme</a>
					<ul>
						<li><a href="../customer/horror.do">공포</a></li>
						<li><a href="../customer/infiltration.do">잠입</a></li>
						<li><a href="../customer/comic.do">코믹</a></li>
						<li><a href="../customer/fantasy.do">판타지</a></li>
						<li><a href="../customer/emotion.do">감성</a></li>
						<li><a href="../customer/error.do">에러페이지</a></li>
					</ul></li>
				<li><a href="../qna/getQnaList.do">Q&A</a></li>
				<li><a href="../board/getBoardList.do">Board</a></li>
				<c:if test="${sessionScope.loginId==null}">
					<li><a class="btn trigger" href="../customer/login.do">Login</a></li>
				</c:if>
				<c:if test="${sessionScope.loginId!=null}">
					<li><a href="../customer/mypage.do">Mypage</a></li>
					<li><a class="btn trigger" href="logout.do">Logout</a></li>

				</c:if>



			</ul>
            </nav>

         <!-- Main -->
            <section id="main">
               <div class="container">
                  <div class="row">
                     
                        <div class="sidebar">

                           <!-- Sidebar -->

                              <!-- Recent Posts -->
                              <div id="googleMap" style="width: 70%; height: 400px; width:1000px;" ></div>

           <script>
           function myMap(){
            var mapOptions = { 
               center:new google.maps.LatLng(37.4025, 126.9222),
               zoom:18,
               
           };
       
           var map = new google.maps.Map( 
                document.getElementById("googleMap") 
               , mapOptions );
         }
      </script> 
      <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDogecLb7PjMiFZvVIeUYhUI9-Kgse6hmg&callback=myMap"></script>
                                

       <section class="m">

            <br/>
                
                <h2>주소</h2> <hr/>

             <i class="fa-solid fa-location-dot">  경상북도 구미시 구미중앙로 44 (원평동, 멀티복합상가 4층)</i><br/><br/>

          <h2>전화</h2> <hr/>

             <i class="fa-solid fa-phone"> 054‑1234-5678</i><br/><br/>



          <h2>찾아오시는 길</h2>  <hr/>
          <i class="fa-sharp fa-solid fa-person-walking">   도보: 구미역 도보 2분 거리</i><br> 
        <i class="fa-sharp fa-solid fa-bus-simple"> 버스: 구미지역 시내버스 모두 경유 </i><br/><br/>


          <h2>주차 안내</h2> <hr/>
          <i class="fa-solid fa-square-parking">  지하/지상/타워주차장에 주차 가능</i> <br/>
         <h1>건물주차장 하나의 입구에 지하주차장, 타워주차장 두 곳에 주차 가능 <br/>
       
          건물 뒷편 제 2주차장(무료) <br/>
          요금 : 영화 관람 시 3시간 무료(내부 주차장) <br/>
          건물주차장이 만차가 된 경우 제 2주차장으로 안내를 하며, 건물주차장 입구에 현수막으로 제2 주차장 안내 현수막 게재</h1>  <br/>
    
          
          
         </section>

                           
                        </div>
                     </div>
                     
                    




                     <div class="col-12">

                        <!-- Features -->
                           <section class="box features">
                              
                              <div>
                                 <div class="row">
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                       

                                    </div>
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                       

                                    </div>
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                       
                                    </div>
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                       

                                    </div>
                                    <div class="col-12">
                                       
                                    </div>
                                 </div>
                              </div>
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
                          

                     </div>
                  </div>

                  <!-- Copyright -->
                     <div id="copyright">
                      

                     </div>

               </div>
            </footer>

      </div>

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