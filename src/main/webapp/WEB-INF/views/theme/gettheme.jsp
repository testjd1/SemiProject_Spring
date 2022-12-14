<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title id='logo'>S.o.S escape</title>
<%
	String pjName = "/sosBoard";
%>
<script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
<script src="<%=pjName%>/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="<%=pjName%>/resources/assets/js/jquery.scrolly.min.js"></script>

<!-- main css -->
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css' />
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/qna.css' />

<!-- alert창 -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />      
      
      <!-- Favicon -->
        <link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'> 


</head>

<body>


    <div class="container">
	
	<hr>
	<!-- 1. 폼태그에 속성 추가  -->
	<form action="updatetheme.do" method='post' enctype="multipart/form-data" id="updateForm">
		<input name="seq" type="hidden" value="${theme.seq}" />
		<table border="1" cellpadding="0" cellspacing="0">
			<!-- 2. 각 항목에  name 맞추기 -->
			<!-- 				<tr> -->
			<!-- 					<td bgcolor="lightyellow" width="10">테마 번호</td> -->
			<!-- 					<td align="left"><input type="text" name="seq" id="seq"/></td> -->
			<!-- 				</tr> -->
			<tr>
				<td bgcolor="lightyellow" width="100">테마 이름</td>
				<td align="left"><input type="text" name="themename"
					id="themename" value="${theme.themename}" required /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow" width="100">테마 장르</td>
				<td align="left"><input type="text" name="themegenre"
					id="themegenre" value="${theme.themegenre}" required /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow"  width="100">테마 레벨</td>
				<td align="left"><input type="text" name="thlevel" id="thlevel"
					value="${theme.thlevel}" required /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow"  width="100">진행 시간</td>
				<td align="left"><input type="text" name="runtime" id="runtime"
					value="${theme.runtime}" required /></td>
			</tr>

			<tr>
				<td bgcolor="lightyellow"  width="150">인당 테마 가격</td>
				<td align="left"><input type="text" name="thcost" id="thcost"
					value="${theme.thcost}" required /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow"  width="150">추천 예약 인원</td>
				<td align="left"><input type="text" name="peoplecount"
					id="peoplecount" value="${theme.peoplecount}" required /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow"  width="100">지점명</td>
				<td align="left"><input type="text" name="branch" id="branch"
					value="${theme.branch}" required /></td>
			</tr>
			<tr>
				<td bgcolor="lightyellow"  width="100">테마 설명</td>
				<td align="left"><textarea name="content" id="content"
						cols="40" rows="10" required>${theme.content}</textarea></td>
			</tr>

			<c:if test="${theme.picture != null}">
				<tr>
					<td bgcolor="lightyellow" width="70"  width="100">테마 사진</td>
					<td align="left"><img
						src="<%=pjName%>/resources/images/${theme.picture}" width='300'
						height='200'> <br>
						<hr> <input type="file" name="file" id="picture"
						maxlength="60" size="40"></td>
				</tr>
			</c:if>

			
                

		</table>
		    
		     <input type="button" id='modiok' name='modiok' value="테마 수정"/>
	</form>
	<hr> 
	
     <a href="#" id="delok" class="button" align="center">테마 삭제</a>
	 <a href="getthemelist.do" class="button" style="float: right;">테마 목록</a> <br>  <br>  <br>  <br> 
	</div>

	<script type="text/javascript">
	
    $("#delok").click(function() {
    	Swal.fire({
            title: '삭제하시겠습니까?',
            text: "삭제할 시 모든 테마 정보가 삭제됩니다!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#b1ddab',
            cancelButtonColor: '#d33',
            confirmButtonText: '삭제'
          }).then((result) => {
            if (result.isConfirmed) {
            	Swal.fire({
                    title : '삭제 성공',
                    text : '테마가 삭제되었습니다.',
                    icon : 'success',
                    confirmButtonColor: '#b1ddab'
                  }).then((result) => {
                	  location.href="deletetheme.do?seq="+${theme.seq};
                   })//END THEN
            }//end if
          })//END THEN

     })
      
    $("#modiok").click(function() {  
    	Swal.fire({
            title: '수정하시겠습니까?',
            text: "수정할 시 모든 정보가 바뀐 이후로 저장됩니다!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#b1ddab',
            cancelButtonColor: '#d33',
            confirmButtonText: '수정'
          }).then((result) => {
            if (result.isConfirmed) {
            	Swal.fire({
                    title : '수정 성공',
                    text : '테마가 수정되었습니다.',
                    icon : 'success',
                    confirmButtonColor: '#b1ddab'
                  }).then((result) => {
                	  $("#updateForm").submit();
                   })//END THEN
            }//end if
          })//END THEN

     }) 
     
     
     
   </script>
</body>
</html>