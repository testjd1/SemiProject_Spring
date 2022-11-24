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
            <th bgcolor="lightgray" width="100">테마번호</th>
            <th bgcolor="lightgray" width="200">테마이름</th>
            <th bgcolor="lightgray" width="200">테마장르</th>
            <th bgcolor="lightgray" width="150">지점명</th>
            <!-- 추가 -->
            <th bgcolor="lightgray" width="150">파일이름</th>
            <th bgcolor="lightgray" width="100">파일용량</th>            
         </tr>
         <c:forEach items="${themelist}" var="theme">
            <!-- 프라퍼티이름 변경 -->
            <tr>
               <td align="center">${theme.seq}</td>
               <td align="center"><a href="gettheme.do?seq=${theme.seq}">
                ${theme.themename}</a></td>
               <td align="center">${theme.themegenre}</td>
               <td align="center">${theme.branch}</td>
               <!-- 추가 -->
               <td align="center">
                <c:choose>
                   <c:when test="${theme.b_fsize==0}">첨부파일 없음</c:when>
                   <c:otherwise>
                         <img  src="<%=pjName%>/resources/images/disk.gif">${theme.picture}
                   </c:otherwise>
                </c:choose>                 
               </td>               
               <td align="center">${theme.b_fsize}byte</td>
            </tr>
         </c:forEach>
      </table>

      <br> <a href="registertheme.do" class="button">테마 등록</a>
      <a href="theme.do" class="button" style="float: right;">홈페이지 테마로 이동!</a> <br> <br> <br>
      
   </div>
      
      





</body>
</html>