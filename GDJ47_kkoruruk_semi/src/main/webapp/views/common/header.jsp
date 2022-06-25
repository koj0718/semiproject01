<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.siksin.member.model.vo.Member" %>    
<%
	String mapAddress=(String)session.getAttribute("mapAddress");
	String detAddress=(String)session.getAttribute("detAddress");
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
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script> 
	<!-- Bootstrap core CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<html lang="ko" class="h-100">
<head>

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
<!-- <body class="d-flex h-100 text-center text-black "> -->
<body>
<script>
	
	$("#loginHidden").hide();
	
</script>

<%-- <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
	<header class="mb-auto">
  	<!-- 로그인 전 노출 버튼 -->
    <div>
   	 <a href="<%=request.getContextPath() %>/">
      <h3 class="float-md-start mb-0" id="hommebtn" style=color:black;">kkoruruk</h3>
     </a>
      <nav class="nav nav-masthead justify-content-center float-md-end">
      	<div class="navLocation">
      		<a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/location/searchAddress.do">현재 위치로 주소찾기</a>
      		<a class="nav-link active" aria-current="page" href="#" onclick="corrent_location();">현재 위치로 주소찾기</a>
      	</div>
      <%if(loginMember==null) {%>
        <div class="logContainer">
        	<a class="nav-link" href="<%=request.getContextPath()%>/memberloginpage.do">로그인</a>
        </div>	 --%>
        
        
        
   <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="<%=request.getContextPath() %>/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        <h2>kkoruruk</h2>
      </a>
      

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <%if(detAddress==null) {%>
        <li><a href="#" class="nav-link px-2 link-secondary" onclick="corrent_location();" id="headerLocation"> <img src="images/location-01.png" width="35" height="35"> &nbsp 현재 위치로 주소찾기&nbsp&nbsp&nbsp  <img src="images/locationDown-01.png" width="15" height="15"></a></li>
        <%} else{ %>
        <li><a href="#" class="nav-link px-2 link-secondary" onclick="corrent_location();" id="headerLocation"> <img src="images/location-01.png" width="35" height="35"><%=mapAddress %>&nbsp<%=detAddress %>&nbsp<img src="images/locationDown-01.png" width="15" height="15"></a></li>
        <%} %>
        <!-- <li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">About</a></li> -->
      </ul>
	<%if(loginMember==null) {%>
      <div class="col-md-3 text-end">
        <button type="button" class="btn btn-outline-dark me-2" onclick="location.assign('<%=request.getContextPath()%>/memberloginpage.do');">로그인</button>
        <button type="button" class="btn btn-dark">주문표</button>
      </div>
<!--     </header>
  </div> -->
        
        
        

    <!-- 로그인 시 노출 -->
 	<%} else{%>
<%-- 	<div id="loginHidden" class="dropdown">
      <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
        <strong><%=loginMember.getMemNick() %></strong>
      </a>
      <button type="button" class="btn btn-dark">주문표</button> --%>
      
      
      <div class="col-md-2 text-end" >
	    <div id="loginHidden" class="dropdown" style="display: flex; justify-content: space-between;">
		  <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
		    <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
	        <strong><%=loginMember.getMemNick() %></strong>
	      </a>
	      <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
	        <li><a class="dropdown-item" href="<%=request.getContextPath() %>/mypage.do">마이페이지</a></li>
	        <li><a class="dropdown-item" href="<%=request.getContextPath() %>/mypageupdate.do">내정보수정</a></li>
	        <li><a class="dropdown-item" href="#">찜한가게</a></li>
	        <li><a class="dropdown-item" href="<%=request.getContextPath()%>/reviewManage.do?loginId=<%=loginMember.getMemId() %>">리뷰관리</a></li>
	        <li><a class="dropdown-item" href="<%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %>">주문내역</a></li>
	        <li><hr class="dropdown-divider"></li>
	        <li><a class="dropdown-item" onclick="fn_logout();">로그아웃</a></li>
	      </ul>
		  <button type="button" class="btn btn-dark">주문표</button>      	
      	</div>
     </div>

      
      
<%--       <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
        <li><a class="dropdown-item" href="<%=request.getContextPath() %>/mypage.do">마이페이지</a></li>
        <li><a class="dropdown-item" href="#">내정보수정</a></li>
        <li><a class="dropdown-item" href="#">찜한가게</a></li>
        <li><a class="dropdown-item" href="#">리뷰관리</a></li>
        <li><a class="dropdown-item" href="#">주문내역</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" onclick="fn_logout();">로그아웃</a></li>
      </ul> --%>
      
	<% } %>

    
   <!--  </div> -->
        </header>
  </div> 
    <script>
    	const corrent_location=()=>{
    		const url="<%=request.getContextPath()%>/correntAddress.do";
			const title="correntLocation";
    		open(url,title,"width=395,height=530");
    	}
	    const fn_logout=()=>{
			location.replace("<%=request.getContextPath()%>/logout.do");
		}			
	</script>
  