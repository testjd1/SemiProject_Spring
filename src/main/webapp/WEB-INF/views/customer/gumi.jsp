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
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
     
   </head>
   <body class="is-preload">
      <div id="page-wrapper">

        <!-- Header -->
            <header id="header">
            
            </header>
            
         <!-- Nav -->
         
            <nav id="nav">
               <div id="navImage">
                  <a href="index.do"><img src="<%=pjName%>/resources/images/logo2.png" height="138px"></a>
               </div>
                              
               <ul>
                  <li class="current"><a href="index.do">Home</a></li>
                  
                  <li><a href="story.do">Story</a></li>
                  <li><a href="location.do">Location</a>
                     <ul>
                        <li><a href="hongdae.do">홍대</a></li>
                        <li><a href="anyang.do">안양</a></li>
                        <li><a href="gumi.do">구미</a></li>
                     </ul>
                  
                  
                  </li>
                  <li><a href="theme.do">Theme</a>
                     <ul>
                        <li><a href="theme.do">공포</a></li>
                        <li><a href="infiltration.do">잠입</a></li>
                        <li><a href="comic.do">코믹</a></li>
                        <li><a href="fantasy.do">판타지</a></li>
                        <li><a href="emotion.do">감성</a></li>
                        <li><a href="error.do">에러페이지</a></li>
                     </ul>
                  </li>
                  <li><a href="qna.do">Q&A</a></li>
                  <li><a href="board.do">Board</a></li>
                  <li><a href="mypage.do">Mypage</a></li>
                  <li><a href="login.do">Login</a></li>
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

      <!-- Scripts -->
      <script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/jquery.dropotron.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/jquery.scrolly.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/browser.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/breakpoints.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/util.js"></script>
         <script src="<%=pjName%>/resources/assets/js/main.js"></script>


   </body>
</html>