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
<%
	String pjName = "/sosBoard";
%>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css' />
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/qna.css' />

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
<body class="is-preload">
	<div id="page-wrapper">



		<!-- Nav -->

		<nav id="nav">
			<div id="navImage">
				<a href="index.do"><img
					src="<%=pjName%>/resources/images/logo2.png" height="138px"></a>
			</div>

			<ul>
				<li class="current"><a href="index.do">Home</a></li>

				<li><a href="story.do">Story</a></li>
				<li><a href="location.do">Location</a>
					<ul>
						<li><a href="hongdae.do">홍대</a></li>
						<li><a href="anyang.do">안양</a></li>
						<li><a href="gumi.do">구미</a></li>
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
               <li><a class="btn trigger" >Login</a></li>
            </c:if>
            <c:if test="${sessionScope.loginId!=null}">
               <li><a href="../customer/mypage.do">Mypage</a></li>
               <li><a class="btn" href="../customer/logout.do">Logout</a></li>
               
            </c:if>

			</ul>








		</nav>
		<header>
			<br /> <br /> <br /> <br />

		</header>

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
								action="../customer/insertCustomer.do">

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
								action="../customer/loginCustomer.do">
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
								<label for="search" class="blind">공지사항 내용 검색</label> <input
									id="search" type="search" name="" placeholder="검색어를 입력해주세요."
									value="">
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
								<th><a href="#!">[공지사항] 개인정보 처리방침 변경안내처리방침</a>
									<p>테스트</p></th>
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
	<!-- login  js 추가-->
	<script src="<%=pjName%>/resources/assets/js/login.js"></script>

</body>
</html>