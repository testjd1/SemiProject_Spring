<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
   function setPopUpStart(obj){
      if(obj.checked==true){
         var expireDate = new Date();
         expireDate.setDate(expireDate.getDate() + 1);   //쿠키 유효시간 1일로 설정
         
         //더 이상 팝업창 띄우지 않기에 체크하면 쿠키값을 true로 설정하여 재접속 시 팝업창 안띄움
         document.cookie = "notShowPop="+"true"+";path=/; expires="+expireDate.toGMTString();
         window.close();
      }
   }

</script>
<% String pjName = "/sosBoard"; %>
<title id='logo'>COOKIE</title>
</head>
<body>

<img alt="" src="<%=pjName%>/resources/images/pop.PNG" style="height:500, width:580">
<form action=""  >
   <input type="checkbox" onClick="setPopUpStart(this)" > 오늘 더이상 띄우지 않기
</form>
</body>
</html>