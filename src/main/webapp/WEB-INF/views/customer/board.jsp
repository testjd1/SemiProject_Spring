<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML>
<!--
   TXT by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
      <title>BOARD</title>
      <% String pjName = "/sosBoard"; %>
   <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css' />
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/qna.css' />
       
       <!-- Favicon -->
        <link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'> 
   </head>
   <body class="is-preload">
      <div id="page-wrapper">

         

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
         <header>
            <br/>
            <br/>
            <br/>
            <br/>
            
         </header>   
         <!-- Main -->
         <section class="notice">
            <div class="page-title">
                 <div class="container">
                    <h3>BOARD</h3>
                 </div>
              </div>
           
              <!-- board seach area -->
              <div id="board-search">
                 <div class="container">
                    <div class="search-window">
                       <form action="">
                          <div class="search-wrap">
                             <label for="search" class="blind">공지사항 내용 검색</label>
                             <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
                             <button type="submit" class="btn btn-dark">검색</button>
                          </div>
                       </form>
                    </div>
                 </div>
              </div>
             
            <!-- board list area -->
              <div id="board-list">
                 <div class="container">
                    <table class="board-table">
                       <thead>
                       <tr>
                          <th scope="col" class="th-num">번호</th>
                          <th scope="col" class="th-title">제목</th>
                          <th scope="col" class="th-date">등록일</th>
                       </tr>
                       </thead>
                       <tbody>
                       <tr>
                          <td>3</td>
                          <th>
                           <a href="#!">[공지사항] 개인정보 처리방침 변경안내처리방침</a>
                           <p>테스트</p>
                          </th>
                          <td>2017.07.13</td>
                       </tr>
           
                       <tr>
                          <td>2</td>
                          <th><a href="#!">공지사항 안내입니다. 이용해주셔서 감사합니다</a></th>
                          <td>2017.06.15</td>
                       </tr>
           
                       <tr>
                          <td>1</td>
                          <th><a href="#!">공지사항 안내입니다. 이용해주셔서 감사합니다</a></th>
                          <td>2017.06.15</td>
                       </tr>
                       </tbody>
                    </table>
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