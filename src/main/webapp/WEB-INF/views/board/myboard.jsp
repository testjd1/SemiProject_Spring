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
<title id="logo">S.o.S escape</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<%
	String pjName = "/sosBoard";
%>
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>

<link rel="stylesheet"
	href="<%=pjName%>/resources/assets/css/mypage.css" />
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
				<li><a href="../qna/getQnaList.do">Q&A</a></li>
				<li><a href="../board/getBoardList.do">Board</a></li>
				<c:if test="${sessionScope.loginId==null}">
					<li><a id="gologin" class="btn trigger"
						href="../customer/login.do">Login</a></li>
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

		<!-- Main -->
		<section id="main">
			<div class="container">
				<div class="row">
					<div class="col-3 col-12-medium">

						<div class="sidebar">

							<div class="wrap">
								<div class="greenContainer" style="height: auto; width: 1000px">
									<div>
										<div class="name">${sessionScope.loginId}님 환영합니다!</div>
									</div>

								</div>

								<div class="shippingStatusContainer"></div>
								<div class="listContainer">



									<a
										href="../reservation/mypage.do?userid=${sessionScope.loginId}"
										class="item">
										<div class="text" style="font-family: GangwonEdu_OTFBoldA;">예약 내역</div>
										<div class="right">></div>
									</a> <a href="../qna/myqna.do?userid=${sessionScope.loginId}"
										class="item">
										<div class="text" style="font-family: GangwonEdu_OTFBoldA;">My QnA</div>
										<div class="right">></div>
									</a> <a href="../board/myboard.do?userid=${sessionScope.loginId}" class="item">
										<div class="text" style="font-family: GangwonEdu_OTFBoldA;">
											My Board<span class="circle"></span>
										</div>
										<div class="right">></div>
									</a> <a
										href="../customer/customerUpdateView.do?userid=${sessionScope.loginId}"
										class="item">
										<div class="text" style="font-family: GangwonEdu_OTFBoldA;">회원정보 수정</div>
										<div class="right">></div>
									</a>




								</div>
								<div class="listContainer"></div>
								<div class="infoContainer">
									<a href="#" class="item">
										<div>
											<i class="fa-solid fa-circle-info"></i>
										</div>
										<div style="font-family: GangwonEdu_OTFBoldA;">공지사항</div>
									</a> <a href="#" class="item">
										<div>
											<i class="fa-solid fa-face-smile"></i>
										</div>
										<div style="font-family: GangwonEdu_OTFBoldA;">이용안내</div>
									</a> <a href="#" class="item">
										<div>
											<i class="fa-solid fa-phone"></i>
										</div>
										<div style="font-family: GangwonEdu_OTFBoldA;">고객센터</div>
									</a>
								</div>
							</div>


						</div>
					</div>
					<div class="col-9 col-12-medium imp-medium">

						<table>
							<thead>
								<tr style="height: 65px;">
									<th>글번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>등록일</th>
									<th>내용</th>
									<th>이동</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach items="${listboard}" var="l">
									<tr style="font-family: GangwonEdu_OTFBoldA; ">
										<td>${l.seq}</td>
										<td>${l.title}</td>
										<td>${l.userid}</td>
										<td>${l.regdate}</td>
										<td>${l.content}</td>
										<td><a
											href="getBoard.do?seq=${l.seq}">click</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>


					</div>
					<div class="col-12">

						<!-- Features -->


					</div>
				</div>
			</div>
		</section>



	</div>
	<div class="col-12">
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
	<script src="<%=pjName%>/resources/assets/js/customerView.js"></script>


	

</body>
</html>