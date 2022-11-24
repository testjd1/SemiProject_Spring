<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<% String pjName = "/sosBoard"; %>


<!-- main css -->
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css' />
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/qna.css' />
      
      <!-- Favicon -->
        <link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title id='logo'>S.o.S escape</title>
</head>
<body>

   <div class="container">
    
      
   <table border="1">
         <tr>
            <th bgcolor="lightgray" width="100">�׸���ȣ</th>
            <th bgcolor="lightgray" width="200">�׸��̸�</th>
            <th bgcolor="lightgray" width="200">�׸��帣</th>
            <th bgcolor="lightgray" width="150">������</th>
            <!-- �߰� -->
            <th bgcolor="lightgray" width="150">�����̸�</th>
            <th bgcolor="lightgray" width="100">���Ͽ뷮</th>            
         </tr>
         <c:forEach items="${themelist}" var="theme">
            <!-- ������Ƽ�̸� ���� -->
            <tr>
               <td align="center">${theme.seq}</td>
               <td align="center"><a href="gettheme.do?seq=${theme.seq}">
                ${theme.themename}</a></td>
               <td align="center">${theme.themegenre}</td>
               <td align="center">${theme.branch}</td>
               <!-- �߰� -->
               <td align="center">
                <c:choose>
                   <c:when test="${theme.b_fsize==0}">÷������ ����</c:when>
                   <c:otherwise>
                         <img  src="<%=pjName%>/resources/images/disk.gif">${theme.picture}
                   </c:otherwise>
                </c:choose>                 
               </td>               
               <td align="center">${theme.b_fsize}byte</td>
            </tr>
         </c:forEach>
      </table>

      <br> <a href="registertheme.do" class="button">�׸� ���</a>
      <a href="theme.do" class="button" style="float: right;">Ȩ������ �׸��� �̵�!</a> <br> <br> <br>
      
   </div>
      
      





</body>
</html>