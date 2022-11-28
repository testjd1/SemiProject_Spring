<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 삭제- 비밀번호 확인</title>
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
</head >
<body style="font-family: 'GangwonEdu_OTFBoldA';">
<br/><br/><br/><br/><br/><br/>
<div class="container" style="text-align:center;">
   <form action="../board/deleteBoard.do">
   <input type="hidden" id='seq' name='seq' value='${param.seq}'>
      ${param.seq}번 글 삭제 <br/>
      ※비밀번호 오류 시 글이 삭제되지 않습니다.※ <br/>
      비밀번호 확인 <input type="text" id="pass" name='pass' autofocus="autofocus" style="width:300px; margin: 0 auto;"  >
         <input type="submit" value="확인" id="submit1" style="font-family: 'GangwonEdu_OTFBoldA';">
      </form>
</div>


</body>
</html>