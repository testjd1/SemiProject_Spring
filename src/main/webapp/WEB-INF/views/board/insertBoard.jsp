<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>

<html>
<title id='logo'>S.o.S escape</title>
<%
	String pjName = "/sosBoard";
%>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<!-- 로그인, 모달  jquery-->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<!-- modal js -->
<script src="<%=pjName%>/resources/assets/js/modal.js"></script>

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
							<form method="POST" id="insert-customer"
								action="<%=pjName%>/customer/insertCustomer.do">

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
								action="<%=pjName%>/customer/loginCustomer.do">
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
				<li ><a href="../customer/index.do">Home</a></li>

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
				<li class="current"><a href="../board/getBoardList.do">Board</a></li>
				<c:if test="${sessionScope.loginId==null}">
					<li><a id="gologin" class="btn trigger"
						href="../customer/login.do">Login</a></li>
				</c:if>
					<c:if test="${sessionScope.loginId!=null}">
					<li><a href="../reservation/mypage.do?userid=${sessionScope.loginId}">Mypage</a></li>
					<li><a class="btn" href="../customer/logout.do">Logout</a></li>

				</c:if>




			</ul>
		</nav>
		<header>
			<br /> <br /> <br /> <br /> <br />
		</header>
		<div class='container'>
			<h1>글 등록</h1>
			<hr>
			<!-- 1. 폼태그에 속성 추가  -->
			<form action="board.do" method='post' enctype="multipart/form-data">
				<table border="1" cellpadding="0" cellspacing="0">
					<!-- 2. 각 항목에  name 맞추기 -->
					<tr>
						<td width="70">제목</td>
						<td align="left"><input type="text" name='b_title' /></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td align="left"><input type="text" size="10" name='b_name' /></td>
					</tr>
					<tr>
						<td>내용</td>
						<td align="left"><textarea cols="40" rows="10"
								name='b_content'></textarea></td>
					</tr>
					<!-- 추가항목 시작 -->
					<tr>
						<td>이메일</td>
						<td align="left"><input type="text" / name='b_email'></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td align="left"><input type="text" name='b_pwd' /></td>
					</tr>
					<tr>
						<td width="70">파일추가</td>
						<td align="left"><input type="file" name='file'
							maxlength="60" size="40"></td>
					</tr>
					<!-- 추가항목 끝 -->
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value=" 새글 등록 " /></td>
					</tr>
				</table>
			</form>
			<hr>
			<a href="board.do">글 목록 가기</a>
		</div>

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