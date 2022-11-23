<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>theme!</title>
</head>
<%
	String pjName = "/sosBoard";
%>
<body>

	<h1>*테마 자세히 보기*</h1>
	<hr>
	<!-- 1. 폼태그에 속성 추가  -->
	<form action="updatetheme.do" method='post' enctype="multipart/form-data">
		<input name="seq" type="hidden" value="${theme.seq}" />
		<table border="1" cellpadding="0" cellspacing="0">
			<!-- 2. 각 항목에  name 맞추기 -->
			<!-- 				<tr> -->
			<!-- 					<td bgcolor="lightyellow" width="10">테마 번호</td> -->
			<!-- 					<td align="left"><input type="text" name="seq" id="seq"/></td> -->
			<!-- 				</tr> -->
			<tr>
				<td bgcolor="lightyellow">테마 이름</td>
				<td align="left"><input type="text" name="themename"
					id="themename" value="${theme.themename}" /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow">테마 장르</td>
				<td align="left"><input type="text" name="themegenre"
					id="themegenre" value="${theme.themegenre}" /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow">테마 레벨</td>
				<td align="left"><input type="text" name="thlevel" id="thlevel"
					value="${theme.thlevel}" /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow">진행 시간</td>
				<td align="left"><input type="text" name="runtime" id="runtime"
					value="${theme.runtime}" /></td>
			</tr>

			<tr>
				<td bgcolor="lightyellow">인당 테마 가격</td>
				<td align="left"><input type="text" name="thcost" id="thcost"
					value="${theme.thcost}" /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow">추천 예약 인원</td>
				<td align="left"><input type="text" name="peoplecount"
					id="peoplecount" value="${theme.peoplecount}" /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow">지점명</td>
				<td align="left"><input type="text" name="branch" id="branch"
					value="${theme.branch}" /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow">테마 설명</td>
				<td align="left"><textarea name="content" id="content"
						cols="40" rows="10">${theme.content}</textarea></td>
			</tr>

			<c:if test="${theme.picture != null}">
				<tr>
					<td bgcolor="lightyellow" width="70">테마 사진</td>
					<td align="left"><img
						src="<%=pjName%>/resources/images/${theme.picture}" width='300'
						height='200'> <br>
						<hr> <input type="file" name="file" id="picture"
						maxlength="60" size="40"></td>
				</tr>
			</c:if>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="테마 등록 수정" /></td>
			</tr>


		</table>
	</form>
	<hr>
	<a href="registertheme.do">테마 등록</a>
	<a href="deletetheme.do?seq=${theme.seq}">테마 삭제</a>
	<a href="getthemelist.do">테마 목록</a>









</body>
</html>