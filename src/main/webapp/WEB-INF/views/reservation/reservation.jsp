<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<style>
/*
         강원교육 모두체
         */
@font-face {
	font-family: 'GangwonEdu_OTFBoldA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
/*
         마포꽃섬
         */
@font-face {
	font-family: 'MapoFlowerIsland';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoFlowerIslandA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title id='logo'>S.o.S escape</title>
<!--  select icon -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<%
	String pjName = "/sosBoard";
%>
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/main.css'>
<link rel="stylesheet"
	href="<%=pjName%>/resources/assets/css/reservation.css" />
<!-- <link rel ="stylesheet" href='resources/css/test.css'> -->


<!-- bxSlider -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">


<!-- Favicon -->
<link rel="icon" href='<%=pjName%>/resources/images/favicon.ico'>

<!-- login css -->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/login.css'>




<!-- 모달  css-->
<link rel="stylesheet" href='<%=pjName%>/resources/assets/css/modal.css'>



<!-- 로그인, 모달  jquery-->
<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

<!-- modal js -->
<script src="<%=pjName%>/resources/assets/js/modal.js"></script>






</head>
<body class="homepage is-preload">
	<div id="page-wrapper">



		<!-- Nav -->

		<nav id="nav">
			<div id="navImage">
				<a href="../customer/index.do"><img
					src="<%=pjName%>/resources/images/logo2.png" height="138px"></a>
			</div>

			<ul>
				<li><a href="../customer/index.do">Home</a></li>

				<li><a href="../customer/story.do">Story</a></li>
				<li><a href="../customer/location.do">Location</a>
					<ul>
						<li><a href="../customer/hongdae.do">홍대</a></li>
						<li><a href="../customer/anyang.do">안양</a></li>
						<li><a href="../customer/gumi.do">구미</a></li>
					</ul></li>
				<li class="current"><a href="../theme/theme.do">Theme</a>
					<ul>
						<li><a href="../theme/theme.do?themegenre=horror">공포</a></li>
						<li><a href="../theme/theme.do?themegenre=infiltration">잠입</a></li>
						<li><a href="../theme/theme.do?themegenre=comic">코믹</a></li>
						<li><a href="../theme/theme.do?themegenre=fantasy">판타지</a></li>
						<li><a href="../theme/theme.do?themegenre=emotion">감성</a></li>
						<li><a href="../customer/error.do">에러페이지</a></li>
					</ul></li>
				<li><a href="../qna/getQnaList.do">Q&A</a></li>
				<li><a href="../board/getBoardList.do">Board</a></li>
				<c:if test="${sessionScope.loginId==null}">
					<li><a id="gologin" class="btn trigger"
						href="../customer/login.do">Login</a></li>
				</c:if>
				<c:if test="${sessionScope.loginId!=null && loginId!='admin'}">
					<li><a
						href="../reservation/mypage.do?userid=${sessionScope.loginId}">Mypage</a></li>
					<li><a class="btn" href="../customer/logout.do">Logout</a></li>
				</c:if>
				<c:if test='${sessionScope.loginId=="admin"}'>
					<li><a
						href="../reservation/mypageM.do?userid=${sessionScope.loginId}">Mypage</a></li>
					<li><a class="btn" href="../customer/logout.do">Logout</a></li>
				</c:if>





			</ul>
		</nav>





		<!-- login Modal -->
		<div class="modal-wrapper">
			<a class="btn-close trigger" href="#">Close</a>
			<div class="modal">
				<!--모달에 넣고싶은 내용 넣기-->



				<div class="form-structor">
					<div class="signup">
						<h2 class="form-title" id="signup">
							<span>or</span>Sign up
						</h2>
						<div class="form-holder">
							<form method="POST" id="insert-customer"
								action="<%=pjName%>/customer/insertCustomer.do">

								<input type="text" class="input" placeholder="id" name="userid">
								<input type="text" class="input" placeholder="Name" name="name" />
								<input type="password" class="input" placeholder="Password"
									name="pass" /> <input type="email" class="input"
									placeholder="Email" name="email" /> <input type="text"
									class="input" placeholder="tel" name="tel" />

								<!--<button class="submit-btn">OK</button> -->

								<input type="submit" class="submit-btn" value="Submit"
									name="submit" />
							</form>
						</div>
					</div>

					<div class="login slide-up">
						<div class="center">
							<h2 class="form-title" id="login">
								<span>or</span>Log in
							</h2>
							<form method="POST" id="insert-customer"
								action="<%=pjName%>/customer/loginCustomer.do">
								<div class="form-holder">
									<input type="text" class="input" placeholder="id" name="userid" />
									<!--  ${sessionScope.loginId}-->
									<input type="password" class="input" placeholder="Password"
										name="pass" />
								</div>
								<!--  <button class="submit-btn">Log in</button>-->
								<input type="submit" class="submit-btn" value="Log in"
									name="login" />
							</form>

						</div>
					</div>
				</div>
			</div>
		</div>



		<!-- 모달 끝!!! -->







		<br> <br> <br> <br>
		<form method='post' id="insert-reservation"
			action="insertReservation.do">
			<div class='container'>




				<!-- 주의사항 div -->

				<div class="alertsize">
					<section class=alertsec style ="text-align:center";>
						
						<span style=" font-family: GangwonEdu_OTFBoldA; justify-content: center; align-items: center; display: flex; font-size: 32px;">예약시 주의 사항</span>
						<br> <br> <img
							src="<%=pjName%>/resources/images/rev1.PNG" alt="" />
                        <br>   <br>   <br>





					</section>
				</div>







				<!-- 테이블 div -->
				<div class="tablesize">
					<section class='revsec'>
						<h1 class='title' style="font-family: GangwonEdu_OTFBoldA;">
							<br> <span
								style="justify-content: center; align-items: center; display: flex; font-size: 32px;">예약
								정보 입력</span>
						</h1>



						<table class="tablesize2"
							style="width: 650px; height: 600px; margin-left: auto; margin-right: auto;">
							<p style="font-family: GangwonEdu_OTFBoldA; font-size: 19px"></p>



							<tbody style="font-family: GangwonEdu_OTFBoldA; font-size: 19px">


								<tr>
									<td>지점</td>
									<td><input type="text" value="${reservation.BRANCH}"
										id="branch" disabled readonly
										style="font-family: GangwonEdu_OTFBoldA; font-size: 18px; border: none; background: transparent;"></td>
									<input type="hidden" value="${reservation.BRANCH}" id="branch"
										name="branch">
								</tr>

								<tr>
									<td>테마명</td>
									<td><input type="text" value="${reservation.THEMENAME}"
										id="themename" disabled readonly
										style="font-family: GangwonEdu_OTFBoldA; font-size: 18px; border: none; background: transparent;"></td>
									<input type="hidden" value="${reservation.THEMENAME}"
										id="themename" name="themename">
								</tr>

								<tr>
									<td>예약일</td>
									<td><input type="date" class="regdate" id="regdate"
										style="font-family: GangwonEdu_OTFBoldA; font-size: 18px"
										name="regdate" onchange="changeDate(event)" required></td>
								</tr>
								<tr>
									<td>시간</td>
									<td><input type="radio" name="time" value="10:00"
										class="time">10:00 <input type="radio" name="time"
										value="12:00" class="time">12:00 <input type="radio"
										name="time" value="14:00" class="time">14:00 <input
										type="radio" name="time" value="16:00" class="time">16:00
										<input type="radio" name="time" value="18:00" class="time">18:00
										<input type="radio" name="time" value="20:00" class="time">20:00
									</td>
								</tr>
								<tr>
									<td>성함</td>
									<td><input type="text" class="inputname" id="name"
										style="width: 220px; height: 30px; font-family: GangwonEdu_OTFBoldA; font-size: 18px;"
										placeholder="성함을 입력해 주세요" onfocus="this.placeholder=''"
										onblur="this.placeholder='성함을 입력해 주세요'" name="name"
										minlength="2" maxlength="5" required></td>
								</tr>
								<tr>
									<td>연락처</td>
									<td><input type="text" class="inputtel" id="tel"
										style="width: 270px; height: 30px; font-family: GangwonEdu_OTFBoldA; font-size: 18px;"
										, 
                              placeholder="전화번호를 입력해 주세요(-제외)"
										onfocus="this.placeholder=''"
										onblur="this.placeholder='전화번호를 입력해 주세요(-제외)'" name="tel"
										minlength="13" maxlength="13" required></td>
								</tr>
								<input type="hidden" value="${sessionScope.loginId}"
									name="userid">
								<tr>
									<td>예약 인원</td>
									<td><select name="peoplecount" id="peoplecount"
										style="width: 100px; height: 35px;  font-size: 18px;">
											<option value="1" name="peoplecount" id="1"
												style="font-family: GangwonEdu_OTFBoldA; font-size: 18px;">1명</option>
											<option value="2" name="peoplecount" id="2"
												style="font-family: GangwonEdu_OTFBoldA; font-size: 18px;">2명</option>
											<option value="3" name="peoplecount" id="3"
												style="font-family: GangwonEdu_OTFBoldA; font-size: 18px;">3명</option>
											<option value="4" name="peoplecount" id="4"
												style="font-family: GangwonEdu_OTFBoldA; font-size: 18px;">4명</option>
											<option value="5" name="peoplecount" id="5"
												style="font-family: GangwonEdu_OTFBoldA; font-size: 18px;">5명</option>
											<option value="6" name="peoplecount" id="6"
												style="font-family: GangwonEdu_OTFBoldA; font-size: 18px;">6명</option>
									</select></td>
								</tr>

								<tr>
									<td>결제 비용</td>
									<td><input value="${reservation.THCOST}" id="total"
										style="font-family: GangwonEdu_OTFBoldA;" name="total"
										readonly></td>

								</tr>



							</tbody>

						</table>

					</section>
				</div>
                   <br>  <br>  <br>





				<!-- 예약하기 버튼 -->

				<div class="submits" style="text-align: center;">
					<!--            <input type="submit" class="submit" value="이전으로" name="submit"> -->
					<input type='submit' value='예약하기' id='reservation'
						style="font-family: GangwonEdu_OTFBoldA;"
						style=" display:flex; justify-content: center;">

				</div>
		</form>


	</div>

	</form>


	</div>












	<!-- Footer -->
	<footer id="footer">
		<div class="container">
			<div class="row gtr-200">
				<div class="col-12">

					<!-- About -->



				</div>
				<div class="col-12">

					<!-- Contact -->
					<section>
						<h2 class="major">
							<span>Get in touch</span>
						</h2>
						<ul class="contact">
							<li><a class="icon brands fa-facebook-f" href="#"><span
									class="label">Facebook</span></a></li>
							<li><a class="icon brands fa-twitter" href="#"><span
									class="label">Twitter</span></a></li>
							<li><a class="icon brands fa-instagram" href="#"><span
									class="label">Instagram</span></a></li>

						</ul>
					</section>

				</div>
			</div>

			<!-- Copyright -->
			<div id="copyright">
				<ul class="menu">
					<li>&copy; S.o.S escape</li>
					<li>Design by: <a>Kosmo 1조 </a></li>
				</ul>
			</div>

		</div>
	</footer>




	<!-- Scripts -->
	<script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
	<script src="<%=pjName%>/resources/assets/js/jquery.dropotron.min.js"></script>
	<script src="<%=pjName%>/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="<%=pjName%>/resources/assets/js/browser.min.js"></script>
	<script src="<%=pjName%>/resources/assets/js/breakpoints.min.js"></script>
	<script src="<%=pjName%>/resources/assets/js/util.js"></script>
	<script src="<%=pjName%>/resources/assets/js/main.js"></script>

	<!--  
   <script
      src="<%=pjName%>/resources/https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>-->
	<!-- login  js 추가-->
	<script src="<%=pjName%>/resources/assets/js/login.js"></script>
	<!-- Scripts -->
	<script src="<%=pjName%>/resources/assets/js/jquery.min.js"></script>
	<%--    <script src='<%=pjName%>/resources/assets/js/reservation.js' --%>
	<!--       type="text/javascript"></script> -->

	<script type="text/javascript">
   
   function changeDate(e){      // 날짜 눌렀을때 function
     
      var regdate = e.target.value;          // 클릭한 값
      //alert(k +"!");
      var vo  ={   themename   : $('#themename').val(), 
            'regdate' : regdate      
                     };
     
      $.ajax({
          type   : 'get',  //입력할꺼니까
          url    : 'reservedate.do',   //요청 받기 - controller *경로주의*
          data   : vo,
          dataType:'json',
          async:false,
          success: function(result){     
             $(".time").attr("disabled",false);
            for(let i =0; i<result.length; i++){
              if(result[i] == "10:00"){
                 $($(".time")[0]).attr("disabled",true);
              }
              if(result[i] == "12:00"){
                 $($(".time")[1]).attr("disabled",true);
              }
              if(result[i] == "14:00"){
                 $($(".time")[2]).attr("disabled",true);
              }
              if(result[i] == "16:00"){
                 $($(".time")[3]).attr("disabled",true);
              }
              if(result[i] == "18:00"){
                 $($(".time")[4]).attr("disabled",true);
              }
              if(result[i] == "20:00"){
                 $($(".time")[5]).attr("disabled",true);
              }
            }
         // alert("날짜 값 완료");
          // replyList
          },
          error  : function(err){
             alert('error');
             console.log(err);
           }       
        }); //end of ajax
       
   }   // 날짜 눌렀을 때 fuction end

   
   
      $("#reservation").click(function() { // 예약하기 버튼 클릭시 function
         
         var date = new Date(new Date().setDate(new Date().getDate()));      // 현재 시간
         var datecheck = new Date($("#regdate").val());
         var diftime = Math.floor((date.getTime() - datecheck.getTime())/(1000*60*60*24)); // 오늘 날짜 - 선택한 값 , 0>= 일경우 정상, +일경우 부적합
         
         if(diftime>0){
            alert("날짜를 똑바로 입력해주세요 ! ");            
            return false;
         }
       /* 유효성 검사 ( 시간 ) */
       var time = $("input[type=radio][name=time]:checked").val();        // 클릭한 시간
      // alert(time);
       if(time==null){
          alert("시간을 선택해주세요");
          return false;
       }
      }) // 예약하기 버튼 end
     $("#insert-reservation").submit(function(event){
        alert("예약 완료 되었습니다.")
     })
      
      
      $("#peoplecount").on("change",function(){ // 인원 수 변경시 total값 바로 변경
         
         var total = parseInt(${reservation.THCOST});
         var count = $(this).val();
        
         $("#total").val(count*total);
         
      }) // 인원수 변경 event end
      
      
      $(".time").click(function(){ // 시간 버튼 클릭시 function
         var date = new Date($("#regdate").val());   // 클릭한 달력
         var time = $(this).val();        // 클릭한 시간
         // alert(time);
         // alert(date);
         
         if(date=="Invalid Date"){
            alert("날짜를 먼저 선택해주세요.")
            return false;
         }
      }) // 시간 버튼 event end
      
   
      
      
      
      //전화번호입력시 자동 하이픈
      var autoHypenPhone = function(str){
          str = str.replace(/[^0-9]/g, '');
          var tmp = '';
          if( str.length < 4){
              return str;
          }else if(str.length < 7){
              tmp += str.substr(0, 3);
              tmp += '-';
              tmp += str.substr(3);
              return tmp;
          }else if(str.length < 11){
              tmp += str.substr(0, 3);
              tmp += '-';
              tmp += str.substr(3, 3);
              tmp += '-';
              tmp += str.substr(6);
              return tmp;
          }else{              
              tmp += str.substr(0, 3);
              tmp += '-';
              tmp += str.substr(3, 4);
              tmp += '-';
              tmp += str.substr(7);
              return tmp;
          }
      
          return str;
    }


    var tel = document.getElementById('tel');

    tel.onkeyup = function(){
      console.log(this.value);
      this.value = autoHypenPhone( this.value ) ;  
    }
      
      

    
    
   </script>


</body>
</html>