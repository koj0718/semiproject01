<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %>
<!-- 사이드바 include -->
<%@ include file="/views/common/myPageSidebars.jsp" %>

		<section class="title">
			<h1>내 정보 수정</h1>
		</section>
		<br>
		
		<form id="myPageUpdate" action="<%=request.getContextPath() %>/member.myPageUpdate.do" method="post">
			<div class="col">
				<div id="myPageContent" class="row col-8">
<!-- 		            <label for="address" class="form-label">주소</label> -->
		            	<div class="col-8">
		                    <input type="text" class="form-control" id="memId" placeholder="아이디" readonly>
		                </div>
		                <br>
		          	    <div class="col-8">
		                    <input type="text" class="form-control" id="address" placeholder="주소 고정값 가져오기" required>
		                </div>
		                <br>
		                <div class="col-8">
		                    <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력하세요 (건물명, 동/호수 등)"><br>
		                </div>
		                <div class="col-8">
		                    <input type="text" class="form-control" id="newPassword" placeholder="새 비밀번호" required>
		                </div>
		                <br>
		                <div class="col-8">
		                    <input type="text" class="form-control" id="newPassword2" placeholder="새 비밀번호 확인" required>
		                </div>
		                <br>
		                <div class="col-8">
		                    <input type="text" class="form-control" id="phone" placeholder="휴대전화번호를 입력하세요"><br>
		                </div>
				<button onclick="memUpdate()" id="onPayBtn" class="w-100 btn btn-primary btn-lg" type="submit" value="정보수정">수정하기</button>
				</div>
				<br>
				<div id="myPageContent" class="row col-8">
					<button onclick="()" id="onPayBtn" class="w-100 btn btn-primary btn-lg" type="submit" style="background-color:tomato;">회원탈퇴</button>
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