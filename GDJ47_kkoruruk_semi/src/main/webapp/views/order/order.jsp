<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>order</title>
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
	.container{
	display:flex;
	justify-content: space-between;
	padding-left:140px;
	padding-right:140px;
	}
	.container>div{
	height: 30px auto;
	}
	.container>div>p{
	margin: 0px;
	}
	.container2{
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
	}
	.div3>p{
	
	}
</style>

</head>
<body>
	<header>
		
	</header>
		<h2>
			주문 내역
		</h2>
	<section class="">
    	<nav class="nav-button">
    		<button>1주일</button>
    		<button>1개월	</button>
    		<button>3개월</button>
    		<button>전체시기</button>
			&nbsp;
			&nbsp;
			&nbsp;
    		<input type='date' name="">&nbsp;
    		<input type='date' name="">
    		&nbsp;
    		&nbsp;
    		<button>조회</button>
    	</nav>
    	 <hr size="2px;" width = "95%" color = "black"></hr>
    	
    	<div class="container">
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
		<div class="container2">
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
		</div>
	</main>
	

</body>
</html>

