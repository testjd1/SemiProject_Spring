<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title id='logo'>Q&A - 비밀번호 확인</title>
</head>
<body>
	<form action="../qna/getQna.do?seq=${param.seq}" name="form">
	<input type="hidden" id='seq' name='seq' value='${param.seq}'>
		${param.seq}번 글 비밀번호 확인 <br/>
		비밀번호 확인 : <input type="text" id="pass" name='pass'>
		<input type="submit" value="확인" id="submit1">
	</form>
 <% String pjName = "/sosBoard"; %>
<!-- Scripts -->
<script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>


</body>
</html>