<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>
<!-- 사이드바 include -->
<%@ include file="/views/common/myPageSidebars.jsp" %>

		<section class="title">
			<h1>내 정보 수정</h1>
		</section>
		<br>
		
		<form id="myPageUpdate" action="<%=request.getContextPath() %>/mypageupdate.do" method="post">
			<div class="col">
				<div id="myPageContent" class="row col-8">
		            	<div class="col-8">
		                    <input type="text" id="userId" name="userId" value="<%=loginMember.getMemId() %>" readonly>
		                </div>  
		                <br>
		                <div class="col-8">
		                    <input type="text" id="newPassword" name="newPassword" placeholder="새 비밀번호" required>
		                </div>
		                <br>
		                <div class="col-8">
		                    <input type="text" id="newPassword2" name="newPassword2" placeholder="새비밀번호확인" required>
		                </div>
		                <br>
		                <div class="col-8">
		                    <input type="text" id="userName" name="userName" value="<%=loginMember.getMemName() %>" readonly>
		                </div>
		                <br>
		                <div class="col-8">
		                    <input type="text" id="email" name="email" value="<%=loginMember.getMemEmail() %>">
		                </div>
		                <div class="col-8">
		                    <input type="text" id="nickname" name="name" value="<%=loginMember.getMemNick() %>">
		                </div>
		                <br>
		          	    <div class="col-8">
		                    <input type="text" id="phone" name="phone" value="<%=loginMember.getMemPhone() %>">
		                </div>
		                <br>
				<button onclick="memUpdate()" id="onPayBtn" class="w-100 btn btn-primary btn-lg" type="submit" value="정보수정">수정하기</button>
				<hr>
				<button onclick="" id="onPayBtn" class="w-100 btn btn-primary btn-lg" type="submit" style="background-color:tomato;">회원탈퇴</button>
				</div>
			</div>
		</form>
		
		<script>
		
		/* 정보수정 후 단순제출 로직 */
		const memUpdate=()=> {
			
			$("#memberFrm").submit();
			
		}
		
		/* 비밀번호 변경 */
<%-- 		const fn_updatePassword=()=> {
			
			open("<%=request.getContextPath() %>/member/updatePassword.do?userId=<%=m.getUserId() %>", "_blank", "width=400, height=210");
			
		} --%>
		
		</script>

<%@ include file="/views/common/footer.jsp" %>