<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %> 
    
    	<div class="my-5 pt-5 text-muted text-center text-small">
	        <h1 class="mb-1">결제실패</h1>
	    </div>
	    
	    <hr class="my-4"><br>
	    
	    <img src="https://img.lovepik.com/element/40130/9954.png_300.png">
    	
    	<h2>주문결제가 정상처리 되지 않았습니다.</h2>
    	
    	<ul>
	    	<li>주문내역과 결제수단을 확인 후 재시도 해보시기 바랍니다.</li>
	    	<li>에러코드? or 지속적으로 결제가 이루어지지 않는 경우 고객상담실로
	    	문의 주시기 바랍니다. (더미메일? 번호? 에러코드-주문사유실패/카드번호 등?)</li>
	    </ul>
    	
   		<hr class="my-4"><br>
   		
   		<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
		  	<div class="btn-group me-2" role="group" aria-label="First group">
			    <button type="button" class="btn btn-primary">HOME 이동</button>
			</div>
			<div class="btn-group me-2" role="group" aria-label="First group">
			    <button type="button" class="btn btn-primary">장바구니 이동</button>
			</div>
		</div>

    </main>
    
<%@ include file="/views/common/footer.jsp" %>

