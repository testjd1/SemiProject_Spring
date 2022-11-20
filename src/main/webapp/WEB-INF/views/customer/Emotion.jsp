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
<!--  select icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<% String pjName = "/sosBoard"; %>
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
<link rel="stylesheet" href="<%=pjName%>/resources/assets/css/theme.css" />
<!-- <link rel ="stylesheet" href='resources/css/test.css'> -->


<!-- bxSlider -->

<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


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
            <li><a href="../customer/theme.do">Theme</a>
               <ul>
                  <li><a href="../customer/theme.do">공포</a></li>
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
                        action="insertCustomer.do">

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
                        action="loginCustomer.do">
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

      <section id="main">
         <div class="container">
         <!-- select start -->
            
            <select onchange="if(this.value) location.href=(this.value);">
            <option value= "theme.do" >전체 (All)  </option>
            <option value ="horror.do">공포 (Horror)</option>
            <option value ="infiltration.do">잠입 (Infiltration)</option>
            <option value ="comic.do">코믹 (Comic)</option>
            <option value ="fantasy.do">판타지 (Fantasy)</option>
            <option value ="emotion.do" selected>감성 (Emotion)</option>
            </select><i class="fa-sharp fa-solid fa-caret-down"></i>
         <!-- select   finish -->
            <!-- 테마 이미지 Section-->
            <section class="py-5">
               <div class="container px-4 px-lg-5 mt-5">
                  <div class="row gx-3 gx-lg-3 row-cols-2 row-cols-md-3 row-cols-xl-3 justify-content-center">
                  <!-- cart start -->
                     <div class="col mb-2">
                        <div class="card h-100">
                           <!-- 테마 image-->
                           <img class="card-img-top"
                              src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                              alt="..." />
                           <!-- 테마 details-->
                           <div class="card-body p-5">
                              <div class="text-center">
                                 <!-- 테마 name-->
                                 <h5 class="fw-bolder"
                                    style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마
                                    이름</h5>
                                 <!-- 테마 난이도-->
                                 ★★★★★
                              </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-5 pt-0 border-top-0 bg-transparent">
                              <div class="text-center">
                                 <a class="btn btn-outline-dark mt-auto" onclick="openPop()">View
                                    options</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- card end -->
                     
                     <!-- cart start -->
                     <div class="col mb-2">
                        <div class="card h-100">
                           <!-- 테마 image-->
                           <img class="card-img-top"
                              src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                              alt="..." />
                           <!-- 테마 details-->
                           <div class="card-body p-5">
                              <div class="text-center">
                                 <!-- 테마 name-->
                                 <h5 class="fw-bolder"
                                    style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마
                                    이름</h5>
                                 <!-- 테마 난이도-->
                                 ★★★★★
                              </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-5 pt-0 border-top-0 bg-transparent">
                              <div class="text-center">
                                 <a class="btn btn-outline-dark mt-auto" onclick="openPop()">View
                                    options</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- card end -->
                     
                     <!-- cart start -->
                     <div class="col mb-2">
                        <div class="card h-100">
                           <!-- 테마 image-->
                           <img class="card-img-top"
                              src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                              alt="..." />
                           <!-- 테마 details-->
                           <div class="card-body p-5">
                              <div class="text-center">
                                 <!-- 테마 name-->
                                 <h5 class="fw-bolder"
                                    style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마
                                    이름</h5>
                                 <!-- 테마 난이도-->
                                 ★★★★★
                              </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-5 pt-0 border-top-0 bg-transparent">
                              <div class="text-center">
                                 <a class="btn btn-outline-dark mt-auto" onclick="openPop()">View
                                    options</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- card end -->
                     
                     <!-- cart start -->
                     <div class="col mb-2">
                        <div class="card h-100">
                           <!-- 테마 image-->
                           <img class="card-img-top"
                              src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                              alt="..." />
                           <!-- 테마 details-->
                           <div class="card-body p-5">
                              <div class="text-center">
                                 <!-- 테마 name-->
                                 <h5 class="fw-bolder"
                                    style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마
                                    이름</h5>
                                 <!-- 테마 난이도-->
                                 ★★★★★
                              </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-5 pt-0 border-top-0 bg-transparent">
                              <div class="text-center">
                                 <a class="btn btn-outline-dark mt-auto" onclick="openPop()">View
                                    options</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- card end -->
                     
                     <!-- cart start -->
                     <div class="col mb-2">
                        <div class="card h-100">
                           <!-- 테마 image-->
                           <img class="card-img-top"
                              src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                              alt="..." />
                           <!-- 테마 details-->
                           <div class="card-body p-5">
                              <div class="text-center">
                                 <!-- 테마 name-->
                                 <h5 class="fw-bolder"
                                    style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마
                                    이름</h5>
                                 <!-- 테마 난이도-->
                                 ★★★★★
                              </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-5 pt-0 border-top-0 bg-transparent">
                              <div class="text-center">
                                 <a class="btn btn-outline-dark mt-auto" onclick="openPop()">View
                                    options</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- card end -->
                     
                     <!-- cart start -->
                     <div class="col mb-2">
                        <div class="card h-100">
                           <!-- 테마 image-->
                           <img class="card-img-top"
                              src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                              alt="..." />
                           <!-- 테마 details-->
                           <div class="card-body p-5">
                              <div class="text-center">
                                 <!-- 테마 name-->
                                 <h5 class="fw-bolder"
                                    style="font-family: GangwonEdu_OTFBoldA;">DB에서 땡겨올 테마
                                    이름</h5>
                                 <!-- 테마 난이도-->
                                 ★★★★★
                              </div>
                           </div>
                           <!-- Product actions-->
                           <div class="card-footer p-5 pt-0 border-top-0 bg-transparent">
                              <div class="text-center">
                                 <a class="btn btn-outline-dark mt-auto" onclick="openPop()">View
                                    options</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- card end -->
            
                     
                     
                     
                  </div>
               </div>
            </section>
            
            
         </div>
      </section>

      <!-- Footer -->
      <footer id="footer">
         <div class="container">
            <div class="row gtr-200">

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
                        <li><a class="icon brands fa-dribbble" href="#"><span
                              class="label">Dribbble</span></a></li>
                        <li><a class="icon brands fa-linkedin-in" href="#"><span
                              class="label">LinkedIn</span></a></li>
                     </ul>
                  </section>

               </div>
            </div>

            <!-- Copyright -->
            <div id="copyright">
               <ul class="menu">
                  <li>&copy; Untitled. All rights reserved</li>
                  <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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


      <script type="text/javascript">
             function openPop(){
              var popup = window.open('theme_sangse.do', '테마_상세보기', 'width=600px,height=700px,scrollbars=yes');
              }
         </script>
</body>
</html>