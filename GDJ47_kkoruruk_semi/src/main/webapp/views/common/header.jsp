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

	<!-- jQuery -->
<!-- 	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script> -->
	<!-- Bootstrap core CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<html lang="ko" class="h-100">
<head>

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/member/myPage.css">

    <title>꼬르륵</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/cover/">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/main/mainpage.css"/>
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>

<!--nav -->
    
    <!-- Custom styles for this template -->
    <link href="cover.css" rel="stylesheet">
    
</head>
<body class="d-flex h-100 text-center text-black ">

<script>
	
	$("#loginHidden").hide();
	
</script>

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
	<header class="mb-auto">
  	<!-- 로그인 전 노출 버튼 -->
    <div>
      <h3 class="float-md-start mb-0">kkoruruk</h3>
      <nav class="nav nav-masthead justify-content-center float-md-end">
      	<div>
      		<%-- <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/location/searchAddress.do">현재 위치로 주소찾기</a> --%>
      		<a class="nav-link active" aria-current="page" href="#" onclick="corrent_location();">현재 위치로 주소찾기</a>
      	</div>
      <%if(loginMember==null) {%>
        <div>
        	<a class="nav-link" href="<%=request.getContextPath()%>/memberloginpage.do">로그인</a>
        </div>	
    
    <!-- 로그인 시 노출 -->
 	<%} else{%>
	<div id="loginHidden" class="dropdown">
      <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
        <strong><%=loginMember.getMemNick() %></strong>
      </a>
      <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
        <li><a class="dropdown-item" href="#">마이페이지</a></li>
        <li><a class="dropdown-item" href="#">찜한가게</a></li>
        <li><a class="dropdown-item" href="#">리뷰관리</a></li>
        <li><a class="dropdown-item" href="#">주문내역</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" onclick="fn_logout();">로그아웃</a></li>
      </ul>
	<% } %>
    <div class=>
        <a class="nav-link" href="#">주문표</a>
    </div>
      </nav>
    </div>
    <script>
    	const corrent_location=()=>{
    		const url="<%=request.getContextPath()%>/correntAddress.do";
			const title="correntLocation";
    		open(url,title,"width=395,height=520");
    	}
	    const fn_logout=()=>{
			location.replace("<%=request.getContextPath()%>/logout.do");
		}			
	</script>
  </header>