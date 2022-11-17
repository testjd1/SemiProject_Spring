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
             <i class="fa-solid fa-location-dot">  경기 안양시 만안구 안양동 88-1 엔터식스 7층</i><br/><br/>

          <h2>전화</h2> <hr/>

             <i class="fa-solid fa-phone"> 031-1234-5678</i><br/><br/>



          <h2>찾아오시는 길</h2>  <hr/>
          <i class="fa-solid fa-train-subway">  지하철: 1호선 | 안양역 1번 출구 연결 </i><br/>
          <i class="fa-sharp fa-solid fa-bus-simple"> 버스: [안양역 앞] <br/>
            1, 2, 3, 3-1, 6, 9, 15-1, 52, 83, 303, 333, 1303, 1650, 3330 <br/><br/>
             [안양역 건너편] <br/>
            2, 6-3, 11, 12, 55, 81 <br/><br/>
             [안양역 뒷편] <br/>
            5-1 <br/><br/>
             [안양역 시외버스터미널] <br/>
            4200-1</i><br/><br/>
      

          <h2>주차 안내</h2> <hr/>
          <i class="fa-solid fa-square-parking"> [주차요금 안내]</i><br/>
           <h1> 주차 할인권 등록 시 당일 최대 3시간 무료 <br/>
            (기본요금 최초 30분 1,500원 / 초과 시 30분당 1,500원)</h1> 
          <h1> [주차 정산]<br/> 무인정산기 활용 사전 정산<br/><br/>
            [무인정산기 위치] <br/>주차장 (2층, M3층, 3층, 4층) <br/>
          </h1>
          
          
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