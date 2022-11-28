<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title id='logo'>Q&A - 비밀번호 확인</title>
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
 <% String pjName = "/sosBoard"; %>
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
</head>
<body style="font-family: 'GangwonEdu_OTFBoldA';">
<br/><br/><br/><br/><br/><br/>
<div class="container" style="text-align:center;" >

      <form action="../qna/getQna.do?seq=${param.seq}" name="form" method="post">
      <input type="hidden" id='seq' name='seq' value='${param.seq}'>
         ${param.seq}번 글 비밀번호 확인 <br/>
         ※비밀번호 오류 시 목록으로 돌아갑니다.※ <br/>
         비밀번호 확인 <br/>
         <input type="text" id="pass" name='pass' autofocus="autofocus" style="width:300px; margin: 0 auto;"  >
         <input type="submit" value="확인" id="submit1" style="font-family: 'GangwonEdu_OTFBoldA';">
      </form>

</div>
<!-- Scripts -->
<script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>


</body>
</html>