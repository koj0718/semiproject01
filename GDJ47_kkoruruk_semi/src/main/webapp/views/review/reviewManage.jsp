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
	
	h1{
	padding-top:80px;
	padding-left:20px;
	}
	h4{
	margin: 0px;
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
	
	
	
	
	
	

/* 병현 css */	

/* .table{
	width:1000px;
} */


.orderTitle{

	padding-left:130px;
	padding-bottom:50px;
	display: flex; 
	
}


	.nav-button{
	/*  padding-top:50px; */
	padding-left:130px;
	/* padding-bottom:20px; */ 
 	    display: flex; 
   /* justify-content: center; */	 
	}




.orderList{
   display: flex;
   justify-content: center;
}



.orderImage{
	float : left;
	margin-top : 12px;
}

.orderStore{
	font-size:20px;
}
.orderNum{
  	display: flex;
    justify-content: center; 
   line-height:100px;
   padding-top:12px;
}

.orderTh{
	text-align:center;
}

.period123{
	/* float : left; */
}

.orderPeriodContainer{
	/* margin-top:15px; */
}


.orderAll{
	width: 70px;
	height:45px;
	border-top:none;
	border-left:none;
	border-right:none;
	border-bottom : none;
	background-color: black;
	color : white;
	border-radius: 10px;

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






		<div class="orderTitle">
		<h1 >
			 리뷰 관리
		</h1>
		</div>
	<section class="">
    	<nav class="nav-button">
    		<div class="period123">
    		<button class="btn btn-outline-dark me-2" onclick="location.assign('<%=request.getContextPath()%>/reviewWeek.do?loginId=<%=loginMember.getMemId() %>');">1주일</button>
    		<%-- <%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %> --%>
    		<button class="btn btn-outline-dark me-2" onclick="location.assign('<%=request.getContextPath()%>/reviewMonth.do?loginId=<%=loginMember.getMemId() %>');" >1개월	</button>
    		<button class="btn btn-outline-dark me-2" onclick="location.assign('<%=request.getContextPath()%>/review3Month.do?loginId=<%=loginMember.getMemId() %>');">3개월</button>
    		<button class="btn btn-outline-dark me-2" onclick="location.assign('<%=request.getContextPath()%>/reviewManage.do?loginId=<%=loginMember.getMemId() %>');">전체시기</button>
    		</div>
			&nbsp;
			&nbsp;
			&nbsp;
<!--     		<input type='date' name="">&nbsp;
    		<input type='date' name=""> -->
    		<div class="orderPeriodContainer">
    		<form class="orderPeriod" action="<%=request.getContextPath()%>/reviewPeriod.do">
				
				<input  type="date" name="searchPeriod"  > &nbsp
				<input  type="date" name="searchPeriod2"  >
				<input type="hidden" name="loginId" value="<%=loginMember.getMemId() %>"/>
			 	&nbsp;
    			&nbsp;
				<button class="btn btn-outline-dark me-2"  type="submit" >조회 </button>
	
			</form>
			</div> 
    	
    		
<!--     		&nbsp;
    		&nbsp;
    		<button>조회</button> -->
    		
		
    		
    		
    	</nav>
    	 <hr size="2px;" width = "95%" color = "black"></hr>
    	 
    	 
    	 
<%--     		<form action="<%=request.getContextPath()%>/searchMenu.do">
				<img src="images/search-01.png" width="35" height="35"> 
				<input id="input1" type="text" name="searchMenu" placeholder="오늘은 어떤 메뉴를 주문해 볼까요?" size="30">
				<button id="input2" type="submit" >검색 </button>
	
			</form> --%>
			
			
<!-- 			
    	<div class="orderContainer">
    		<div>
    			<p>가게정보</p>
    		</div>
    		<div>
    			<p>주문정보</p>
    		</div>
    		<div>
    			<p>주문일시</p>
    		</div>
    	</div>
    	<hr size="2px;" width = "95%" color = "black"></hr>
	</section>
	
	<main id="mainbox"> -->
	
<!-- 		<div class="container2">
			<div class="div0">
			<img src=https://blog.kakaocdn.net/dn/7Td9y/btq4Bx055dJ/th0xtvJ6cal2I5ZSihs261/img.jpg width="150px;" height="150px;" >
				<div class="div1">
					<div>
						<h4>교촌치킨 부평점</h>
					</div>
					<div>
						<p>교촌 반반윙 1개 21,000원</p>
					</div>
				</div>
			</div>	
			<div class="div2">
				<p>A09834124</p>
			</div>
			<div class="div3">
				<p>2022.06.14</p>
			</div>
		</div>
		<div class="container2">
			<div class="div0">
			<img src=https://www.bhc.co.kr/images/common/logo300.jpg width="150px;" height="150px;" >
				<div class="div1">
					<div>
						<h4>BHC치킨 부평점</h>
					</div>
					<div>
						<p>뿌링클링 1개 21,000원</p>
					</div>
				</div>
			</div>	
			<div class="div2">
				<p>B09834124</p>
			</div>
			<div class="div3">
				<p>2022.06.14</p>
			</div>
		</div> -->
<%-- 		<%if(list.isEmpty()){ %>
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
   			for(OrderList ol : list){%>
   				<div class="orderContainer2">
					<div class="div0">
					<img src="<%=ol.getStoreThumb() %>" width="150px;" height="150px;" >
						<div class="div1">
							<div>
								<h4><%=ol.getStoreName() %></h>
							</div>
							<div>
								<p><%=ol.getTotalPrice() %>원</p>
							</div>
						</div>
					</div>	
					<div class="div2">
						<p><%=ol.getOrderNum() %></p>
					</div>
					<div class="div3">
						<p><%=ol.getOrderDate() %></p>
					</div>
				</div>
		<%	} 
       		 }%> --%>
       		 
       		 
       		 
       		 



		<!-- <h2>
			주문 내역
		</h2> -->
<div class="orderList">
<table class="table table-hover" style="width:80%">
  <thead >
    <tr>
      <th  scope="col"><div class="orderTh">#</div></th>
      <th scope="col"><div class="orderTh">가게정보</div></th>
      <th scope="col"><div class="orderTh">내용</div></th>
      <th scope="col"><div class="orderTh">작성일</div></th>
    </tr>
  </thead>
  <tbody>
  <%if(list.isEmpty()){ %>
    <tr>
    	<td scope="row" colspan="4"><h3>조회된결과가 없습니다!</h3></td>
    </tr>
    <%}else{
   			for(ReviewManage rm : list){%>
		    <tr>
		      <th scope="row" ><div class="orderNum"> <%=rm.getrNum() %></div></th>
		      <td><img src="<%=rm.getStoreThumb() %>" width="100px;" height="100px;" class="orderImage" >
		      	<br><br><Strong class="orderStore"><%=rm.getStoreName() %></Strong> <br> 	</td>
		      <td><div class="orderNum"><%=rm.getReviewContent() %></div></td>
		      <td><div class="orderNum"><%=rm.getReviewDate() %></div></td>
		    </tr>
		    
		    <%	} 
       		 }%>
			  </tbody>
</table>
</div>  	    
		    
		    <!-- <tr>
		      <th scope="row">2</th>
		      <td>Jacob</td>
		      <td>Thornton</td>
		      <td>@fat</td>
		    </tr>
		    <tr>
		      <th scope="row">3</th>
		      <td colspan="2">Larry the Bird</td>
		      <td>@twitter</td>
		    </tr> -->

 		 
       		 
       		 
       		 
       		 
				
		
	</main>
	
		<div id="pageBar">
        	<%=request.getAttribute("pageBar") %>
        </div>
        



<%@ include file="/views/common/footer.jsp" %>

