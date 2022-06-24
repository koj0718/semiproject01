<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>  
<%@ page import="com.siksin.store.model.vo.Store" %>
<%@ page import="com.siksin.review.model.vo.Review" %>

<%@ include file="/views/common/header.jsp" %> 

<%
	List<Store> list=(List<Store>)request.getAttribute("list");
	String selectval=request.getParameter("selectval");
	Review r=(Review)request.getAttribute("review");
%>
<!-- <!DOCTYPE html>
<html>
   <meta charset="UTF-8">
   <title>Menu Category</title>
<head> -->
    <!-- <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/cover/"> -->

    <!-- Favicons -->

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->

	
<style>
   /* *{
   border:1px solid red;
   } */
   #container{
   padding:20px;
   padding-left:120px;
   padding-right:120px;
   display: flex;
   justify-content: center;
   }
   
   .row1{
   padding-left:10px;
   padding-right:10px;
   height: 160px;
   }
   
   div>img{
   height : 180px;
   }
   
   p{
   font-size:16px;
   }
   
   section>ul{
   justify-content: space-between;
   display: flex;
   height: 50px;
   }
   
   section>ul>li{
   list-style-type: none;
   padding-left: 10px;
   padding-right: 10px;
    
   }
   section>ul>li>a{
   text-decoration: none;
   font-size: 1rem;
   font-weight: 800;
   padding-bottom: 1px;
    
   }
   section>ul>li>a:hover{
   border-bottom: 2px solid red;
    
   }
   
   #choiceType{
   height: 28px;
   font-size: 14px;
   border-top-left-radius:5px;
   border-bottom-left-radius:5px;
   border-top-right-radius:5px;
   border-bottom-right-radius:5px;
   }
   
   .nav-item>a{
   color:gray;    
   }
    
   .nav-item>a:hover{
   color:black;
   }
   #section_box{
   max-width:86%;
   margin-right: auto;
   margin-left: auto;
   }
    
   section{
   padding-top: 40px;
   }
    
   section>div{
   padding:15px;
   margin-top: 40px;
   margin-bottom: 40px;
   
   }    
   
   .store-card{
   text-decoration: none;
   color:black;
  
   }
   
 
 	/* 페이징처리 css */
	
	
	#pageBar{
	  display: flex;
  	  justify-content: center;
  	  margin-top:50px;
	
	}

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


<!-- </head> -->
<body>

     <section id="section_box">

      <ul class="nav justify-between" >
         <%-- <li class="nav-item" >
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=전체">전체</a>
         </li> --%>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=치킨">치킨</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=돈까스/일식">돈까스/일식</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=피자">피자/양식</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=중식">중식</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=한식">한식</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=프랜차이즈">프랜차이즈</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=족발/보쌈">족발/보쌈</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=야식">야식</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=분식">분식</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=카페/디저트">카페/디저트</a>
         </li>
         <li class="nav-item">
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=편의점/마트">편의점/마트</a>
         </li>
      </ul>
         <hr></hr>
      <div>
         <div class="choice-box">
            <select id="choiceType" onchange="fn_change();">
               <option value="STORE_NAME" <%=selectval!=null&&selectval.equals("STORE_NAME")?"selected":"" %>>기본정렬순</option>
               <option value="STAR_POINT" <%=selectval!=null&&selectval.equals("STAR_POINT")?"selected":"" %>>별점순</option>
               <option value="REVIEW_COUNT" <%=selectval!=null&&selectval.equals("REVIEW_COUNT")?"selected":"" %>>리뷰 많은순</option>
               <option value="MIN_DELEVERY" <%=selectval!=null&&selectval.equals("MIN_DELEVERY")?"selected":"" %>>최소 주문 금액순</option>
               <option value="DELEVERY_TIP" <%=selectval!=null&&selectval.equals("DELEVERY_TIP")?"selected":"" %>>최소 배달 금액순</option>
            </select>
         </div>
      </div>
      

   </section>

   <main id="container">
      <div class="row">
         <%for(Store s : list){ %>
         <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
            <a href="<%=request.getContextPath()%>/storedetailsearch.do?id=<%=s.getStoreId()%>" class="store-card" >
            <div class="card" id="store_card" style="height:350px; text-align: center;">
               <div>
                  <img src="<%=s.getStoreImg() %>" class="card-img-top" alt="..." style="width: 90%; ">
               </div>
               <div class="row1"  style="margin-top: 0;">
                  <div class="col" style="display: flex; justify-content: space-between; height: 30px;">
                     <div>
                     	<h5>
                        	<%=s.getStoreName() %>                     
                     	</h5>
                     </div>
                     <div>
                       <!--  찜 -->
                     </div>
                  </div>
                  <div style="display: flex; height: 30px;">
                     <div>
                        <%-- <%=r.getStarPoint() %> --%>
                     </div>
                     <div>
                        리뷰수
                     </div>
                     <div>
                       <!--  거리 -->
                     </div>
                     <div>
                       <%--  <%=s.getPickYN() %> --%>
                     </div>
                  </div>
                  <div style="display: flex; justify-content: flex-start; height: 30px;">
                     <div>
                        <%-- <%=s.getDeleveryTime() %> --%>
                     </div>
                     <div>
                        최소 배달 금액  <%=s.getDeleveryTip() %> 원
                     </div>
                  </div>
               </div>
            </div>
            </a>
         </div>
         <%} %>   
      </div>
   </main>
   
           <div id="pageBar">
        	<%=request.getAttribute("pageBar") %>
        </div>

<script>
	const fn_change=()=>{
		const select=$('#choiceType');
		const selectvalue=select.val();
		console.log(selectvalue);
		console.log(select,selectvalue);
		location.assign("<%=request.getContextPath()%>/storeListSort.do?selectval="+selectvalue+"&searchMenu=<%=request.getParameter("searchMenu")%>");
	}

</script>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- </html> -->

<%@ include file="/views/common/footer.jsp" %>