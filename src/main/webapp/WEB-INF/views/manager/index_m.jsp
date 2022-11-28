<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>S.o.S 관리자 페이지</title>

<% String pjName = "/sosBoard"; %>

<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description"
   content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
<meta name="author" content="Xiaoying Riley at 3rd Wave Media">
<link rel="shortcut icon"
   href="<%=pjName%>/resources/images/favicon1.ico">

<!-- FontAwesome JS-->
<script defer src="<%=pjName%>/resources/assets/js/font/all.min.js"></script>

<!-- App CSS -->
<link id="theme-style" rel="stylesheet"
   href="<%=pjName%>/resources/assets/css/potal.css">

</head>

<body class="app">
   <header class="app-header fixed-top">

      <div id="app-sidepanel" class="app-sidepanel">
         <div id="sidepanel-drop" class="sidepanel-drop"></div>
         <div class="sidepanel-inner d-flex flex-column">
            <a href="#" id="sidepanel-close" class="sidepanel-close d-xl-none">&times;</a>
            <div class="app-branding">
               <a class="app-logo" href="../manager/index_m.do"><img
                  class="logo-icon me-2"
                  src="<%=pjName%>/resources/images/logo2.png" alt="logo"><span
                  class="logo-text">SoS ADMIN</span></a>

            </div>
            <!--//app-branding-->

            <nav id="app-nav-main" class="app-nav app-nav-main flex-grow-1">
               <ul class="app-menu list-unstyled accordion" id="menu-accordion">
                  <li class="nav-item">
                     <!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
                     class="nav-link active" href="../manager/index_m.do"> <span
                        class="nav-icon"> <svg width="1em" height="1em"
                              viewBox="0 0 16 16" class="bi bi-house-door"
                              fill="currentColor" xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd"
                                 d="M7.646 1.146a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 .146.354v7a.5.5 0 0 1-.5.5H9.5a.5.5 0 0 1-.5-.5v-4H7v4a.5.5 0 0 1-.5.5H2a.5.5 0 0 1-.5-.5v-7a.5.5 0 0 1 .146-.354l6-6zM2.5 7.707V14H6v-4a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5v4h3.5V7.707L8 2.207l-5.5 5.5z" />
        <path fill-rule="evenodd"
                                 d="M13 2.5V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
      </svg>
                     </span> <span class="nav-link-text">HOME</span>
                  </a> <!--//nav-link-->
                  </li>
                  <!--//nav-item-->
                  <li class="nav-item">
                     <!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
                     class="nav-link" href="../theme/getthemelist.do"> <span class="nav-icon">
                           <svg width="1em" height="1em" viewBox="0 0 16 16"
                              class="bi bi-folder" fill="currentColor"
                              xmlns="http://www.w3.org/2000/svg">
  <path
                                 d="M9.828 4a3 3 0 0 1-2.12-.879l-.83-.828A1 1 0 0 0 6.173 2H2.5a1 1 0 0 0-1 .981L1.546 4h-1L.5 3a2 2 0 0 1 2-2h3.672a2 2 0 0 1 1.414.586l.828.828A2 2 0 0 0 9.828 3v1z" />
  <path fill-rule="evenodd"
                                 d="M13.81 4H2.19a1 1 0 0 0-.996 1.09l.637 7a1 1 0 0 0 .995.91h10.348a1 1 0 0 0 .995-.91l.637-7A1 1 0 0 0 13.81 4zM2.19 3A2 2 0 0 0 .198 5.181l.637 7A2 2 0 0 0 2.826 14h10.348a2 2 0 0 0 1.991-1.819l.637-7A2 2 0 0 0 13.81 3H2.19z" />
</svg>
                     </span> <span class="nav-link-text">Theme</span>
                  </a> <!--//nav-link-->
                  </li>
                  <!--//nav-item-->
                  <li class="nav-item">
                     <!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
                     class="nav-link" href="../board/getBoardList.do"> <span class="nav-icon">
                           <svg width="1em" height="1em" viewBox="0 0 16 16"
                              class="bi bi-card-list" fill="currentColor"
                              xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd"
  d="M14.5 3h-13a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
  <path fill-rule="evenodd"
                                 d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8zm0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5z" />
  <circle cx="3.5" cy="5.5" r=".5" />
  <circle cx="3.5" cy="8" r=".5" />
  <circle cx="3.5" cy="10.5" r=".5" />
</svg>
                     </span> <span class="nav-link-text">Board</span>
                  </a> <!--//nav-link-->
                  </li>
                  <!--//nav-item-->

                  <li class="nav-item">
                     <!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
                     class="nav-link" href="../qna/getQnaList.do"> <span class="nav-icon">
                           <svg width="1em" height="1em" viewBox="0 0 16 16"
                              class="bi bi-bar-chart-line" fill="currentColor"
                              xmlns="http://www.w3.org/2000/svg">
     <path fill-rule="evenodd"
                                 d="M11 2a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v12h.5a.5.5 0 0 1 0 1H.5a.5.5 0 0 1 0-1H1v-3a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v3h1V7a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1v7h1V2zm1 12h2V2h-2v12zm-3 0V7H7v7h2zm-5 0v-3H2v3h2z" />
   </svg>
                     </span> <span class="nav-link-text">Q&A</span>
                  </a> <!--//nav-link-->
                  </li>
                  <!--//nav-item-->
                  <!--//nav-item-->
                  <li class="nav-item">
                     <!--//Bootstrap Icons: https://icons.getbootstrap.com/ --> <a
                     class="nav-link" href="../reservation/mypageM.do?userid=${sessionScope.loginId}"> <span class="nav-icon">
                           <svg width="1em" height="1em" viewBox="0 0 16 16"
                              class="bi bi-folder" fill="currentColor"
                              xmlns="http://www.w3.org/2000/svg">
  <path
                                 d="M9.828 4a3 3 0 0 1-2.12-.879l-.83-.828A1 1 0 0 0 6.173 2H2.5a1 1 0 0 0-1 .981L1.546 4h-1L.5 3a2 2 0 0 1 2-2h3.672a2 2 0 0 1 1.414.586l.828.828A2 2 0 0 0 9.828 3v1z" />
  <path fill-rule="evenodd"
                                 d="M13.81 4H2.19a1 1 0 0 0-.996 1.09l.637 7a1 1 0 0 0 .995.91h10.348a1 1 0 0 0 .995-.91l.637-7A1 1 0 0 0 13.81 4zM2.19 3A2 2 0 0 0 .198 5.181l.637 7A2 2 0 0 0 2.826 14h10.348a2 2 0 0 0 1.991-1.819l.637-7A2 2 0 0 0 13.81 3H2.19z" />
</svg>
                     </span> <span class="nav-link-text">Reservation</span>
                  </a> <!--//nav-link-->
                  </li>

               </ul>
               <!--//app-menu-->
            </nav>
            <!--//app-nav-->
            <div class="app-sidepanel-footer">
               <nav class="app-nav app-nav-footer">
                  <ul class="app-menu footer-menu list-unstyled">

                  </ul>
                  <!--//footer-menu-->
               </nav>
            </div>
            <!--//app-sidepanel-footer-->

         </div>
         <!--//sidepanel-inner-->
      </div>
      <!--//app-sidepanel-->
   </header>
   <!--//app-header-->

   <div class="app-wrapper">

      <div class="app-content pt-3 p-md-3 p-lg-4">
         <div class="container-xl">

            <h1 class="app-page-title">매출 관리</h1>


            <div class="row g-4 mb-4">
               <div class="col-12 col-lg-6">
                  <div class="app-card app-card-chart h-100 shadow-sm">
                     <div class="app-card-header p-3">
                        <div class="row justify-content-between align-items-center">
                           <div class="col-auto">
                              <h4 class="app-card-title">지점 별 매출</h4>
                           </div>
                           <!--//col-->

                        </div>
                        <!--//row-->

                     </div>
                     <!--//app-card-header-->
                     <div class="app-card-body p-3 p-lg-4">

                        <div class="chart-container">
                           <canvas id="canvas-wherechart"></canvas>
                        </div>
                     </div>
                     <!--//app-card-body-->
                  </div>
                  <!--//app-card-->
               </div>
               <!--//col-->
               <div class="col-12 col-lg-6">
                  <div class="app-card app-card-chart h-100 shadow-sm">
                     <div class="app-card-header p-3">
                        <div class="row justify-content-between align-items-center">
                           <div class="col-auto">
                              <h4 class="app-card-title">날짜 별 매출 ( 날짜를 체크해주세요 )</h4>
                           </div>
                           <!--//col-->

                        </div>
                        <!--//row-->
                     </div>
                     <!--//app-card-header-->
                     <div class="app-card-body p-3 p-lg-4">
                        <div class="mb-3 d-flex">

                           <input type="date" class="regdate1" id="regdate1"
                              name="regdate1" onchange="checkDate1(event)"> ~ <input
                              type="date" class="regdate2" id="regdate2" name="regdate2"
                              onchange="checkDate2(event)">
                        </div>
                        <div class="chart-container">
                           <canvas id="canvas-daychart"></canvas>
                        </div>
                     </div>
                     <!--//app-card-body-->
                  </div>
                  <!--//app-card-->
               </div>
               <!--//col-->

            </div>
            <!--//row-->
            <div class="row g-4 mb-4">
               <div class="col-12 col-lg-6">
                  <div class="app-card app-card-progress-list h-100 shadow-sm">
                     <div class="app-card-header p-3">
                        <div class="row justify-content-between align-items-center">
                           <div class="col-auto">
                              <h4 class="app-card-title">테마 별 매출</h4>
                           </div>
                           <!--//col-->
                           
                           <!--//col-->
                        </div>
                        <!--//row-->
                     </div>
                     <!--//app-card-header-->

                     <div class="app-card-body p-3 p-lg-4">
                  
                        <div class="chart-container">
                           <canvas id="canvas-themechart"></canvas>
                        </div>
                     </div>
                     <!--//app-card-body-->
                  </div>
                  <!--//app-card-->
               </div>
               <!--//col-->




               <div class="col-12 col-lg-6">
                  <div class="app-card app-card-stats-table h-100 shadow-sm">
                     <div class="app-card-header p-3">
                        <div class="row justify-content-between align-items-center">
                           <div class="col-auto">
                              <h4 class="app-card-title">시간 별 매출</h4>
                           </div>
                           <!--//col-->
                        
                           <!--//col-->
                        </div>
                        <!--//row-->
                     </div>
                     <!--//app-card-header-->

                     <div class="app-card-body p-3 p-lg-4">
                     
                        <div class="chart-container">
                           <canvas id="canvas-Timechart"></canvas>
                        </div>
                     </div>
                     <!--//app-card-body-->
                  </div>
                  <!--//app-card-->
               </div>
               <!--//col-->
            </div>
            <!--//row-->



    


               <!-- Javascript -->
               <script src="<%=pjName%>/resources/assets/js/popper.min.js"></script>
               <script src="<%=pjName%>/resources/assets/js/bootstrap.min.js"></script>

               <!-- Charts JS -->
               <script src="<%=pjName%>/resources/assets/js/chart.min.js"></script>
               <script src="<%=pjName%>/resources/assets/js/index-charts.js"></script>

               <!-- Page Specific JS -->
               <script src="<%=pjName%>/resources/assets/js/app.js"></script>
               <!-- Jquery -->
               <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>


<script type="text/javascript">
/* 지점 별 매출 차트 */   
   var jsonData = ${json1};
   var jsonObject = JSON.stringify(jsonData);
   var jData = JSON.parse(jsonObject);
         
   var labelList = new Array();
   var valueList = new Array();
   var colorList = new Array();
   for(var i = 0; i<jData.length; i++) {
      var d = jData[i];
      labelList.push(d.branch);
      valueList.push(d.total);
      colorList.push(colorize());
   }
         
         
   var data = {
               labels: labelList,
               datasets: [{
                     label : '지점별 매출',
                     backgroundColor: colorList,
                     data : valueList
               }],
               options : {
                     title : {
                     display : true,
                     text: '지점 별 매출 합계'
                     }
               }
   };
         
var ctx1 = document.getElementById('canvas-wherechart').getContext('2d');
new Chart(ctx1, {
      type: 'bar',
     data: data
   });
   
function colorize() {
var r = Math.floor(Math.random()*200);
var g = Math.floor(Math.random()*200);
var b = Math.floor(Math.random()*200);
var color = 'rgba(' + r + ', ' + g + ', ' + b + ', 0.7)';
return color;
}

/*지점별 매출 차트 끝 */

/*기간별 매출 차트 */

/*날짜 1 start */
var regdate1 = document.getElementById('regdate1');
var todaydate1 = new Date();
var year1=todaydate1.getFullYear();
var month1 =todaydate1.getMonth() + 1;
var date1 = todaydate1.getDate();
/*
alert(year1);
alert(month1);
alert(date1);
*/

if(month1>=10){
   month1 = month1;
}
if(month1 <10){
   month1 = '0' + month1;
}

var changedate1 =year1 +'-'+month1+'-'+date1;
// alert(changedate1);   //'2022-11-28'

regdate1.setAttribute("max", changedate1);

function checkDate1(event){
   
   var regdate2 = document.getElementById('regdate2');
   regdate2.value = null;
   regdate2.setAttribute("min",regdate1.value);

   
   
}


/* 날짜 1 end*/

// alert(changedate1);   //'2022-11-28'





function checkDate2(event){
   var day1 = regdate1.value;
   var day2 = regdate2.value;
   
   /*
   alert(day1);
   alert(day2);
   */
   var vo  ={ 'day1'   : day1, 
            'day2'   : day2 };
   //console.log(vo);
    $.ajax({
         type   : 'get',  //입력할꺼니까
         url    : 'managerdate.do',   //요청 받기 - controller *경로주의*
         data   : vo,
         dataType:'json',
         //async:false,
         success: function(result){
           // alert(result.length);
           // console.log(result);      //4
              
                    
              var labelList2 = new Array();
              var valueList2 = new Array();
              var colorList2 = new Array();
              $.each(result,function(index,item){
                 
                 labelList2.push(item.date);
                 valueList2.push(item.total);
                 colorList2.push(colorize());
                // alert(item.date);
              }) 
                    
                   
              var data2 = {
                
                          labels: labelList2,
                          datasets: [{
                             label : '날짜별 매출',
                                backgroundColor: colorList2,
                                data : valueList2
                          }],
                          options : {
                                title : {
                                display : true,
                                text: '날짜별 매출 합계'
                                }
                          }
              
              };
              if(window.chartObj!=undefined){
                 window.chartObj.destroy();
              }
                   
           var ctx2 = document.getElementById('canvas-daychart').getContext('2d'); 
           chartObj = new Chart(ctx2, {
                 type: 'bar',
                data: data2
              });

         
         },
         error  : function(err){
            alert('error');
            console.log(err);
          }       
       }); //end of ajax
   
}




/*기간별 매출 차트 끝*/




/* 테마별 매출 차트 */   
   var jsonData3 = ${json3};
   var jsonObject3 = JSON.stringify(jsonData3);
   var jData3 = JSON.parse(jsonObject3);
         
   var labelList3 = new Array();
   var valueList3 = new Array();
   var colorList3 = new Array();
   for(var i = 0; i<jData3.length; i++) {
      var d = jData3[i];
      labelList3.push(d.theme);
      valueList3.push(d.total);
      colorList3.push(colorize());
   }
         
         
   var data3 = {
               labels: labelList3,
               datasets: [{
                  label : '테마별 매출',
                     backgroundColor: colorList3,
                     data : valueList3
               }],
               options : {
                     title : {
                     display : true,
                     text: '테마 별 매출 합계'
                     }
               }
   };
         
var ctx3 = document.getElementById('canvas-themechart').getContext('2d');
new Chart(ctx3, {
      type: 'pie',
     data: data3
   });
   


/*테마별 매출 차트 끝 */




/* 시간 별 매출 차트 */   
   var jsonData4 = ${json4};
   var jsonObject4 = JSON.stringify(jsonData4);
   var jData4 = JSON.parse(jsonObject4);
         
   var labelList4 = new Array();
   var valueList4 = new Array();
   var colorList4 = new Array();
   for(var i = 0; i<jData4.length; i++) {
      var d = jData4[i];
      labelList4.push(d.time);
      valueList4.push(d.total);
      colorList4.push(colorize());
   }
         
         
   var data4 = {
               labels: labelList4,
               datasets: [{
                  label : '시간별 매출',
                     backgroundColor: colorList4,
                     data : valueList4
               }],
               options : {
                     title : {
                     display : true,
                     text: '시간 별 매출 합계'
                     }
               }
   };
         
var ctx4 = document.getElementById('canvas-Timechart').getContext('2d');
new Chart(ctx4, {
      type: 'bar',
     data: data4
   });
   

/*시간별 매출 차트 끝 */


   </script>

</body>
</html>