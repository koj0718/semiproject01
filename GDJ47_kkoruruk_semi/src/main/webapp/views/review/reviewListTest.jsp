<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/common/header.jsp" %> 



<style>
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

</style>


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
    <tr>
      <th scope="row" ><div class="orderNum"> 1</div></th>
      <td><img src=https://blog.kakaocdn.net/dn/7Td9y/btq4Bx055dJ/th0xtvJ6cal2I5ZSihs261/img.jpg width="150px;" height="150px;" class="orderImage" >
      	<br><br><Strong class="orderStore">교촌치킨 부평점</Strong> <br> <p>교촌 반반윙 1개 21,000원</p>	</td>
      <td></td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>

<%@ include file="/views/common/footer.jsp" %> 