<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>  
<%@ page import="com.siksin.review.model.vo.ReviewManage" %>

<%@ include file="/views/common/header.jsp" %> 

<%
   List<ReviewManage> list=(List<ReviewManage>)request.getAttribute("list");
%>

<style>
	/* *{
	border:1px solid red;
	}  */
	
	h2{
	padding-top:80px;
	padding-left:20px;
	}
	h4{
	margin: 0px;
	}
	.nav-button{
	padding-top:50px;
	padding-left:20px;
	padding-bottom:20px;	
	}
	.orderContainer{
	display:flex;
	justify-content: space-between;
	padding-left:140px;
	padding-right:140px;
	}
	.orderContainer>div{
	height: 30px auto;
	}
	.orderContainer>div>p{
	margin: 0px;
	}
	.orderContainer2{
	display:flex;
	padding-left:15px;
	justify-content: space-between;
	}
	p{
	display:inline;
	}
	.div0{
	display:flex;
	}
	.div0>div{
	/* display:table; */
	width: 200px;
	height: 20px;;
	text-align: left;
	vertical-align: middle;
	}
	.div1{
	padding-top:50px;
	}
	.div>p{
	display:table-cell;
	width: 200px;
	height: inherit;
	vertical-align: middle;
	}
	.div2{
	text-align: center;
	padding-top:50px;
	padding-right:154px;
	}
	.div3{
	text-align: center;
	padding-top: 50px;
	padding-right: 131px;
	/* margin-right: 411px; */
	}
	.div3>p{
	
	}

	#pageBar{
	  display: flex;
  	  justify-content: center;
  	  margin-top:50px;
	
	}
	

	/* 페이징처리 css */

	.page-link {
	  color: black; 
	  /* background-color: #000; */
		  border-color: #444;
		}
	.page-item.active .page-link {
	 z-index: 1;
	 color: #ccc;
	 font-weight:bold;
	 background-color: #333;
	  border-color: #444;
	 
	}
	.page-link:focus, .page-link:hover {
	  color: #ccc;
	  background-color: #222; 
	  border-color: #444;
	}
	
	
	

</style>


		<h2>
			리뷰 관리
		</h2>
	<section class="">
    	<nav class="nav-button">
    		<button onclick="<%-- location.assign('<%=request.getContextPath()%>/orderWeek.do?loginId=<%=loginMember.getMemId() %>'); --%>">1주일</button>
    		<%-- <%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %> --%>
    		<button onclick="<%-- location.assign('<%=request.getContextPath()%>/orderMonth.do?loginId=<%=loginMember.getMemId() %>'); --%>" >1개월	</button>
    		<button onclick="<%-- location.assign('<%=request.getContextPath()%>/order3Month.do?loginId=<%=loginMember.getMemId() %>'); --%>">3개월</button>
    		<button class="orderAll" onclick="<%-- location.assign('<%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %>'); --%>">전체시기</button>
    		
			&nbsp;
			&nbsp;
			&nbsp;

    		
    		<form class="orderPeriod" action="<%-- <%=request.getContextPath()%>/orderPeriod.do --%>">
				
				<input  type="date" name="searchPeriod"  > &nbsp
				<input  type="date" name="searchPeriod2"  >
				<input type="hidden" name="loginId" value="<%=loginMember.getMemId() %>"/>
			 	&nbsp;
    			&nbsp;
				<button  type="submit" >조회 </button>
	
			</form>  
    		
    		

    		
		
    		
    		
    	</nav>
    	 <hr size="2px;" width = "95%" color = "black"></hr>
    	 
    	 
    	 
<%--     		<form action="<%=request.getContextPath()%>/searchMenu.do">
				<img src="images/search-01.png" width="35" height="35"> 
				<input id="input1" type="text" name="searchMenu" placeholder="오늘은 어떤 메뉴를 주문해 볼까요?" size="30">
				<button id="input2" type="submit" >검색 </button>
	
			</form> --%>
			
			
			
    	<div class="orderContainer">
    		<div>
    			<p>가게정보</p>
    		</div>
    		<div>
    			<p>내용</p>
    		</div>
    		<div>
    			<p>작성일</p>
    		</div>
    	</div>
    	<hr size="2px;" width = "95%" color = "black"></hr>
	</section>
	
	<main id="mainbox">
	

		<%if(list.isEmpty()){ %>
			<div class="orderContainer2">
				<div class="div0">
				<img src="" width="150px;" height="150px;" >
					<div class="div1">
						<div>
							<h4></h>
						</div>
						<div>
							<p></p>
						</div>
					</div>
				</div>	
				<div class="div2">
					<p></p>
				</div>
				<div class="div3">
					<p></p>
				</div>
			</div>
   		<%}else{
   			for(ReviewManage rm : list){%>
   				<div class="orderContainer2">
					<div class="div0">
					<img src="<%=rm.getStoreThumb() %>" width="150px;" height="150px;" >
						<div class="div1">
							<div>
								<h4><%=rm.getStoreName() %></h>
							</div>
							<div>
								<%-- <p><%=ol.getTotalPrice() %>원</p> --%>
							</div>
						</div>
					</div>	
					<div class="div2">
						<p><%=rm.getReviewContent() %></p>
					</div>
					<div class="div3">
						<p><%=rm.getReviewDate() %></p>
					</div>
				</div>
		<%	} 
       		 }%>
				
		
	</main>
	
		<div id="pageBar">
        	<%=request.getAttribute("pageBar") %>
        </div>
        
        



<%@ include file="/views/common/footer.jsp" %>

