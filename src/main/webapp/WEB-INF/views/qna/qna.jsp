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
		<title>S.o.S escape</title>
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
                  <li><a href="../theme/theme.do">Theme</a>
               <ul>
                  <li><a href="../theme/theme.do?themegenre=horror">공포</a></li>
                  <li><a href="../theme/theme.do?themegenre=infiltration">잠입</a></li>
                  <li><a href="../theme/theme.do?themegenre=comic">코믹</a></li>
                  <li><a href="../theme/theme.do?themegenre=fantasy">판타지</a></li>
                  <li><a href="../theme/theme.do?themegenre=emotion">감성</a></li>
                  <li><a href="../customer/error.do">에러페이지</a></li>
               </ul></li>
                  <li><a href="../qna/qna.do">Q&A</a></li>
                  <li><a href="../board/board.do">Board</a></li>
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
						  <h3>Q&A</h3>
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
								  <th><a href='getQna.do?seq=2'>게시글보기(있는 번호 확인)</a></th>
								  <td>2017.06.15</td>
							  </tr>
			  
							  <tr>
								  <td>1</td>
								  <th><a href='getBoard.do?seq=2'>게시글보기(있는 번호 확인)</a></th>
								  <td>2017.06.15</td>
							  </tr>
							  </tbody>
						  </table>
						  <a href='insertBoard.do'>
			  				<input type="button" id="insertBoard" name='insertBoard' value="write">
			  			  </a>
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

	</body>
</html>