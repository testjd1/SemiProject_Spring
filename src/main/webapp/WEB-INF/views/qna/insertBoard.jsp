<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<html>
		<title id='logo'>S.o.S escape</title>
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
                  <li><a href="index.do">Home</a></li>
                  
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
                  <li class="current"><a href="qna.do">Q&A</a></li>
                  <li><a href="board.do">Board</a></li>
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
				<br/>
			</header>	
      <div class='container'>
		<h1>글 등록</h1>		
		<hr>
		<!-- 1. 폼태그에 속성 추가  -->
		<form action="saveBoard.do" method='post' enctype="multipart/form-data"> 
			<table border="1" cellpadding="0" cellspacing="0">
				<!-- 2. 각 항목에  name 맞추기 -->
				<tr>
					<td width="70">제목</td>
					<td align="left"><input type="text" name='b_title'/></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td align="left"><input type="text" size="10" name='b_name'/></td>
				</tr>
				<tr>
					<td>내용</td>
					<td align="left"><textarea cols="40" rows="10" name='b_content'></textarea></td>
				</tr>
				<!-- 추가항목 시작 -->
				<tr>
					<td>이메일</td>
					<td align="left"><input type="text" / name='b_email'></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td align="left"><input type="text" name='b_pwd'/></td>
				</tr>
				<tr>
					<td width="70">파일추가</td><td align="left">
					<input type="file" name='file' maxlength="60" size="40"></td>
				</tr>
				<!-- 추가항목 끝 -->
				<tr>
					<td colspan="2" align="center"><input type="submit"	value=" 새글 등록 " /></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="board.do">글 목록 가기</a>
      </div>      
</body>
</html>