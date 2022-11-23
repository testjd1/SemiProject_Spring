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
		<h1>�׸� ���</h1>
		
	<table border="1">
			<tr>
				<th bgcolor="lightyellow" width="100">�׸���ȣ</th>
				<th bgcolor="lightyellow" width="200">�׸��̸�</th>
				<th bgcolor="lightyellow" width="200">�׸��帣</th>
				<th bgcolor="lightyellow" width="150">������</th>
				<!-- �߰� -->
				<th bgcolor="lightyellow" width="150">�����̸�</th>
				<th bgcolor="lightyellow" width="100">���Ͽ뷮</th>				
			</tr>
			<c:forEach items="${themelist}" var="theme">
				<!-- ������Ƽ�̸� ���� -->
				<tr>
					<td>${theme.seq}</td>
					<td align="left"><a href="gettheme.do?seq=${theme.seq}">
					 ${theme.themename}</a></td>
					<td>${theme.themegenre}</td>
					<td>${theme.branch}</td>
					<!-- �߰� -->
					<td>
					 <c:choose>
					    <c:when test="${theme.b_fsize==0}">÷������ ����</c:when>
					    <c:otherwise>
					    		<img  src="<%=pjName%>/resources/images/disk.gif">${theme.picture}
					    </c:otherwise>
					 </c:choose>					  
					</td>					
					<td>${theme.b_fsize}byte</td>
				</tr>
			</c:forEach>
		</table>
		<br> <a href="registertheme.do">�� �׸� ���</a>
</body>
</html>