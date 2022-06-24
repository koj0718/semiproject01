<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>  
<%@ page import="com.siksin.order.model.vo.OrderList" %>

<%@ include file="/views/common/header.jsp" %> 

<%
   List<OrderList> list=(List<OrderList>)request.getAttribute("list");
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
	
	
	
	
	
	

/* 병현 css */	

/* .table{
	width:1000px;
} */

.orderList{
   display: flex;
   justify-content: center;
}

.orderImage{
	float : left;
}

.orderStore{
	font-size:20px;
}
.orderNum{
  	display: flex;
    justify-content: center; 
   line-height:100px;
   padding-top:25px;
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
			주문 내역
		</h2>
	<section class="">
    	<nav class="nav-button">
    		<button onclick="location.assign('<%=request.getContextPath()%>/orderWeek.do?loginId=<%=loginMember.getMemId() %>');">1주일</button>
    		<%-- <%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %> --%>
    		<button onclick="location.assign('<%=request.getContextPath()%>/orderMonth.do?loginId=<%=loginMember.getMemId() %>');" >1개월	</button>
    		<button onclick="location.assign('<%=request.getContextPath()%>/order3Month.do?loginId=<%=loginMember.getMemId() %>');">3개월</button>
    		<button class="orderAll" onclick="location.assign('<%=request.getContextPath()%>/checkOrder.do?loginId=<%=loginMember.getMemId() %>');">전체시기</button>
    		
			&nbsp;
			&nbsp;
			&nbsp;
<!--     		<input type='date' name="">&nbsp;
    		<input type='date' name=""> -->
    		
    		<form class="orderPeriod" action="<%=request.getContextPath()%>/orderPeriod.do">
				
				<input  type="date" name="searchPeriod"  > &nbsp
				<input  type="date" name="searchPeriod2"  >
				<input type="hidden" name="loginId" value="<%=loginMember.getMemId() %>"/>
			 	&nbsp;
    			&nbsp;
				<button  type="submit" >조회 </button>
	
			</form>  
    		
    		
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
	
	<main id="mainbox">
	
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
       		 }%>
       		 
       		 
       		 
       		 



		<h2>
			주문 내역
		</h2>
<div class="orderList">
<table class="table table-hover" style="width:80%">
  <thead >
    <tr>
      <th  scope="col">#</th>
      <th scope="col">가게정보</th>
      <th scope="col">주문번호</th>
      <th scope="col">주문일시</th>
    </tr>
  </thead>
  <tbody>
  <%if(list.isEmpty()){ %>
    <tr>
    	<td scope="row" colspan="4"><h3>조회된결과가 없습니다!</h3></td>
    </tr>
    <%}else{
   			for(OrderList ol : list){%>
		    <tr>
		      <th scope="row" ><div class="orderNum"> <%=ol.getrNum() %></div></th>
		      <td><img src="<%=ol.getStoreThumb() %>" width="150px;" height="150px;" class="orderImage" >
		      	<br><br><Strong class="orderStore"><%=ol.getStoreName() %></Strong> <br> <p><%=ol.getTotalPrice() %>원</p>	</td>
		      <td><%=ol.getOrderNum() %></td>
		      <td><%=ol.getOrderDate() %></td>
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

