<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<meta name="referrer" content="no-referrer-when-downgrade" />

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title id='logo'>S.o.S escape</title>
<% String pjName = "/sosBoard"; %>
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
<!-- <link rel ="stylesheet" href='resources/css/test.css'> -->

</head>
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

			</style>
	  
<title>S.o.S escape</title>

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

       <!-- Favicon -->
        <link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'> 



</head>

<body class="homepage is-preload">
      <div id="page-wrapper">

         <!-- Header -->
            <header id="header">
            
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
                  <li><a href="../customer/error.do">에러페이지</a></li>
               </ul></li>
            <li class="current"><a href="../qna/getQnaList.do">Q&A</a></li>
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

		<!-- QNA 메인 파트 -->
		
      <div class='container' style='font-family:GangwonEdu_OTFBoldA;'>
      <h1 style='font-family:GangwonEdu_OTFBoldA;' align="center">글 상세</h1>      
      <hr>
      <form action="../qna/checkPassQna.do?seq=${board.seq}" method="post">
         <input name="seq" id='qnaSeq' type="hidden" value="${board.seq}" />
         <table border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td width="70" align="center">제목</td>
				<td align="left">${board.title}</td>
            </tr>
            <tr>
               <td align="center">작성자</td>
               <td align="left">${board.userid}</td>
            </tr>
            <tr>
               <td align="center">내용</td>
               <td align="left"><textarea name="content" readonly cols="40" rows="10">
                  ${board.content }</textarea></td>
            </tr>
            <tr>
               <td align="center">등록일</td>
               <td align="left">${board.regdate}</td>
            </tr>
            <tr>
               <td colspan="2" align="center"><input type="submit"
                  value="글 삭제" style='font-family:GangwonEdu_OTFBoldA;' />
                  </td>
            </tr>
         </table>
            <a href='../qna/getQnaList.do'>
            <input type = 'button' value='목록보기' id='listBoard' style='font-family:GangwonEdu_OTFBoldA;'>
            </a>
      </form>
      <br/>
      <br/>
      
      
      <!-- 댓글 목록보기 -->
      <table id='replyList' border='2'/>
      
      <!-- 댓글 입력창 -->
      <form id ='replyFrm' name='replyFrm'>
      <input type='text' size='2' readonly name='bno' id="bno" value='${board.seq}'>
      <input type='text' name ='userid' id ='userid' placeholder="사용자명">
      &nbsp;&nbsp;
      <input type = 'text' name = 'comm' id ='comm' style="width :500" placeholder="댓글 입력">
      &nbsp;&nbsp;
      <input type = 'button' value='댓글추가' id='replyConfirm' style='font-family:GangwonEdu_OTFBoldA;'>
      </form>
      
      </div>
      </div>
      
      		<!-- Scripts -->
         <script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/jquery.dropotron.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/jquery.scrolly.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/browser.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/breakpoints.min.js"></script>
         <script src="<%=pjName%>/resources/assets/js/util.js"></script>
         <script src="<%=pjName%>/resources/assets/js/main.js"></script>
		 <script src='<%=pjName%>/resources/assets/js/qnareply.js' type="text/javascript"></script>
		 <script
      src="<%=pjName%>/resources/https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- login  js 추가-->
   <script src="<%=pjName%>/resources/assets/js/login.js"></script>
   
</body>
</html>