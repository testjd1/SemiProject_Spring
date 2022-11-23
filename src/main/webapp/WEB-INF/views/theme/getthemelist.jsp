<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<% String pjName = "/sosBoard"; %>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>themelist</title>
</head>
<body>
		<h1>테마 목록</h1>
		
	<table border="1">
			<tr>
				<th bgcolor="lightyellow" width="100">테마번호</th>
				<th bgcolor="lightyellow" width="200">테마이름</th>
				<th bgcolor="lightyellow" width="200">테마장르</th>
				<th bgcolor="lightyellow" width="150">지점명</th>
				<!-- 추가 -->
				<th bgcolor="lightyellow" width="150">파일이름</th>
				<th bgcolor="lightyellow" width="100">파일용량</th>				
			</tr>
			<c:forEach items="${themelist}" var="theme">
				<!-- 프라퍼티이름 변경 -->
				<tr>
					<td>${theme.seq}</td>
					<td align="left"><a href="gettheme.do?seq=${theme.seq}">
					 ${theme.themename}</a></td>
					<td>${theme.themegenre}</td>
					<td>${theme.branch}</td>
					<!-- 추가 -->
					<td>
					 <c:choose>
					    <c:when test="${theme.b_fsize==0}">첨부파일 없음</c:when>
					    <c:otherwise>
					    		<img  src="<%=pjName%>/resources/images/disk.gif">${theme.picture}
					    </c:otherwise>
					 </c:choose>					  
					</td>					
					<td>${theme.b_fsize}byte</td>
				</tr>
			</c:forEach>
		</table>
		<br> <a href="registertheme.do">새 테마 등록</a>
</body>
</html>