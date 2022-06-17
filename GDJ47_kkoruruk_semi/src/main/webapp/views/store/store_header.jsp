<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <!-- Bootstrap core CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<!-- css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/store/storeMenuManage.css">

<meta charset="UTF-8">
<title>꼬르륵 사장님 사이트</title>
</head>
<body>

  <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">LOGO</span>
      </a>

      <ul class="nav nav-pills">
        <li class="nav-item"><a href="#" class="nav-link">내 가게 관리</a></li>
        <li class="nav-item"><a href="#" class="nav-link">입점신청</a></li>
        <li class="nav-item"><a href="#" class="nav-link">매출관리</a></li>
      </ul>
    </header>
    
    <script>
	    /* global bootstrap: false */
	    (function () {
	      'use strict'
	      var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
	      tooltipTriggerList.forEach(function (tooltipTriggerEl) {
	        new bootstrap.Tooltip(tooltipTriggerEl)
	      })
	    })()
    </script>
	
