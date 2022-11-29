<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title id='logo'>S.o.S escape</title>

<meta name="viewport"
   content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<%
   String pjName = "/sosBoard";
%>
<!-- <link rel ="stylesheet" href='resources/css/test.css'> -->
<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:300,700"
   rel="stylesheet" />

<!-- error css -->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/error.css'>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
   <div id="notfound">
      <div class="notfound">
         <div class="notfound-404">
            <h1>
               4<span></span>4
            </h1>
         </div>
         <h2>접근할 수 없는 경로입니다.</h2>
         <p>다시 돌아가 이용해주세요.</p>
         <a href="<%=pjName%>/customer/index.do">Back to homepage</a>
      </div>
   </div>
</body>

</html>