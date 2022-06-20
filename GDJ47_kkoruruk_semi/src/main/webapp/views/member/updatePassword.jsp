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
		<section class="title">
			<h1>비밀번호 변경</h1>
		</section>
		<br>
		
		<form id="updatepassword" action="<%=request.getContextPath() %>/updatePasswordEnd.do" method="post">
			<div class="col">
				<div id="myPageContent" class="row col-8">
						
						<div class="col-8">현재 비밀번호<br>
		                    <input type="password" id="password" name="password" placeholder="********" required>
		                </div>
		                &nbsp;
		                <div class="col-8">새 비밀번호<br>
		                    <input type="password" id="password2" name="password2" placeholder="********" required>
		                </div>
		                &nbsp;
		                <div class="col-8">새 비밀번호 확인<br>
		                    <input type="password" id="passwordcheck" name="passwordcheck" placeholder="********" required>
		                </div>
		                &nbsp;
		                
		                <div class="col-8"> <!-- hidden / null 방지 -->
		                	<input type="hidden" id="userId" name="userId" value="<%=loginMember.getMemId() %>" readonly>	
		                </div>
		                &nbsp;
				<button onclick="" id="updateBtn" class="w-100 btn btn-primary btn-lg" type="submit" value="정보수정">비밀번호 변경</button>
				&nbsp;
				<button onclick="" id="updateBtn" class="w-100 btn btn-primary btn-lg" type="submit" value="창닫기">창 닫기</button>
				</div>
			</div>
		</form>
		
		<script>
		
		</script>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>