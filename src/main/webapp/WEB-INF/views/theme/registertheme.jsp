<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% String pjName = "/sosBoard"; %>
<!-- main css -->
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css' />
      <link rel="stylesheet" href='<%=pjName%>/resources/assets/css/qna.css' />
      
      <!-- Favicon -->
        <link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'> 


<script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
<script src="<%=pjName%>/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="<%=pjName%>/resources/assets/js/jquery.scrolly.min.js"></script>



<title id='logo'>S.o.S escape</title>
</head>
<body>

<div class="container">
    
      <hr>
      <!-- 1. 폼태그에 속성 추가  -->
      <form action="savetheme.do"  method='post' enctype="multipart/form-data"> 
         <table border="1" cellpadding="0" cellspacing="0" >
            <!-- 2. 각 항목에  name 맞추기 -->
<!--             <tr> -->
<!--                <td bgcolor="lightyellow" width="10">테마 번호</td> -->
<!--                <td align="left"><input type="text" name="seq" id="seq"/></td> -->
<!--             </tr> -->
            <tr>
               <td bgcolor="lightgray" width="100">테마 이름</td>
               <td align="center"><input type="text" name="themename" id="themename" required/></td>
            </tr>
            <tr>
               <td bgcolor="lightgray" width="100">테마 장르</td>
               <td align="center"><input type="text" name="themegenre" id="themegenre" required/></td>
            </tr>
            <tr>
               <td bgcolor="lightgray" width="100">테마 레벨</td>
               <td align="center"><input type="text" name="thlevel" id="thlevel" required/></td>
            </tr>
            <tr>
               <td bgcolor="lightgray" width="100">진행 시간</td>
               <td align="center"><input type="text" name="runtime" id="runtime" required/></td>
            </tr>
            
            <tr>
               <td bgcolor="lightgray" width="150">인당 테마 가격</td>
               <td align="center"><input type="text" name="thcost" id="thcost" required/></td>
            </tr>
            <tr>
               <td bgcolor="lightgray" width="150">추천 예약 인원</td>
               <td align="center"><input type="text" name="peoplecount" id="peoplecount" required/></td>
            </tr>
            <tr>
               <td bgcolor="lightgray" width="100">지점명</td>
               <td align="center"><input type="text" name="branch" id="branch" required/></td>
            </tr>
            <tr>
               <td bgcolor="lightgray" width="100">테마 설명</td>
               <td align="center"><textarea name="content" id="content" cols="40" rows="10" required></textarea></td>
            </tr>
             <tr>
               <td bgcolor="lightgray" width="70" width="100">테마 사진</td><td align="left">
               <input type="file" name="file" id="picture" maxlength="60" size="40" required></td>
            </tr>
<!--             <tr> -->
<!--                <td bgcolor="orange">파일 크기</td> -->
<!--                <td align="left"><input type="text" name="b_fsize" id="b_fsize"/></td> -->
<!--             </tr> -->
            
            <!-- 추가항목 끝 -->
            <tr>
               <td colspan="2" align="center"><input type="submit"   value="테마 등록"   id="regiok"/></td>
            </tr>
            
         </table>
      </form>
      <hr>
<a href="getthemelist.do" class="button" style="float: right;">테마 목록</a>
</div>
      





<script type="text/javascript">
	
    $("#regiok").click(function() {
    	var result = confirm('등록하시겠습니까?');

    	  if(!result){
    		  return false;
    		  }
     })
      
     
   </script>



</body>
</html>