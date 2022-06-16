<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>	
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/member/memberLoginPage.css">
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>	
</head>
<body>
	<main>
		<div class="login_box">
        	<a href="/"><img src="/img/bamin2.png" alt="이미지" class="bm_img"></a>
				<form action="<%=request.getContextPath() %>/memberEnrollEnd.do" method="post" >
				
					<div class="input_aera">
					
		            	<input type="text" placeholder="아이디를 입력해 주세요" name="userId" id="userId_" >
	            	
	            	</div>          
		               
					<div class="input_aera">
								
						<input type="password" class="password1" id="password_" name="password" maxlength="20"  placeholder="비밀번호를 입력해 주세요">
					
					</div>
	               
					<div class="input_aera">
									
						<input type="password" class="password2" id="password_2" maxlength="20"  placeholder="비밀번호를 한번더 입력해 주세요">
						<span class="pwresult"></span>			    
	               	
	               	</div>
	               	
	               	<div class="input_aera">
	              
	               		<input type="text" name="name" class="name" id="name" placeholder="이름을 입력해 주세요" >
		                
               		</div>
		               
	               	<div class="input_aera">
	              
	               		<input type="text" name="email" class="email" id="email" placeholder="이메일을 입력해 주세요" >
		                
               		</div>
		               
					<div class="input_aera">
				
						<input type="text" class="nickname" name="nickname" id="nickname" maxlength="20"  placeholder="사용하실 닉네임을 입력해 주세요">
	     
					</div>
		               
		            
					<div class="input_aera">
					
						<input type=number name="phone" value="" class="phone" id="phone" placeholder="'-' 없이 입력해 주세요" maxlength="11" >	                   
	                </div>
	                
	               <input type="submit" value="회원가입" class="login_btn" >
			</form>
        </div>
        
        
        
        <script>
    	<%-- const fn_idDuplicate=()=>{
    		const userId=$("#userId_").val().trim();
    		if(userId.length<4){
    			alert("아이디는 4글자 이상이어야 합니다.");
    			$("#userId_").focus();
    		}else{
    			const url="<%=request.getContextPath()%>/member/idDuplicate.do";
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
    		//아이디의 길이 4이상
    		const userId=$("#userId_").val();
    		if(userId.trim().length<4){
    			alert("아이디는 4글자이상으로 작성하세요");
    			/* $("#userId_").val(""); */
    			$("#userId_").focus();
    			return false;
    		}
    		const exr=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
    		
    		//password가 8글자이상
    		const password=$("#password_").val();
    		if(password.trim().length<8 || !exr.test(password)){
				alert("패스워드는 8글자 이상이어야합니다.");
				$("#password_2").val("");
				$("#password_").focus();
				return false;
    		}
    		return true;
    	}
    
    </script> --%>
 
    </main>
</body>
</html>
