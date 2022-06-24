<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp" %>
<!-- 사이드바 include -->

    <!-- css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/member/myPage.css">
    
<div id="bodyContainer" class="row">
   
      <div id="myPageSidebars" class="col-4 row d-flex flex-column flex-shrink-0 p-3 bg-light"
      style="width: 280px; height:430px; float:left; border-radius: 40px;">
            <span class="fs-4"><br><%=loginMember.getMemNick() %>님<br>안녕하세요.</span>
          </a>
          <br>
          <hr>
          <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item">
              <a href="<%=request.getContextPath() %>/mypage.do" class="nav-link active" aria-current="page">
                <svg class="bi me-2" width="16" height="16"></svg>
                마이페이지
              </a>
            </li>
            <li>
              <a href="<%=request.getContextPath() %>/mypageupdate.do" class="nav-link link-dark">
                <svg class="bi me-2" width="16" height="16"></svg>
                내 정보 수정
              </a>
            </li>
            <li>
              <a href="<%=request.getContextPath() %>/.do" class="nav-link link-dark">
                <svg class="bi me-2" width="16" height="16"></svg>
                포인트
              </a>
            </li>
            <li>
              <a href="<%=request.getContextPath() %>/.do" class="nav-link link-dark">
                <svg class="bi me-2" width="16" height="16"></svg>
                찜 한 가게
              </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/reviewManage.do?loginId=<%=loginMember.getMemId() %>" class="nav-link link-dark">
                <svg class="bi me-2" width="16" height="16"></svg>
                리뷰관리
              </a>
            </li>
            <li>
              <a href="<%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %>" class="nav-link link-dark">
                <svg class="bi me-2" width="16" height="16"></svg>
                주문내역
              </a>
            </li>
          </ul>
      </div>
      
      
      <!-- 마이페이지 -->

      <div class="col" style="text-align: center; margin-left: auto;">
      
         <section class="title" style="text-align: center; margin-left: 390px;">
            <h1>마이페이지</h1>
         </section>
         <br>
         
         <div id="myPageContent" class="row col-8" style="border-radius: 40px;">
            <div class="row">
               <div class="col-8 col-sm-6">
                  <div><img src="#">프로필 사진</div>
                     <div><%=loginMember.getMemNick() %>님 안녕하세요.</div>
               </div>
               <div class="col-4 col-sm-6">
                     <%=loginMember.getMemPoint() %><br> 포인트
               </div>
             </div>
             <hr>
             <div style="height:40px;">
                <%=loginMember.getMemNick() %>님은 <%=loginMember.getRole() %>등급 입니다.
             </div>
         </div>
         
         <br>
         
         <div id="myPageContent" class="row col-8">
            <div class="row">
               <div class="col-12 col-sm-12">
                  <div style="font-size: 35px;">등급 업 조건</div>
               </div>
   <!--              <div class="col-4 col-sm-6">
                 요건
               </div> -->
             </div>
             <hr>
             <div style="height:40px;">
                SIKSIN 직전 월 주문횟수 16회 이상
             </div><hr>
             <div style="height:40px;">
                PLATINUM 직전 월 주문횟수 11~15회
             </div><hr>
             <div style="height:40px;">
                GOLD 직전 월 주문횟수 6~10회
             </div><hr>
             <div style="height:40px;">
                SILVER 직전 월 주문횟수 3~5회
             </div><hr>
             <div style="height:40px;">
                BRONZ 직전 월 주문횟수 0~2회
             </div>
         </div>
      </div>

<%@ include file="/views/common/footer.jsp" %>