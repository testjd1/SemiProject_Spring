<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <!DOCTYPE html>
<html>
<head>
   <style>
      /*
      �������� ���ü
      */
      @font-face {
       font-family: 'GangwonEdu_OTFBoldA';
       src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
       font-weight: normal;
       font-style: normal;
        }

      </style>

<meta charset="UTF-8">
<title> �Խñ� �󼼺��� </title>
<% String pjName = "/sosBoard"; %>
</head>
<body>


   <div style="text-align : center;">
   		<img src="<%=pjName%>/resources/images/comic_14.jpg" width="300" height="400" >
   
   <h3 class="title" style="font-family: GangwonEdu_OTFBoldA;">FILM BY BOB</h3>
   
   
   <div class="popIn" style="font-family: GangwonEdu_OTFBoldA;">

         <ul class="topCaption">
            <li><span class="title">�帣</span> : �ڹ�</li>
            <li><span class="title">�÷��̽ð�</span> : 60��</li>
            <li><span class="title">���̵�</span>
               <span class="star">�ڡڡڡڡ�</span>
               </li>
            </ul>
            <p class="exp">���¿����� : 2023�� ����</p>

      <input type = 'button' value='�����ϱ�' id='reserve' style="font-family: GangwonEdu_OTFBoldA;">
   </div><!-- end : class : popIn -->
   </div><!-- center -->


	 <!-- Scripts -->
         <script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
  		 <script type="text/javascript">
       $("#reserve").click(function(){
           alert("���� �������� �̵��մϴ�.");
           opener.parent.location='comic.do'; 
           window.close();
         })
   </script>
   
</body>
</html>