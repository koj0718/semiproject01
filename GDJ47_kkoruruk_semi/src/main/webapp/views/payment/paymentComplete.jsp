<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/views/common/header.jsp" %> 
	
	<div class="container" style="text-align: center;">
	    <main>
	    	
			&nbsp
			&nbsp
			<br>
	    	
	    	<div class="my-5 pt-5 text-muted text-center text-small">
		        <h1 class="mb-1">주문완료</h1>
		    </div>
		    
		    <hr class="my-4"><br>
		    
		    
	    	<div>
	    	
		    	<h2>접수대기 중</h2><br>
		    	
				<h4>가게에서 주문 확인 중입니다.</h4><br>
				
				<p>가게 사정에 따라 주문이 취소될 수 있습니다.</p>
				<p>접수되면 알림으로 알려드릴게요.</p>
				<p>주문상황은 주문내역에서
				언제든 확인하실 수 있습니다.</p>
				
				<br>
				<br>
				<br>
				<br>
				
				<img src="images/complete.jpg" width="70" height="70">
				
			</div>
	    	
	   		<hr class="my-4"><br>
	   		
	   		<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups" style="margin:auto;">
			  	<div class="btn-group me-2" role="group" aria-label="First group">
				    <button type="button" onclick="home1()" class="btn btn-primary">HOME 이동</button>
				</div>
				<div class="btn-group me-2" role="group" aria-label="First group">
				    <button type="button" onclick="list1()" class="btn btn-primary">주문내역 보기</button>
				</div>
			</div>
	    </main>
    </div>
    
    <script>
    	
    	function home1() {
    		
    		location.href='http://localhost:9090/GDJ47_kkoruruk_semi/';
    		
    	}
    	
    	function list1() {
    		
    		location.href='http://localhost:9090/GDJ47_kkoruruk_semi/checkOrder.do?';
    		
    	}
    
    </script>
    
<%@ include file="/views/common/footer.jsp" %>
    