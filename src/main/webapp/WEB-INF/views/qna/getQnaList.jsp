<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title id='logo'>S.o.S escape</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <% String pjName = "/sosBoard"; %>
      
      <!-- 로그인, 모달  jquery-->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<!-- modal js -->
<script src="<%=pjName%>/resources/assets/js/modal.js"></script>

<!-- alert창 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />


<!-- 페이징 관련 js -->
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
   

      
</head>
<body class="is-preload">
      <div id="page-wrapper">

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
            <form method="POST" id="insert-customer" action="<%=pjName%>/customer/insertCustomer.do">

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
            <form method="POST" id="insert-customer" action="<%=pjName%>/customer/loginCustomer.do">
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
      
      <div id="page-wrapper" style="background : white;">
      

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
             <li><a href="../theme/theme.do">Theme</a>
               <ul>
                  <li><a href="../theme/theme.do?themegenre=horror">공포</a></li>
                  <li><a href="../theme/theme.do?themegenre=infiltration">잠입</a></li>
                  <li><a href="../theme/theme.do?themegenre=comic">코믹</a></li>
                  <li><a href="../theme/theme.do?themegenre=fantasy">판타지</a></li>
                  <li><a href="../theme/theme.do?themegenre=emotion">감성</a></li>
               </ul></li>
            <li class="current"><a href="../qna/getQnaList.do">Q&A</a></li>
            <li><a href="../board/getBoardList.do">Board</a></li>
            <c:if test="${sessionScope.loginId==null}">
               <li><a class="btn trigger" href="../customer/login.do">Login</a></li>
            </c:if>
            <c:if test="${sessionScope.loginId!=null && loginId!='admin'}">
               <li><a href="../reservation/mypage.do?userid=${sessionScope.loginId}">Mypage</a></li>
               <li><a class="btn" href="../customer/logout.do">Logout</a></li>
            </c:if>
            <c:if test='${sessionScope.loginId=="admin"}'>
               <li><a href="../reservation/mypageM.do?userid=${sessionScope.loginId}">Mypage</a></li>
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
                    <h3>Q&A</h3>
                 </div>
              </div>
           
         <!-- 검색 창 부분 -->
              <div id="board-search">
                 <div class="container">
                    <div class="search-window" style="background : white;" >
                       <form action="../qna/getQnaList.do" method='get'>
                          <div class="search-wrap">
                             <select name='searchType'>
                        <option value='n'>----</option>
                        <option value='t'>제목</option>
                        <option value="c">내용</option>
                        <option value="w">작성자</option>
                     </select>
                             <input id="keywordInput" type="text" name="keywordInput" placeholder="검색어를 입력해주세요." >
                            <button id="searchBtn" type="button">search</button>
                         <script>
                           $(function(){
                             $('#searchBtn').click(function() {
                               self.location = "../qna/getQnaList.do" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
                             });
                           });   
                         </script>
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
                          <c:forEach items="${list }" var="qnaList">
                           <!-- 프라퍼티이름 변경 -->
                       <tr>
                          <td>${qnaList.seq }</td>
                          <c:if test="${sessionScope.loginId=='admin'}">                             
                           <td align="left" id="lock"><a href="../qna/getQnaM.do?seq=${qnaList.seq}">
                                     &#128274; ${qnaList.title }</a></td>
                          </c:if>
                          <c:if test="${sessionScope.loginId!='admin'}">
                           <td align="left" id="lock"><a href="../qna/checkPassQnaList.do?seq=${qnaList.seq}">
                                     &#128274; ${qnaList.title }</a></td>
                          </c:if>
                          <td id="lockid">${qnaList.userid }</td>
                          <td>${qnaList.regdate }</td>
                          <c:if test="${sessionScope.loginId=='admin'}">
                                   <td><a href="../qna/deleteBoardm.do?seq=${qnaList.seq}">
                                   <input type="button" value="delete"></a></td>
                               </c:if>
                       </tr>
                          </c:forEach>

                       </tbody>
                    </table>
                          <input type="button" id="saveQna" name='saveQna' value="write">
                          
                          
               <!-- 페이징 -->  
               
                <div class='container'>
              <ul class='container' id="paging"  style="text-align: right;">
                <c:if test="${pageMaker.prev}">
                   <li><a href="../qna/getQnaList.do${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
                </c:if> 
            
                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                   <li><a href="../qna/getQnaList.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
                </c:forEach>
            
                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                   <li><a href="../qna/getQnaList.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
                </c:if> 
              </ul>
            </div>
           
           </section>

   </div>







      
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
<!-- 로그인 안했을 시 글 못씀 -->
   <script type="text/javascript">
      $("#saveQna").click(function() {
         var k = "<%=session.getAttribute("loginId")%>" 
         if(k!="null"){
            Swal.fire("접근 허용","글쓰기 페이지로 이동합니다.",'success').then(function(){
              location.href='/sosBoard/qna/saveQna.do';
              })
         }
         if(k=="null"){
            Swal.fire("접근 불가","로그인 후 이용가능 합니다.",'error')
            return false;
         } 
   
      })
   </script>    
</body>
</html>