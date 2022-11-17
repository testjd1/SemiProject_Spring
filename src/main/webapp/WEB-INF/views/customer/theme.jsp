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
         /*
         마포꽃섬
         */
         @font-face {
         font-family: 'MapoFlowerIsland';
         src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoFlowerIslandA.woff') format('woff');
         font-weight: normal;
         font-style: normal;
         }
         
      </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>S.o.S escape</title>

<% String pjName = "/sosBoard"; %>
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
<link rel="stylesheet" href="<%=pjName%>/resources/assets/css/theme.css" />
<!-- <link rel ="stylesheet" href='resources/css/test.css'> -->


      <!-- bxSlider -->
      
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


       <!-- Favicon -->
        <link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'> 




</head>
   <body class="homepage is-preload">
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
                                    <h2 class="major"><span>Recent Posts</span></h2>
                                    <ul class="divided">
                                       <li>
                                          <article class="box post-summary">
                                             <h3><a href="#">A Subheading</a></h3>
                                             <ul class="meta">
                                                <li class="icon fa-clock">6 hours ago</li>
                                                <li class="icon fa-comments"><a href="#">34</a></li>
                                             </ul>
                                          </article>
                                       </li>
                                       <li>
                                          <article class="box post-summary">
                                             <h3><a href="#">Another Subheading</a></h3>
                                             <ul class="meta">
                                                <li class="icon fa-clock">9 hours ago</li>
                                                <li class="icon fa-comments"><a href="#">27</a></li>
                                             </ul>
                                          </article>
                                       </li>
                                       <li>
                                          <article class="box post-summary">
                                             <h3><a href="#">And Another</a></h3>
                                             <ul class="meta">
                                                <li class="icon fa-clock">Yesterday</li>
                                                <li class="icon fa-comments"><a href="#">184</a></li>
                                             </ul>
                                          </article>
                                       </li>
                                    </ul>
                                    <a href="#" class="button alt">Archives</a>
                                 </section>


                        </div>
                     </div>
                     <div class="col-9 col-12-medium imp-medium">
                        <div class="content">

                           <!-- Content -->

                              <article class="box page-content">

                                 <header>
                                    <h2>Left Sidebar</h2>
                                    <p>Semper amet scelerisque metus faucibus morbi congue mattis</p>
                                    <ul class="meta">
                                       <li class="icon fa-clock">5 days ago</li>
                                       <li class="icon fa-comments"><a href="#">1,024</a></li>
                                    </ul>
                                 </header>

       <!-- 테마 이미지 Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                     <!-- Sale badge-->
                     <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- 테마 image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- 테마 details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- 테마 name-->
                                    <h5 class="fw-bolder" style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마 이름</h5>
                                    <!-- 테마 난이도-->
                                    ★★★★★
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick="openPop()">View options</a></div>
                            </div>
                        </div>
                    </div>
               <div class="col mb-5">
                        <div class="card h-100">
                     <!-- Sale badge-->
                     <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- 테마 image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- 테마 details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- 테마 name-->
                                    <h5 class="fw-bolder" style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마 이름</h5>
                                    <!-- 테마 난이도-->
                                    ★★★★★
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick="openPop()">View options</a></div>
                            </div>
                        </div>
                    </div>
               <div class="col mb-5">
                        <div class="card h-100">
                     <!-- Sale badge-->
                     <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- 테마 image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- 테마 details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- 테마 name-->
                                    <h5 class="fw-bolder" style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마 이름</h5>
                                    <!-- 테마 난이도-->
                                    ★★★★★
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick="openPop()">View options</a></div>
                            </div>
                        </div>
                    </div>
               <div class="col mb-5">
                        <div class="card h-100">
                     <!-- Sale badge-->
                     <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- 테마 image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- 테마 details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- 테마 name-->
                                    <h5 class="fw-bolder" style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마 이름</h5>
                                    <!-- 테마 난이도-->
                                    ★★★★★
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick="openPop()">View options</a></div>
                            </div>
                        </div>
                    </div>



               
                </div>
            </div>
        </section>

                              </article>

                        </div>
                     </div>
                     <div class="col-12">

                        <!-- Features -->
                           <section class="box features">
                              <h2 class="major"><span>A Major Heading</span></h2>
                              <div>
                                 <div class="row">
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                          <section class="box feature">
                                             <a href="#" class="image featured"><img src="<%=pjName%>/resources/images/emotion_1.PNG" alt="" /></a>
                                             <h3><a href="#">A Subheading</a></h3>
                                             <p>
                                                Phasellus quam turpis, feugiat sit amet ornare in, a hendrerit in
                                                lectus dolore. Praesent semper mod quis eget sed etiam eu ante risus.
                                             </p>
                                          </section>

                                    </div>
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                          <section class="box feature">
                                             <a href="#" class="image featured"><img src="<%=pjName%>/resources/images/emotion_2.png" alt="" /></a>
                                             <h3><a href="#">Another Subheading</a></h3>
                                             <p>
                                                Phasellus quam turpis, feugiat sit amet ornare in, a hendrerit in
                                                lectus dolore. Praesent semper mod quis eget sed etiam eu ante risus.
                                             </p>
                                          </section>

                                    </div>
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                          <section class="box feature">
                                             <a href="#" class="image featured"><img src="<%=pjName%>/resources/images/emotion_3.png" alt="" /></a>
                                             <h3><a href="#">And Another</a></h3>
                                             <p>
                                                Phasellus quam turpis, feugiat sit amet ornare in, a hendrerit in
                                                lectus dolore. Praesent semper mod quis eget sed etiam eu ante risus.
                                             </p>
                                          </section>

                                    </div>
                                    <div class="col-3 col-6-medium col-12-small">

                                       <!-- Feature -->
                                          <section class="box feature">
                                             <a href="#" class="image featured"><img src="<%=pjName%>/resources/images/emotion_4.png" alt="" /></a>
                                             <h3><a href="#">And One More</a></h3>
                                             <p>
                                                Phasellus quam turpis, feugiat sit amet ornare in, a hendrerit in
                                                lectus dolore. Praesent semper mod quis eget sed etiam eu ante risus.
                                             </p>
                                          </section>

                                    </div>
                                    <div class="col-12">
                                       <ul class="actions">
                                          <li><a href="#" class="button large">Do Something</a></li>
                                          <li><a href="#" class="button alt large">Think About It</a></li>
                                       </ul>
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
         <script src="<%=pjName%>/resources/https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script type="text/javascript">
             function openPop(){
              var popup = window.open('theme_sangse.do', '테마_상세보기', 'width=600px,height=700px,scrollbars=yes');
              }
         </script>

   </body>
</html>