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

             <i class="fa-solid fa-location-dot">  서울특별시 마포구 양화로 153 (동교동) 2층</i><br/><br/>

          <h2>전화</h2> <hr/>

             <i class="fa-solid fa-phone"> 02-1234-5678</i><br/><br/>



          <h2>찾아오시는 길</h2>  <hr/>
      
         <i class="fa-solid fa-train-subway"> 지하철: 2호선 | 홍대입구역 1번 출구 연결 </i><br/>
         <i class="fa-sharp fa-solid fa-bus-simple"> 버스: [홍대입구역 정류장(2번 출구), 합정역 가는 방향] <br/><br/>
         - 간선버스(파랑): N26, N62, 271, 273, 602, 603, 604 <br/>
         - 지선버스(초록): 7016, 7711, 7737, 5712, 5714, 6712, 6716, 7612, 7739 <br/>
         - 광역버스(주황): 1000, 1100, 1101, 1200, 1300, 1301, 1400, 1500, 1601, M6117, M6118, M6724 <br/>
         - 공항버스(하늘): 6002 <br/><br/>
         
         [홍대입구역 정류장(8번 출구), 신촌역 가는 방향] <br/><br/>
         - 간선버스(파랑): N26, N62, 271, 273, 602, 603, 604 <br/>
         - 지선버스(초록): 7711, 5712, 5714, 6712, 6716, 7016, 7612, 7737, 7739 <br/>
         - 광역버스(주황): 1300, 1400, 1500, 1601, 1000, 1100, 1101, 1200, 1301, M6117, M6118, M6724 <br/>
         - 공항버스(하늘): 6002 <br/><br/>
         
         [청기와 주유소 정류장(1번 출구)] <br/><br/>
         - 지선버스(초록): 7016, 7711, 7737 <br/>
         - 마을버스(초록): 마포06, 마포09</i> <br/><br/>

          <h2>주차 안내</h2> <hr/>
          <i class="fa-solid fa-square-parking"> 홍대점은 인근 일대가 교통이 혼잡하여 주차장을 운영하지 않으니 양해 부탁 드립니다.</i> <br/>
          <h1>건물 내 주차장이 없으니 주차장 이용 시 인근 주차장 이용 부탁 드립니다.</h1> <br/>
           
          

          
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