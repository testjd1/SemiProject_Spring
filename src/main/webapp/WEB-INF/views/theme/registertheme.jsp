<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register theme!</title>
</head>
<body>

<h1>*테마 등록*</h1>		
		<hr>
		<!-- 1. 폼태그에 속성 추가  -->
		<form action="savetheme.do"  method='post' enctype="multipart/form-data"> 
			<table border="1" cellpadding="0" cellspacing="0">
				<!-- 2. 각 항목에  name 맞추기 -->
<!-- 				<tr> -->
<!-- 					<td bgcolor="lightyellow" width="10">테마 번호</td> -->
<!-- 					<td align="left"><input type="text" name="seq" id="seq"/></td> -->
<!-- 				</tr> -->
				<tr>
					<td bgcolor="lightyellow">테마 이름</td>
					<td align="left"><input type="text" name="themename" id="themename" /></td>
				</tr>
				<tr>
					<td bgcolor="lightyellow">테마 장르</td>
					<td align="left"><input type="text" name="themegenre" id="themegenre"/></td>
				</tr>
				<tr>
					<td bgcolor="lightyellow">테마 레벨</td>
					<td align="left"><input type="text" name="thlevel" id="thlevel"/></td>
				</tr>
				<tr>
					<td bgcolor="lightyellow">진행 시간</td>
					<td align="left"><input type="text" name="runtime" id="runtime"/></td>
				</tr>
				
				<tr>
					<td bgcolor="lightyellow">인당 테마 가격</td>
					<td align="left"><input type="text" name="thcost" id="thcost"/></td>
				</tr>
				<tr>
					<td bgcolor="lightyellow">추천 예약 인원</td>
					<td align="left"><input type="text" name="peoplecount" id="peoplecount"/></td>
				</tr>
				<tr>
					<td bgcolor="lightyellow">지점명</td>
					<td align="left"><input type="text" name="branch" id="branch"/></td>
				</tr>
				<tr>
					<td bgcolor="lightyellow">테마 설명</td>
					<td align="left"><textarea name="content" id="content" cols="40" rows="10"></textarea></td>
				</tr>
 				<tr>
					<td bgcolor="lightyellow" width="70">테마 사진</td><td align="left">
					<input type="file" name="file" id="picture" maxlength="60" size="40"></td>
				</tr>
<!-- 				<tr> -->
<!-- 					<td bgcolor="orange">파일 크기</td> -->
<!-- 					<td align="left"><input type="text" name="b_fsize" id="b_fsize"/></td> -->
<!-- 				</tr> -->
				
				<!-- 추가항목 끝 -->
				<tr>
					<td colspan="2" align="center"><input type="submit"	value="테마 등록" /></td>
				</tr>
				
			</table>
		</form>
		<hr>
	<a href="getthemelist.do">테마 목록 가기</a> 









</body>
</html>