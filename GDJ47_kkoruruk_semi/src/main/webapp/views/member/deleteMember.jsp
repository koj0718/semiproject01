<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.siksin.member.model.vo.Member" %>  
<%
	Member loginMember=(Member)session.getAttribute("loginMember");
%>

<!doctype html>

<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<html lang="ko" class="h-100">
<head>
<meta charset="UTF-8">
<!-- <title>비밀번호 변경</title> -->


<style>

.search_list {
display:inline-block;


}


#input1{
	width: 200px;
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
	margin-top:4px;
}

#deleteMember{
	font-size:19px;
 color:red;
}



</style>



</head>
<body>

		
		<!-- <h1 style="font-size:200px;">공사중!!*^^*</h1> -->
		
		<section class="title">
			<h1>회원탈퇴</h1>
		</section>
		<br>
		
<!-- 		<img src="images/storeImages/logo6.png"> -->
		
<%-- 		<form id="deleteMember" action="<%=request.getContextPath() %>/deleteMemberEnd.do" method="post">
			<div class="col">
				<div id="deleteContent" class="row col-8">
						
						<div class="col-8" style="width:700px;">비밀번호가 일치해야 회원탈퇴가 가능합니다.<br>
											비밀번호를 입력하세요.
		                    <input type="password" id="password" name="password" placeholder="********" required>
		                </div>
		                &nbsp;
<!-- 		                <div class="col-8">새 비밀번호<br>
		                    <input type="password" id="password2" name="password2" placeholder="********" required>
		                </div>
		                &nbsp;
		                <div class="col-8">새 비밀번호 확인<br>
		                    <input type="password" id="passwordcheck" placeholder="********" required>
		                </div>
		                &nbsp; -->
		                
		                <div class="col-8"> <!-- hidden / null 방지 -->
		                	<input type="hidden" id="userId" name="userId" value="<%=loginMember.getMemId() %>" readonly>	
		                </div>	
		                &nbsp;
		        
		        <!-- 약관동의 체크박스 -->
<!-- 				<div class="checkbox pull-right">
					<div class="custom-checkbox">
						<div class="form-check">
							<input type="checkbox" name="agree" id="agree" class="form-check-input custom-control-input">
							<label class="form-check-label custom-control-label" for="agree">위 약관에 동의합니다.</label>
						</div>
					</div>
				</div> -->
		        &nbsp;
				<button onclick="" id="deleteBtn" class="w-100 btn btn-primary btn-lg" type="submit" value="회원탈퇴" style="background-color:tomato;">
					회원탈퇴
				</button>
				&nbsp;
				<button onclick="window.close()" id="closeBtn" class="w-100 btn btn-primary btn-lg" type="button" value="닫기">
					닫기
				</button>
				</div>
			</div>
		</form>  --%>
		
		
		     	<div class="enrollContainer">
        
       		<form action="<%=request.getContextPath() %>/member/deleteMemberEnd.do" method="post">
				<div class="col-8" style="width:700px;" id="deleteMember">비밀번호가 일치해야 회원탈퇴가 가능합니다.<br>          
                </div>
				<%-- <input id="input1" type="text"  name="userId" value="<%=loginMember.getMemId() %>" readonly size="30" ><br> --%>
				<div class="passwordContainer">
				<strong>비밀번호</strong><br>
				</div>
				<input id="input1" type="password" name="password" placeholder="********" required size="30"><br>


                <div class="col-8"> <!-- hidden / null 방지 -->
                	<input type="hidden" id="userId" name="userId" value="<%=loginMember.getMemId() %>" readonly>	
                </div>	
	
				
				<div class="logPageBtnContainer">
				<button type="submit" onclick="" class="btn btn-outline-dark me-2" id="logPageBtn" value="회원탈퇴">회원탈퇴</button>
				<!-- <button type="submit" class="btn-dark me-2" id="logPageBtn">로그인</button> -->
				</div>
				<div class="logPageBtnContainer">
				<button type="button" onclick="window.close()" class="btn btn-outline-dark me-2" id="logPageBtn" value="닫기">닫기</button>
				<!-- <button type="submit" class="btn-dark me-2" id="logPageBtn">로그인</button> -->
				</div>
		</form>
			<!-- </div> -->
			
			</div>
		
		
		
		
		
		
		
		<script>
		
/* 		function secessionValidate(){
			
		    if(!$("#agree").prop("checked")){
		        alert("약관에 동의해 주세요.");
		        return false;
		    }else{
		        return confirm("정말로 탈퇴 하시겠습니까?");
		          
		    }
		} */
		
		</script>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>