<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>

<style>
.logintop{
	
	margin-top:150px;

}


.loginTitle{
	margin-bottom:50px;
}


.search_list {
display:inline-block;


}


#input1{
	width: 500px;
	height:45px;
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom: 1px solid grey;
	
	font-size:18px;
	 
}
#userId_{
	width: 500px;
	height:45px;
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom: 1px solid grey;
	
	font-size:18px;

}
#password_{
	width: 500px;
	height:45px;
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom: 1px solid grey;
	
	font-size:18px;
}
#password_2{
	width: 500px;
	height:45px;
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom: 1px solid grey;
	
	font-size:18px;
}
#input2{
	width: 70px;
	height:45px;
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom : none;
	background-color: black;
	color : white;
	border-radius: 10px;
	
}

.emailContainer{

	padding-right:425px;
	padding-top:10px;
	padding-bottom:10px;
	font-size:16px;
	
}

.passwordContainer{
	padding-top:10px;
	padding-right:440px;
	padding-bottom:10px;
	font-size:16px;
}


#logPageBtn{

	width:500px;
	height:60px;
	border-radius:10px;
	font-size:18px;

}
.logPageBtnContainer{
	padding-top:30px;
}

.loginMainText{
	
}


.enrollContainer{
	display: flex;
   justify-content: center;
	margin-top:150px;
}

</style>

        
        <div class="enrollContainer">
        
        		<form name="enrollMemberFrm" action="<%=request.getContextPath() %>/memberEnrollEnd.do" method="post"  onsubmit="return fn_enrollmemberValidate();">
					<div class="emailContainer">
						<strong>아이디</strong><br>
					</div>
					<input id="userId_" type="text" name="userId" placeholder="ID 를 입력해 주세요.(4글자 이상)" size="30" ><input type="button" value="중복확인"
						onclick="fn_idDuplicate();"><br>
					
					<div class="passwordContainer">
						<strong>비밀번호</strong><br>
					</div>
					<input id="password_" type="password" name="password" placeholder="비밀번호를 입력해 주세요.(대소문자,특수문자포함)" size="30"><br>
					
					<div class="passwordContainer">
						<strong>비밀번호확인</strong><br>
					</div>
					<input id="password_2" type="password" placeholder="비밀번호 확인" size="30"><br>
					<span id="pwresult"></span>
					
					<div class="emailContainer">
						<strong>이름</strong><br>
					</div>
					<input id="input1" type="text" name="name" placeholder="이름을 입력해 주세요." size="30" ><br>
					
					<div class="emailContainer">
						<strong>이메일</strong><br>
					</div>
					<input id="input1" type="email" name="email" placeholder="이메일 주소를 입력해 주세요." size="30" ><br>
					
					<div class="emailContainer">
						<strong>닉네임</strong><br>
					</div>
					<input id="input1" type="text" name="nickname" placeholder="사용하실 닉네임을 입력해주세요." size="30" ><br>
					
					<div class="emailContainer">
						<strong>연락처</strong><br>
					</div>
					<input id="input1" type="text" name="phone" placeholder="'-' 없이 입력해주세요." size="30" ><br>
					<!-- <button id="input2" type="submit" >검색 </button> -->
					
		
	
					
					<div class="logPageBtnContainer">
					<button type="submit" class="btn btn-outline-dark me-2" id="logPageBtn">회원가입</button>
					
					</div>
			</form>
			<form name="idDuplicateFrm">
        		<input type="hidden" name="userId">
        	</form>
			
			</div>
        
        
    <script>
	const fn_idDuplicate=()=>{
		const userId=$("#userId_").val().trim();
		if(userId.length<4){
			alert("아이디는 4글자 이상이어야 합니다.");
			$("#userId_").focus();
		}else{
			const url="<%=request.getContextPath()%>/idDuplicate.do";
			const title="idDuplicateFrm";
    		open("",title,"width=300,height=200");
    		console.log(idDuplicateFrm);
    		console.log(idDuplicateFrm.userId);
    		idDuplicateFrm.userId.value=userId;
    		idDuplicateFrm.method="post";
    		idDuplicateFrm.action=url;
    		idDuplicateFrm.target=title;
    		idDuplicateFrm.submit();
		}	
	}
	
    
    
    	
	$(()=>{
    	$("#password_2").keyup(e=>{
    		const pwVal=$("#password_").val();
    		const pwCkVal=$(e.target).val();
    		if(pwCkVal.trim().length>4){
    			if(pwCkVal===pwVal){
    				$("#pwresult").text("비밀번호가 일치합니다.").css("color","green");
    			}else{
    				$("#pwresult").text("비밀번호가 불일치합니다.").css("color","red");
    			}
    		}else{
    			$("#pwresult").text("");
    		}
    	});
	})
	
	
	const fn_enrollmemberValidate=()=>{
    		const userId=$("#userId_").val();
    		if(userId.trim().length<4){
    			alert("아이디는 4글자이상으로 작성하세요");
    			$("#userId_").focus();
    			return false;
    		}
			const exr=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
    		
    		//password가 8글자이상
    		const password=$("#password_").val();
    		if(password.trim().length<8){
				alert("패스워드는 8글자 이상이어야합니다.");
				$("#password_2").val("");
				$("#password_").focus();
				return false;
    		}
    		
    		if(!exr.test(password)){
				alert("패스워드는 대소문자, 특수문자 포함이어야합니다");
				$("#password_2").val("");
				$("#password_").focus();
				return false;
    		}
    		return true;
    	}
    
	
	
	</script>
    	

    

  
<%@ include file="/views/common/footer.jsp" %>
