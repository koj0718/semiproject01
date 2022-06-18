<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>  
<%@ page import="com.siksin.store.model.vo.Store" %>   
<%
   List<Store> list=(List<Store>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Menu Category</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<style>
   /* *{
   border:1px solid red;
   } */
   #container{
   padding:20px;
   padding-left:120px;
   padding-right:120px;
   }
   
   .row{
   padding-left:10px;
   padding-right:10px;
   }
   
   div>img{
   height : 180px;
   }
   
   p{
   font-size:16px;
   }
   
   section>ul{
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
    
    .nav-item>a{
   color:gray;    
    }
    
    .nav-item>a:hover{
    color:black;
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
    
    .choic-box{
      
    }
</style>


</head>
<body>

   <header>
      <h2>
         여기는 헤더임
      </h2>
   </header>

   <section class="">

      <ul class="nav justify-content-center" >
         <li class="nav-item" >
            <a class="nav-link" href="<%=request.getContextPath()%>/searchMenu.do?searchMenu=전체">전체</a>
         </li>
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

      <div>
         <div class="choice-box">
            <select name="choiceType">
               <option value="">기본정렬순</option>
               <option value="">별점순</option>
               <option value="">리뷰 많은순</option>
               <option value="">최소 주문 금액순</option>
               <option value="">최소 배달 금액순</option>
            </select>
         </div>
      </div>

   </section>

   <main id="container">
      <div class="row">
         <%for(Store s : list){ %>
         <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3">
            <a href="<%=request.getContextPath()%>/storedetailsearch.do?id=<%=s.getStoreId()%>" class="store-card">
            <div class="card" style="">
               <div>
                  <img src="https://blog.kakaocdn.net/dn/7Td9y/btq4Bx055dJ/th0xtvJ6cal2I5ZSihs261/img.jpg" class="card-img-top" alt="...">
               </div>
               <div class="row">
                  <div class="col" style="display: flex; justify-content: space-between;">
                     <div>
                        <%=s.getStoreName() %>
                     </div>
                     <div>
                        찜
                     </div>
                  </div>
                  <div style="display: flex; justify-content: space-around;" >
                     <div>
                        별점
                     </div>
                     <div>
                        리뷰수
                     </div>
                     <div>
                        거리
                     </div>
                     <div>
                        <%=s.getPickYN() %>
                     </div>
                  </div>
                  <div style="display: flex; justify-content: flex-start;">
                     <div>
                        <%=s.getDeleveryTime() %>
                     </div>
                     <div>
                        배달요금
                     </div>
                  </div>
               </div>
            </div>
            </a>
         </div>
         <%} %>   
      </div>
   </main>



   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html> 