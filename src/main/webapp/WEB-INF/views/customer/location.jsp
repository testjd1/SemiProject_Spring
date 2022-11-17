<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE HTML>
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>S.o.S escape</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
   <% String pjName = "/sosBoard"; %>
   <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
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
                     <div class="col-3 col-12-medium">
                        <div class="sidebar">

                           <!-- Sidebar -->

                              <!-- Recent Posts -->
                                 <section>
                                    <h2 class="major"><span>지점 소개</span></h2>
                                    <ul class="divided">
                                       <li>
                                          <article class="box post-summary">
                                             <h3><a href="hongdae.do">홍대 본점</a></h3>
                                             <ul class="meta">
                                                <i class="fa-solid fa-location-dot"> HONGDAE</i>
                                                
                                             </ul>
                                          </article>
                                       </li>
                                       <li>
                                          <article class="box post-summary">
                                             <h3><a href="anyang.do">안양점</a></h3>
                                             <ul class="meta">
                                                <i class="fa-solid fa-location-dot"> ANYANG</i>
                                                
                                             </ul>
                                          </article>
                                       </li>
                                       <li>
                                          <article class="box post-summary">
                                             <h3><a href="gumi.do">구미점</a></h3>
                                             <ul class="meta">
                                                <i class="fa-solid fa-location-dot"> GUMI</i>
                                              
                                             </ul>
                                          </article>
                                       </li>
                                    </ul>
                                 
                                 </section>
                                

                           
                        </div>
                     </div>
                     <div class="col-9 col-12-medium imp-medium">
                        
                    
                     <img src="<%=pjName%>/resources/images/locationmain.png">


                     </div>

                        </div>
                     </div>
   



                     <div class="col-12">

                        <!-- Features -->
                           <section class="box features">
                          
                                       

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
                           <section>
                              <h2 class="major"><span>What's this about?</span></h2>
                              <p>
                                 This is <strong>TXT</strong>, yet another free responsive site template designed by
                                 <a href="http://twitter.com/ajlkn">AJ</a> for <a href="http://html5up.net">HTML5 UP</a>. It's released under the
                                 <a href="http://html5up.net/license/">Creative Commons Attribution</a> license so feel free to use it for
                                 whatever you're working on (personal or commercial), just be sure to give us credit for the design.
                                 That's basically it :)
                              </p>
                           </section>

                     </div>
                     <div class="col-12">

                        <!-- Contact -->
                           <section>
                              <h2 class="major"><span>Get in touch</span></h2>
                              <ul class="contact">
                                 <li><a class="icon brands fa-facebook-f" href="#"><span class="label">Facebook</span></a></li>
                                 <li><a class="icon brands fa-twitter" href="#"><span class="label">Twitter</span></a></li>
                                 <li><a class="icon brands fa-instagram" href="#"><span class="label">Instagram</span></a></li>
                                 <li><a class="icon brands fa-dribbble" href="#"><span class="label">Dribbble</span></a></li>
                                 <li><a class="icon brands fa-linkedin-in" href="#"><span class="label">LinkedIn</span></a></li>
                              </ul>
                           </section>

                     </div>
                  </div>

                  <!-- Copyright -->
                     <div id="copyright">
                        <ul class="menu">
                           <li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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
   </body>
</html>
