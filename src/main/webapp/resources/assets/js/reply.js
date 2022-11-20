
$(function(){
  
  //댓글추가 버튼이 눌려졌을때
  $('#replyConfirm').click(function(){
     //사용자 입력값 받아오기
     
   /*
   var param  ={seq     : $('#seq').val(), 
                userid : $('#userid').val(),
                comm   : $('#'comm').val()  }; */
   
   
   var param= $('#replyFrm').serialize();     
   //밑에꺼가 더 편함~! 폼태그에서 넘어오는거 직렬화로 가져오기
           
           
  // alert(param);              
  // console.log(param);
  
  //사용자 모르게 넘기고 화면은 가만히 둬야되니께(비동기통신)
  $.ajax({
    type   : 'post',  //입력할꺼니까
    url    : '../replies/new',   //요청 받기 - controller *경로주의*
    data   : param,
    success: function(result){
      // alert(result);
       $('#comm').val('');  //입력 성공하면 지워버리기~!
       replyList();          //입력 성공하고 입력한거 다시 가져와 버리기~!
    
    },
    error  : function(err){
       alert('error');
       console.log(err);
     }
    
  }); //end of ajax
  
  }); //end of click (댓글추가)
  
  
  replyList();
  
  function replyList(){
     $.ajax({
        type : 'get',
        url : '../replies',    //상대경로
        // data : 보내는 데이터 없음
        dataType : 'json',      // 라이브러리 필요
        success : function(result){
              //alert(result);
              //console.log(result);
              
             let replyTbl = $('#replyList'); 
             replyTbl.empty();   //미리 비워버리기~!
             
             for( row of result) 
             {
               //console.log(row);
               var tr = $('<tr/>');
               tr.append( $('<td/>').html(row['seq']) );
               
               // <tr><td>1</td></tr>
               tr.append($('<td/>').html(row['userid']));
               tr.append($('<td/>').html(row['comm']));
               tr.append( $('<td/>').html(row['commtime']) );

               tr.append('<td><button class="delete">삭쩨</button></td>');
               
               replyTbl.append(tr); 
             }
              
              },
        error : function(err){
              alert('error');
              console.log(err);   
                 }
     });
     
     
  }//replyList
  
  //삭제 버튼을 클릭했을 때
  //******************동적으로 생성된 버튼은 일반적인 이벤트 발생 안됨! -->on()함수 써야함
/*
  $('.delete').on(click,function(){
  	alert("delete");
  });
*/  
  $('#replyList').on('click','.delete',function(){
  	var btn = $(this);
  	
  	//alert(btn.text());
  	var rno=btn.parents('tr').children().eq(0).text();  	
  	//alert(rno);
  	
  	$.ajax({
  		type : 'delete',
  		url : '../replies/'+rno,
  		success : function(result){
  			replyList();
  		},
  		error : function(err){
  			alert(err);
  		} 
  	});
  	
  })
  

});