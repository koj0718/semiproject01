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
</head>
<body>

		
		<h1 style="font-size:200px;">공사중!!*^^*</h1>
		
		
		<section class="title">
			<h1>회원탈퇴</h1>
		</section>
		<br>
		
		<form id="deleteMember" action="<%=request.getContextPath() %>/deleteMemberEnd.do" method="post">
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
		</form>
		
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