<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Go Go</title>
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
    margin-left: 1.2rem;
    padding-left:10px;
    padding-right:10px;
    
  
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
    
    section>div{
    padding:15px;
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
				<a class="nav-link" href="#">전체</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">양식</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">일식</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">중식</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">한식</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">돈까스</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">피자</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">치킨</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">족발 보쌈</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">찌개</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">고기</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">패스트푸드</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">카페</a>
			</li>
		</ul>
		
		<div>
			<div>
				<select name="choicType">
					<option value="">기본정렬순</option>
					<option value="">별점순</option>
					<option value="">리뷰 많은순</option>
					<option value="">최소 주문 금액순</option>
					<option value="">최소 배달 금액순</option>
				</select>
			</div>
			<div>
				
			</div>
		</div>
  
	</section>
	
	<main id="container">
		<div class="row">
			<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3" >
				<div class="card" style="">
					<div>
						<img src="https://blog.kakaocdn.net/dn/7Td9y/btq4Bx055dJ/th0xtvJ6cal2I5ZSihs261/img.jpg" class="card-img-top" alt="...">
					</div>
					<div class="row">
						<div class="col" style="display: flex; justify-content: space-between;">
							<div>
								<p>교촌 치킨</p>
							</div>
							<div>
								<p>찜</p>
							</div>
						</div>
						<div style="display: flex; justify-content: space-around;" >
							<div>
								<p>별점</p>
							</div>
							<div>
								<p>리뷰수</p>
							</div>
							<div>
								<p>거리</p>
							</div>
							<div>
								<p>포장여부</p>
							</div>
						</div>
						<div style="display: flex; justify-content: flex-start;">
							<div>
								<p>배달시간</p>
							</div>
							<div>
								<p>배달요금</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3" >
				<div class="card" style="">
					<div>
						<img src="https://blog.kakaocdn.net/dn/7Td9y/btq4Bx055dJ/th0xtvJ6cal2I5ZSihs261/img.jpg" class="card-img-top" alt="...">
					</div>
					<div class="row">
						<div class="col" style="display: flex; justify-content: space-between;">
							<div>
								<p>교촌 치킨</p>
							</div>
							<div>
								<p>찜</p>
							</div>
						</div>
						<div style="display: flex; justify-content: space-around;" >
							<div>
								<p>별점</p>
							</div>
							<div>
								<p>리뷰수</p>
							</div>
							<div>
								<p>거리</p>
							</div>
							<div>
								<p>포장여부</p>
							</div>
						</div>
						<div style="display: flex; justify-content: flex-start;">
							<div>
								<p>배달시간</p>
							</div>
							<div>
								<p>배달요금</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3" >
				<div class="card" style="">
					<div>
						<img src="https://blog.kakaocdn.net/dn/7Td9y/btq4Bx055dJ/th0xtvJ6cal2I5ZSihs261/img.jpg" class="card-img-top" alt="...">
					</div>
					<div class="row">
						<div class="col" style="display: flex; justify-content: space-between;">
							<div>
								<p>교촌 치킨</p>
							</div>
							<div>
								<p>찜</p>
							</div>
						</div>
						<div style="display: flex; justify-content: space-around;" >
							<div>
								<p>별점</p>
							</div>
							<div>
								<p>리뷰수</p>
							</div>
							<div>
								<p>거리</p>
							</div>
							<div>
								<p>포장여부</p>
							</div>
						</div>
						<div style="display: flex; justify-content: flex-start;">
							<div>
								<p>배달시간</p>
							</div>
							<div>
								<p>배달요금</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-4 col-md-3 col-lg-3" >
				<div class="card" style="">
					<div>
						<img src="https://blog.kakaocdn.net/dn/7Td9y/btq4Bx055dJ/th0xtvJ6cal2I5ZSihs261/img.jpg" class="card-img-top" alt="...">
					</div>
					<div class="row">
						<div class="col" style="display: flex; justify-content: space-between;">
							<div>
								<p>교촌 치킨</p>
							</div>
							<div>
								<p>찜</p>
							</div>
						</div>
						<div style="display: flex; justify-content: space-around;" >
							<div>
								<p>별점</p>
							</div>
							<div>
								<p>리뷰수</p>
							</div>
							<div>
								<p>거리</p>
							</div>
							<div>
								<p>포장여부</p>
							</div>
						</div>
						<div style="display: flex; justify-content: flex-start;">
							<div>
								<p>배달시간</p>
							</div>
							<div>
								<p>배달요금</p>
							</div>
						</div>
					</div>
				</div>
			</div>		
		</div>
	</main>
	
	
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>