$("#submit").on("click", function(){				
				if($("#pass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#pass").focus();
					return false;
				}
				if($("#name").val()==""){
					alert("성명을 입력해주세요.");
					$("#name").focus();
					return false;
				}
				if($("#tel").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#tel").focus();
					return false;
				}
				if($("#email").val()==""){
					alert("이메일을 입력해주세요.");
					$("#email").focus();
					return false;
				}else{
					alert("수정이 완료되었습니다. 다시 로그인 하십시오.");
					
				}
			});
			
			$("#cancle").click(function(){
					alert("회원 정보 수정을 취소합니다.");				
			});
			