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
</style>

<title>S.o.S escape</title>

<%
	String pjName = "/sosBoard";
%>

<!-- 로그인, 모달  jquery-->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<!-- modal js -->
<script src="<%=pjName%>/resources/assets/js/modal.js"></script>

<!-- login css -->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/login.css'>

<!-- 모달  css-->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/modal.css'>
<!-- main css -->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
<!-- <link rel ="stylesheet" href='resources/css/test.css'> -->


<!-- bxSlider -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


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

<body class="homepage is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header"> </header>

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
					<li><a id="gologin" class="btn trigger"
						href="../customer/login.do">Login</a></li>
				</c:if>
				<c:if test="${sessionScope.loginId!=null}">
					<li><a href="../customer/mypage.do">Mypage</a></li>
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

							<!-- Sidebar -->

							<!-- Recent Posts -->
							<section>
								<h2 class="major">
									<span>Posts</span>
								</h2>
								<ul class="divided">
									<li>
										<article class="box post-summary">
											<h3>
												<a href="#content1">VARIETY</a>
											</h3>
										</article>
									</li>
									<li>
										<article class="box post-summary">
											<h3>
												<a href="#content2">PLAY</a>
											</h3>
										</article>
									</li>
									<li>
										<article class="box post-summary">
											<h3>
												<a href="#content3">ESCAPE</a>
											</h3>
										</article>
									</li>
									<li>
										<article class="box post-summary">
											<h3>
												<a href="#content4">STORY</a>
											</h3>
										</article>
									</li>
								</ul>
							</section>


						</div>
					</div>
					<div class="col-9 col-12-medium imp-medium">
						<div class="content">

							<!-- Content -->

							<article class="box page-content">

								<header>
									<h2>STORY</h2>
									<p>Story of Savior</p>
								</header>

								<section id="content1" style="font-family: GangwonEdu_OTFBoldA;">
									<img src="<%=pjName%>/resources/images/story1.png" alt=""
										width="190" height="190" />
									<h4 style="font-family: GangwonEdu_OTFBoldA;">
										방탈출은 다양한 요소들이 조화를 이뤄 만들어지는 하나의 작품입니다.<br /> SoS의 이야기는 다채롭습니다.
										크게 5가지로 나누어진 큰 갈래에 여러가지의 이야기를 담은 가지들을 내려 오랜 시간 저희와 함께 할 수 있게
										준비했습니다.<br /> SoS 는 저희가 각자의 분야에서 정성스레 준비한 공간에 여러분이라는 가장 중요한
										마지막 조각으로 이야기를 채워 완성시키는 과정을 나누고 싶어 만들어진 브랜드입니다.<br /> 여러분과 SoS,
										우리가 만들어낼 온전한 이야기를 기대하며 항상 연구하고 준비하고 있겠습니다.<br />
									</h4>
								</section>

								<section id="content2">
									<img src="<%=pjName%>/resources/images/story2.png" alt=""
										width="190" height="190" />
									<h3 style="font-family: GangwonEdu_OTFBoldA;">
										SoS는 현재에 안주하지 않고 새로움을 향해 늘 도전합니다. 여러분들의 믿음이 있기에 쉬운 길을 가지 않고
										더디더라도 제대로 합니다.<br /> 행복을 선사하는 놀이문화를 위해, 우리는 지금도 노력합니다.<br />
									</h3>
								</section>

								<section id="content3">
									<img src="<%=pjName%>/resources/images/story3.png" alt=""
										width="190" height="190" />
									<h3 style="font-family: GangwonEdu_OTFBoldA;">
										보편화 되고 상용화 되어 있는 기존의 방탈출에서 새롭게 변화된 방탈출을 만들어 보고 싶었습니다.<br />
										‘탈출러에게 조금 더 변화된 조금 더 다른 방탈출을 느끼게 할 수 없을까？’ 라는 물음을 시작해 SoS를 만들게
										되었습니다.<br /> ‘지금껏 항상 그렇게 해왔어 －그레이스 호퍼－’의 말이 있습니다. 기존의 방탈출에서
										머무르지 않겠습니다.<br /> SoS는 ‘변화’ , ‘창조’를 위해 존재합니다. 늘 새롭게 도전하고 연구하고,
										발전하는 우리가 되도록 노력하겠습니다．<br />
									</h3>
								</section>

								<section id="content4">

									<img src="<%=pjName%>/resources/images/story4.png" alt=""
										width="190" height="190" />
									<h3 style="font-family: GangwonEdu_OTFBoldA;">
										S.tory<br /> o.f<br /> S.avior<br /> 'SoS'는 방탈출을 진심으로 좋아하는
										사람들이 모여 만든 공간입니다.<br /> 구원자의 이야기, 우리가 빠져들게 될 그 이야기의 주인공은 항상
										여러분입니다.<br /> 여러 차원에서 일어나는 일들을 차곡차곡 하나씩 해결해 나아가는 여러분들의 이야기를
										모아, 이 곳에 담아두었습니다. 저희 SoS Escape에서 여러가지 이야기들의 주인공이 되어 각 이야기들의
										구원자가 되시길 바랍니다. <br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
										<br />
									</h3>
								</section>

							</article>

						</div>
					</div>
					<br />
					<br />
					<br />
					<br />
					<div class="col-12">

						<!-- Features -->
						<section class="box features">
							<h2 class="major">
								<span>S.o.S CREW MEMBERS</span>
							</h2>
							<div>
								<div class="row">
									<div class="col-3 col-6-medium col-12-small">

										<!-- Feature -->
										<section class="box feature">
											<a href="" class="image featured"><img
												src="<%=pjName%>/resources/images/story1.png" alt="" /></a>
											<h3>
												<a href="#">SEUNGMIN KIM</a>
											</h3>
											<p style="font-family: GangwonEdu_OTFBoldA;">
												KOSMO 명실상부 최고의 강사님. <br /> 프로젝트 준비에 많은 도움을 주시고 꿀팁들을 쏙쏙 정리하여
												전수해주셨습니다!<br /> 감사합니다! :)
											</p>
										</section>

									</div>
									<div class="col-3 col-6-medium col-12-small">

										<!-- Feature -->
										<section class="box feature">
											<a href="#" class="image featured"><img
												src="<%=pjName%>/resources/images/story1.png" alt="" /></a>
											<h3>
												<a href="#">SARANG YE</a>
											</h3>
											<p style="font-family: GangwonEdu_OTFBoldA;">1조에서 나이를 맡고
												있습니다. S.o.S의 전반적인 무드와 테마 설정 및 디자인에 참여하였고 코딩을 느낌만 싹 나게 줬습니다.
												재동아 소윤아 고마워 사랑해 움쪽쪽</p>
										</section>

									</div>
									<div class="col-3 col-6-medium col-12-small">

										<!-- Feature -->
										<section class="box feature">
											<a href="#" class="image featured"><img
												src="<%=pjName%>/resources/images/story1.png" alt="" /></a>
											<h3>
												<a href="#">SOYUN KIM</a>
											</h3>
											<p style="font-family: GangwonEdu_OTFBoldA;">1조에서 나이를 맡고
												있습니다. S.o.S의 전반적인 무드와 테마 설정 및 디자인에 참여하였고 코딩을 느낌만 싹 나게 줬습니다.
												재동아 소윤아 고마워 사랑해 움쪽쪽</p>
										</section>

									</div>
									<div class="col-3 col-6-medium col-12-small">

										<!-- Feature -->
										<section class="box feature">
											<a href="#" class="image featured"><img
												src="<%=pjName%>/resources/images/story1.png" alt="" /></a>
											<h3>
												<a href="#">JAEDONG KIM</a>
											</h3>
											<p style="font-family: GangwonEdu_OTFBoldA;">1조에서 나이를 맡고
												있습니다. S.o.S의 전반적인 무드와 테마 설정 및 디자인에 참여하였고 코딩을 느낌만 싹 나게 줬습니다.
												재동아 소윤아 고마워 사랑해 움쪽쪽</p>
										</section>

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