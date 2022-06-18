<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.siksin.member.model.vo.Member" %>    
<%
	Member loginMember=(Member)session.getAttribute("loginMember");
	Cookie[] cookies=request.getCookies();
	String saveId=null;
	if(cookies!=null){
		for(Cookie c : cookies){
			if(c.getName().equals("saveId")){
				saveId=c.getValue();
			}
		}
	}


%> 
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Signin Template · Bootstrap v5.1</title>
<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/member/memberLoginPage.css"> --%>

    <!-- Bootstrap core CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">

  </head>
  <body class="text-center">
    
	<main class="form-signin">ogin.do
	  <form action="<%=request.getContextPath() %>/login.do" method="post">
	    <!-- <img class="mb-4" src="https://pbs.twimg.com/media/CUEhP09U8AAi9JD.png" alt="" width="72" height="57"> -->
	    <h1 class="h3 mb-3 fw-normal">반갑습니다.<br>로그인 하고 더 큰 혜택을 즐기세요!</h1>
	
	    <div class="form-floating">
	      <input type="text" class="form-control" id="floatingInput" name="userId" placeholder="아이디를 입력해 주세요." value="<%=saveId!=null?saveId:""%>">
	      
	    </div>
	    <div class="form-floating">
	      <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="비밀번호를 입력해 주세요.">	      
	    </div>
	
	    <div class="checkbox mb-3">
	      <label>
	        <input type="checkbox" name="saveId" id="saveId" <%=saveId!=null?"checked":"" %>>
				<label for="saveId">아이디저장</label>
	      </label>
	    </div>
	    <button class="w-100 btn btn-lg btn-primary" type="submit">로그인</button>
	   <a href="">아이디찾기</a> | <a href="">비밀번호찾기</a> | <a href="<%=request.getContextPath() %>/memberEnroll.do">회원가입</a>
	  </form>
	</main>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>
