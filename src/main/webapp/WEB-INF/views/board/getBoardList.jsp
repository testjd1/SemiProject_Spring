<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 목록</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <% String pjName = "/sosBoard"; %>
      
<!-- 로그인, 모달  jquery-->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<!-- modal js -->
<script src="<%=pjName%>/resources/assets/js/modal.js"></script>

<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="boardList?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>

<!-- login css -->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/login.css'>

<!-- 모달  css-->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/modal.css'>

<!-- main css -->
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css' />
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/qna.css' />
      
      <!-- Favicon -->
        <link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'> 
      
    <!-- 로그인 script -->

<script>
 
   var t = '${sessionScope.sok}';
   if (t == '1') {
      alert('회원 가입이 완료되었습니다! 로그인창을 통해 로그인해주세요');
   } else if (t == '9') {
      alert('중복된 아이디입니다. 다른 아이디를 입력해주세요!')
   } else if (t == '5') {
      alert('로그인 오류! 다시 입력해주세요')
   }
      
</script>  
      
</head>
<body class="is-preload">

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
      
      
      <div id="page-wrapper">

         

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
               <li><a class="btn trigger" href="../customer/login.do">Login</a></li>
            </c:if>
            <c:if test="${sessionScope.loginId!=null}">
               <li><a href="../customer/mypage.do">Mypage</a></li>
               <li><a class="btn" href="../customer/logout.do">Logout</a></li>
               
            </c:if>

            
            
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
                       <form action="../board/getBoardList.do" method='post'>
                          <div class="search-wrap">
                          	<select name='searchCondition'>
								<option value='title'>제목</option>
								<option value="userid">작성자</option>
								<option value="content">내용</option>
							</select>

                             <input id="search" type="text" name="searchKeyword" placeholder="검색어를 입력해주세요." >
                             <button type="submit" class="btn btn-dark">search</button>
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
                          <th scope="col" class="th-id">작성자</th>
                          <th scope="col" class="th-date">등록일</th>
                       </tr>
                       </thead>
                       <tbody>
                          <c:forEach items="${boardList }" var="board">
                           <!-- 프라퍼티이름 변경 -->
                       <tr>
                          <td>${board.seq }</td>
                           <td align="left"><a href="getBoard.do?seq=${board.seq}">
                                    ${board.userid }</a></td>
                          <td>${board.title }</td>
                          <td>${board.regdate }</td>
                       </tr>
                          </c:forEach>

                       </tbody>
                    </table>
                     <a href='../board/saveBoard.do'>
                     <input type="button" id="insertBoard" name='insertBoard' value="write">
                     </a>              
                 </div>
                 <div style='text-align : center;'>
                <a href="">[◀◀]</a>
				<a href="">[◀]</a>

				<a href="">[▶]</a>
				<a href="">[▶▶]</a>
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
         <script
      src="<%=pjName%>/resources/https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- login  js 추가-->
   <script src="<%=pjName%>/resources/assets/js/login.js"></script>
</body>
</html>