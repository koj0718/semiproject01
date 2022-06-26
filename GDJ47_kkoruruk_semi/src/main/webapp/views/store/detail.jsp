<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>	
<%@ include file="/views/common/link.jsp"%>

<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>


 	

<%@ include file="/views/common/header.jsp"%>

<!-- 메인 -->
<%@ include file="/views/store/storeDetail.jsp"%>
<!-- 메인 -->

<!-- 푸터 -->
<%@ include file="/views/common/footer.jsp"%>
<!-- 푸터 -->

<!-- 메뉴 모달 -->
<%@ include file="/views/menu/menuOption.jsp"%>
<!-- 메뉴 모달 -->


<<style>
ul{
   list-style:none;
   }
.fas.fa-heart {
	color: red;
}

.score_box .fas {
	color: gold;
}

.comment .fas {
	color: gold;
}

#wrap {
	width: 100%;
	max-width: 1200px;
	margin: 0 auto;
	flex-wrap: wrap;
	display: flex;
	min-height: calc(100vh - 210px);
}

/* -------------- 상단 가게 정보 -------------- */
nav {
	width: 100%;
	text-align: center;
	margin: 30px 0 30px 0;
}

nav i {
	font-size: 2rem;
}

nav div {
	font-size: 1.8rem;
}

nav .inf button {
	width: 200px;
	height: 40px;
	margin-top: 20px;
	font-size: 1.8rem;
	background: none;
}

nav .inf .store_review_count:after {
	content: '|';
}

/* -------------- 상단 가게 정보 -------------- */

/* -------------- 장바구니 -------------- */

/* 카트 담았을때 메세지 */
.alarm {
	position: fixed;
	left: 50%;
	top: 50%;
	width: 30vw;
	height: 15vh;
	background: rgba(0, 0, 0, 0.7);
	color: #fff;
	text-align: center;
	transform: translate(-50%, -50%);
	border-radius: 15px;
	line-height: 15vh;
	z-index: 1000;
	min-width: 200px;
	display: none;
}

#cart {
	width: 30%;
	order: 1;
}

#cart .cart {
	position: sticky;
	top: 10%;
	font-size: 1.8rem;
	margin: 5%;
	border: 1px solid #ddd;
}

#cart .cart h2 {
	background-color: #333333;
	color: #fff;
	text-align: center;
}

#cart .cart .deleteAll {
	font-size: 2rem;
	cursor: pointer;
	color: white;
	position: absolute;	
	right: 10px;
	top: 5px;
}

#cart .cart .cart_list {
	max-height: 400px;
	overflow: auto;
}

#cart .cart ul {
	width: 90%;
	margin: 0 auto;
}

#cart .cart li {
	border-bottom: 1px solid #ddd;
	padding: 10px 0 10px 0;
	position: relative;
}

#cart .cart li .cart_menu_option {
	color: #999;
}

#cart .cart button.cancle_btn {
	font-size: 1.8rem;
	width: 30px;
	height: 30px;
	position: absolute;
	top: 10px;
	right: 10px;
	padding-bottom: 30px;
	border: none;
	background: none;
	cursor: pointer;
}

#cart .cart button.order_btn {
	width: 100%;
	height: 30px;
	margin-top: 20px;
	font-size: 1.5rem;
	border: none;
	cursor: pointer;
	/* background: #30DAD9; */
	background: #ddd;
	color: #fff;
	border-radius: 0;
}

#cart .cart .total {
	text-align: center;
	margin-top: 10px;
}

/* -------------- 장바구니 -------------- */

/* -------------- 메인 -------------- */
main {
	width: 70%;
}

main ul.tab {
	display: flex;
	background: #fff;
}

main ul.tab li {
	width: 100%;
	padding: 5px 0;
	border: 1px solid #ddd;
	text-align: center;
	cursor: pointer;
	font-size: 2rem;
}

main ul.tab li:hover {
	background: #333333;
	color: #fff;
	transition: 0.1s;
}

main ul.tab li.select {
	background:  #333333;
	color: #fff;
	/* 메뉴탭 클릭시 색 바뀜 */
}

/* 메뉴 정보 리뷰 탭 */
main ul.menu {
	padding-bottom: 50px;
	/* border: 2px solid #ddd; */
	margin-bottom: 30px;
}

/* 메뉴 내용 */
main ul.menu li {
	border-bottom: 1px solid #ddd;
}

main ul li .menu_delete_label {
	margin-left: 15px;
	cursor: pointer;
	color: #ddd;
	/* #30DAD9 */
}

main ul li .menu_delete_checkbox {
	display: none;
}

main ul.menu li .menu_box {
	display: flex;
	justify-content: space-between;
	padding: 15px;
	cursor: pointer;
}

main ul.menu li .menu_box img {
	width: 150px;
	height: 150px;
    object-fit: cover;
}

/* -------------- 메인 -------------- */




/* 메뉴 클릭 모달 */
.food_modal{
	width: 560px;
}



.food_modal img {
	width: 100%;
}

.food_modal .menu_name {
	text-align: center;
	display: block;
	font-size: 20px;
}

.food_modal .modal_box>div {
	font-size: 1.6rem;
	width: 95%;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
	padding: 15px 0;
	border-bottom: 1px solid #ddd;
}

.food_modal .modal_box .menu_dec {
	justify-content: center;
	font-size: 1.8rem;
}

.food_modal .modal_box .price {
	font-weight: bold;
	font-size: 2rem;
}

.food_modal .modal_box #option {
	display: block;
}

.food_modal .modal_box #option .fas {
	color: #ddd;
}

.food_modal .amount_box {
	border: 1px solid #ddd;
	display: flex;
	width: 150px;
	border-radius: 40px;

	overflow: hidden;
}

.food_modal .amount_box button {
	border: none;
	background: #fff;
	font-size: 2.2rem;
	width: 30%;
}

.food_modal .amount_box #amount {
	text-align: center;
	border: none;
	width: 40%;
}


.food_modal .amount .amount_text {
	font-size: 18px;
	font-weight: bold;
	line-height: 43px;
}

.food_modal .modal_box {
	height: calc(95% - 138px);
}

.food_modal #btn_box {
	height: 200px;
	
}

.food_modal #btn_box>div {
	text-align: center;
	height: 80px;
}

.food_modal .min_delevery {
	font-size: 1.5rem;
	margin-top: 5px;
}

.add_cart {
	background:  #333333;
}

.food_modal ul {
	font-size: 1.8rem;
	width: 95%;
	margin-left: auto;
}

.food_modal ul .option_box {
	display: flex;
	justify-content: space-between;
}

.food_modal ul .option_box .menu_option {
	display: none;
}

/*-------메뉴리스트 클릭 모달 ---------*/


	
	 #wrap {
		width: 99%;
	}
	nav .inf button {
		width: 100px;
		font-size: 1.6rem;
		border-radius: 10px;
	}
	main ul.tab {
		position: sticky;
		top: 0;
		z-index: 10;
	}
	main ul.menu li .menu_box img {
	 	width: 100px;
		height: 100px;
	}
	#map_box {
		height: 300px;
	}
	main .comment li .boss {
		width: 86%;
	}
	.alarm {
		font-size: 1.8rem;
		height: 10vh;
		line-height: 10vh;
	} 
	

/*--------- 모달 공통 ---------*/
.modal {
	width: 560px;
	height: 85vh;
	max-height: 720px;
	position: fixed;
	left: 25%;
	top: 100%;
	z-index: 200;
	margin-left: 0px;
	margin-top: 3%;
	border-radius: 10px;
	overflow-x: hidden;
	overflow: hidden;
	background: #fff;
	box-shadow: 3px 3px 20px 10px rgb(0 0 0/ 25%);
		
}

#modal_header {
	background: #333333;
	position: relative;	
	width: 100%;
	display: block;
}

.closeA {
	background: #333333;
	border: none;
	color: #fff;
	position: absolute;
	cursor: pointer;
	top: 0;
	right: 2%;
	width: 4%;
	height: 100%;
	font-size: 2.4rem;
}

.closeB {
	background: #808080;
}

.modal h1 {
	color: #fff;
	text-align: center;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 40px;
}

#modal_bg {
	background: rgba(0, 0, 0, 0.3);
	width: 100vw;
	height: 100vh;
	position: fixed;
	top: 0;
	left: 0;
	display: none;
	z-index: 10;
}

.modal_box {
	position: relative;
	overflow: auto;
	overflow-x: hidden;
	/* height: 70vh; */
	height: calc(100% - 81px);
}

.modal_box::-webkit-scrollbar {
	display: none; /* Chrome, Safari, Opera*/
}

.modal #btn_box {
	/* 
	position: absolute;
	bottom: 0;
	 */
	width: 100%;
	font-size: 1.8rem;
	border-top: 1px solid #ddd;
	height: 120px;
}

.modal .btn_box input, .modal #btn_box button {
	height: 40px;
	font-size: 2rem;
	width: 50%;
	float: left;
	border: none;
	color: white;
	border-radius: unset;
}

.modal .btn_box input[type="submit"] {
	background:  #333333;
}



/* input file */

.modal .img_box {
	width: 80%;
	margin: 0 auto 50px;
}

.modal .img {
	display: none; 
}

.modal .img_box label {
	display: inline-block;
	width: 80px;
	height: 60px;
	border: 1px solid #ddd;
	border-radius: 10px;
	text-align: center;
	line-height: 60px;
}

.modal .img_box div {
	margin-top: 20px;
	position: relative;
	display: none;
	width: 150px;
	height: 150px;
}

.modal .img_box img {
	width: 100%;
	height: 100%;
	border-radius: 10px;
	object-fit: cover;
	border: 1px solid #ddd;
}

.modal .img_close {
	background: #ccc;
	position: absolute;
	top: -10px;
	right: -10px;
	width: 25px;
	height: 25px;
	color: #fff;
	border-radius: 50%;
	border: none;
}


</style>

<script>




$(document).ready(function() {
	const minDelevery = Number($("#min_delevery").data("min_delevery"));
	const deleveryTip = Number($("#delevery_tip").data("delevery_tip"));
	const storeId = $("#store_id").val();
	const storeName = $("#store_name").data("store_name");
	
	const cart = (function(){
		// 장바구니에 담긴 가게번호 (다른가게에서 담은 상품인지 확인) 
		let cartStoreId = null;
		const getCartStoreId = function(){
			return cartStoreId;
		}
		const setCartStoreId = function(set){
			cartStoreId = set;
		}
		
		// 장바구니에 담긴 상품 수
		let cartSize = 0;
		
		const getCartSize = function(){
			return cartSize;
		}
		
		const setCartSize = function(set){
			cartSize = set;
		}
		
		
		// 장바구니에 담은 메뉴가격 총합
		let menuTotalPrice = 0;
		
		const getMenuTotalPrice = function(){
			return menuTotalPrice;
		}
		
		const setMenuTotalPrice = function(set){
			menuTotalPrice = set;
		}
	
		return {
			getCartStoreId : getCartStoreId, 
			setCartStoreId : setCartStoreId,
			getCartSize : getCartSize,
			setCartSize : setCartSize,
			getMenuTotalPrice : getMenuTotalPrice,
			setMenuTotalPrice : setMenuTotalPrice,
			};
	})();
	
	
	// 가게 입장시 카트리스트 불러오기
	 (function(){
		$.ajax({
			url: "<%=request.getContextPath() %>/cartList",
			type: "get"
		})
		.done(function(result){
			if(result == "" ) {
				cartReset();
				return;
			}
			cartList(result);
		})
		.fail(function(){
			swal("장바구니 정보 에러");
		})
	})();
	
 

	$(".menu > li .menu_box").click(function() {
		
		const isAdmin = $("#admin_button_box").data("is_admin");
		if(isAdmin) {
			return;
		}
		
		const foodId = $(this).find(".food_id").val();
		$.ajax({
			url: "<%=request.getContextPath() %>/menuoption.do",
			type: "get",
			data: {foodId : foodId}
		})

		.done(function(result){
			foodModalHtml(result);
			if(result.length == 0) {
					$("#option").hide();
				} else {
					$("#option").show();
				}
		})
		.fail(function(){
			swal("에러가 발생했습니다");
			food.hide();
		}) // ajax
		
		
		const addCartModal = $(".food_modal");
		const foodImg = $(this).find(".food_img").val();
		const foodName = $(this).find(".food_name").val();
		let foodPrice = Number($(this).find(".food_price").val());
		const foodDec = $(this).find(".food_dec").val();
		const amount = $("#amount").val();
		const totalPrice = amount * foodPrice;

		$(".menu_img").attr("src", foodImg);
		$(".menu_name").text(foodName);
		$(".menu_dec").text(foodDec);
		$(".price").text(Number(foodPrice).toLocaleString() + '원');
		$(".total_price").text(Number(totalPrice).toLocaleString() + '원');
		
		$(".add_cart_food_name").val(foodName);
		$(".add_cart_food_price").val(foodPrice);
		$(".add_cart_food_id").val(foodId);

		openModal(addCartModal);
	




		// 수량 증가 감소
		$(".minus").off().click(function() {
			if (1 < Number($("#amount").val())) {
				$("#amount").val(Number($("#amount").val()) - 1);
			}
			const amount = Number($("#amount").val());
			const totalPrice = amount * foodPrice;
			$(".total_price").text(Number(totalPrice).toLocaleString() + '원');
		})
		
		$(".plus").off().click(function() {
			$("#amount").val(Number($("#amount").val()) + 1);
			const amount = $("#amount").val();
			const totalPrice = amount * foodPrice;
			$(".total_price").text(Number(totalPrice).toLocaleString() + '원');
		})
		
		
		// 옵션 체크박스 변경
		$(document).off().on("click" , ".option_box i", function(){
			const optionPrice = Number($(this).siblings(".option_price").val());
			
			if($(this).siblings(".menu_option").is(":checked")) {
				$(this).siblings(".menu_option").prop("checked" ,false);
				$(this).css("color" , "#ddd");
				
				foodPrice -= optionPrice; 
				
			} else {
				$(this).siblings(".menu_option").prop("checked" , true);
				$(this).css("color" , "#333333");
				
				foodPrice += optionPrice; 
			}
			
			const amount = Number($("#amount").val());
			const totalPrice = amount * foodPrice;
			$(".total_price").text(Number(totalPrice).toLocaleString() + '원');
		})
		
	}) // 메뉴 클릭
	
	
	
	
	
	
	// 장바구니 담기
	$(".add_cart").click(function(){
		const cartStoreId = cart.getCartStoreId();
		if(cartStoreId != null && storeId != cartStoreId ) {
			swal({
				buttons: ["취소", "담기"],
				title: "장바구니에는 같은 가게의 메뉴만 담을 수 있습니다",
				text: "선택하신 메뉴를 장바구니에 담을 경우 이전에 담은 메뉴가 삭제됩니다"
			})
			.then((value) => {
				if (value == true) {
					deleteCartAll();
					addCart($(this));
				}
			});			
		} else {
			addCart($(this));
		}
	}) // 장바구니 담기
	
	
	
	
	// 장바구니 전부 삭제
	$("#cart i").click(function(){
		deleteCartAll();
	})	

	
	function foodModalHtml(result) {
		let html = "";
		console.log(result);
		console.log(result[1]["menuOpName"]);
		for(var i=0;i<result.length;i++) {
			html += '<li><div class="option_box"><span><i class="fas fa-check-square"></i><input type="checkbox" class="menu_option" name="option" value="'+result[i]["menuOpName"] +'">'+result[i]["menuOpName"] +'<input type="hidden" class="option_price" value="'+result[i]["menuOpPrice"]+'"> <input type="hidden" class="option_id" value="'+result[i]["menuOpId"]+ '"></span>\<span>'+result[i]["menuOpPrice"] +' 원</span></div></li>';
		}
			
		$("#option ul").html(html);
	}
	
	
	function addCart(addCart){
		// 선택한 추가옵션 배열에 저장
		const foodOptionName = [];
		const foodOptionPrice = [];
		const foodOptionId = [];
			
		// 선택된 추가옵션 가져오기 
		$("input[name='option']:checked").each(function() {
			const optionName = $(this).val();
			const optionId = $(this).siblings(".option_id").val();
			const optionPrice = $(this).siblings(".option_price").val();  
			
			foodOptionName.push(optionName);
			foodOptionId.push(optionId);
			foodOptionPrice.push(optionPrice);
		})
		
		const data = { 
			foodId : addCart.siblings(".add_cart_food_id").val(),
			foodName : addCart.siblings(".add_cart_food_name").val(),
			foodPrice : addCart.siblings(".add_cart_food_price").val(),
			amount : addCart.parent().siblings(".modal_box").find("#amount").val(),
			optionName : foodOptionName,
			optionId : foodOptionId,
			optionPrice : foodOptionPrice,
			deleveryTip : deleveryTip,
			storeId : storeId, 
			storeName : storeName
		}
		
		$.ajax({
			url: "<%=request.getContextPath() %>/addCart",
			type: "post",
			data : data,
			traditional : true
		})
		.done(function(result){
			console.log(result);
			cartList(result);			
			alarm();	
			closeModal();
			$("#amount").val(1);
			
				$(document).on("click", ".cancle_btn", function() {
				const index = $(this).parent().index();
				deleteCartOne(index);
			}); // 장바구니 1개 삭제
			
		}) 
		.fail(function(){
			swal("에러가 발생했습니다");
		}) 
	}
	
	
	
	
	function alarm(text) {
		$(".alarm").text(text);
		
		$(".alarm").show();
		setTimeout(function(){
			$(".alarm").hide();
		},1000);
	}
			
	
	// 장바구니 1개 삭제
	$(document).on("click", ".cancle_btn", function() {
		const index = $(this).parent().index();
		deleteCartOne(index);
	}); 
	
	
	
	// 장바구니 1개 삭제
	function deleteCartOne(index){
		$.ajax({
			url: "<%=request.getContextPath() %>/cartOne",
			type: "DELETE",
			data: {index : index}
		})
		.done(function(result){
			if(result == "") {
				cartReset();
				return;
			}
			cartList(result);
			$(".m_cart_count").css("display" , "block");
			$(".m_cart_count").text(result.cart.length);
		})
		.fail(function(){
			swal("에러가 발생했습니다");
		})
	}
	

	function deleteCartAll(){
		$.ajax({
			url: "<%=request.getContextPath() %>/cartAll",
			type: "DELETE"
		})
		.done(function(){
			cartReset();
		})
		.fail(function(){
			swal("에러가 발생했습니다");
		})
	}


	function cartList(result){
		const cartList = result.cart;
		const storeId = result.storeId;
		const storeName = result.storeName;
		const cartTotal = result.cartTotal;
		
		cart.setCartSize(cart.length);
		
		let html = "";
			
		for(var i=0;i<cartList.length;i++) {
			let optionHtml = "";
			if(cartList[i].optionName != null ) {
				for(var j=0;j<cartList[i].optionName.length;j++) {
					const optionName = cartList[i].optionName[j];
					const optionPrice = Number(cartList[i].optionPrice[j]).toLocaleString();
					
					optionHtml += '<div class="cart_menu_option">'+ optionName + optionPrice + '원</div>';
				}
			}
			
			html += '<li> <h3>'+cartList[i].foodName  +'</h3><div>'+cartList[i].foodPrice.toLocaleString()+'원</div><div>수량 : '+cartList[i].amount +'</div><div>${optionHtml} </div><div>합계 : '+cartList[i].totalPrice.toLocaleString() +'원</div><button class="cancle_btn"> ${"ｘ"} </button></li>'; 
					 // 장바구니 추가하면 장바구니 리스트 변경
			
			
		}
		cart.setMenuTotalPrice(cartTotal);
		cart.setCartStoreId(storeId );
		
		$(".cart ul").html(html);
		$(".total").html("총 합계 : " + cartTotal.toLocaleString() + "원");
		$(".m_cart_count").css("display" , "block");
		$(".m_cart_count").text(cartList.length);
		console.log(cartList);
		console.log("장바구니 가게 id " + storeId);
		
		minDeleveryCheck();
	}	



	// 주문금액이 최소주문금액 이상이어야 주문가능
	function minDeleveryCheck() {
		const menuTotalPrice = cart.getMenuTotalPrice();
		
		if(minDelevery <= menuTotalPrice) {
			$(".order_btn").attr("disabled", false); 
			$(".order_btn").css("background", "#333333");
			$(".order_btn").text("주문하기");
		} else {
			$(".order_btn").css("background", "#ddd");
			$(".order_btn").attr("disabled", true); 
			$(".order_btn").text(minDelevery + "원 이상 주문할 수 있습니다");
		}
	}


	
	$("main ul.info").hide();
	// 탭 눌렀을때 색변경 콘텐츠 변경
	$("ul.tab > li").click(function() {

		const index = $(this).index() + 1;

		$("ul.tab > li").removeClass("select");
		$(this).addClass("select");

		$("main  ul").eq(1).hide();
		$("main  ul").eq(2).hide();
		$("main  ul").eq(3).hide();
		$("main  ul").eq(index).show();

		const offset = $(".offset").offset();
		const scrollPosition = $(document).scrollTop();

		if (offset["top"] < scrollPosition) {
			$("html").animate({ scrollTop: offset.top }, 100);
		}

	});


	function cartReset() {
		$(".cart ul").html("");
		$(".total").html("장바구니가 비었습니다.");
		$(".order_btn").css("background", "#ddd");
		$(".order_btn").attr("disabled", true); 
		$(".order_btn").text("주문하기");
		$(".m_cart_count").css("display" , "none");
		$(".m_cart_count").text("");
		
		cart.setCartSize(0);
		cart.setMenuTotalPrice(0);	
	};
	
	
	
	
	// 주문하기
	$(".order_btn").click(function() {
		location.href = "<%=request.getContextPath() %>/order.do";
	});	


});


//찜하기
$(".inf i").click(function(){
	let likes ="";
	
	if($(this).hasClass("far")) {
		$(this).removeClass("far").addClass("fas");
		likes = "on";
	} else {
		$(this).removeClass("fas").addClass("far");
		likes = "off";
	}
	
	const data = {
		id : $("#store_id").val(),
		likes : likes
	}
	$.ajax({
		url: "/store/likes",
		type: "POST",
		data: data
	})
	.done(function(result){
		if(result == 0) {
		} else {
			
			let likesCount = $(".likes_count").data("count");
			
			if(likes == "on") {
				$(".likes_count").text(likesCount+1);
				$(".likes_count").data("count", likesCount+1 );
			} else {
				$(".likes_count").text(likesCount-1);
				$(".likes_count").data("count", likesCount-1 );
			}
		}
	})
})


function openModal(modal) {
	/* const size = window.innerWidth; */
	
	modal.css("transition", "0s").css("top", "0%");
	$(".food_modal").show();
	
	$("#modal_bg").show();
	$("body").css("overflow", "hidden");
	$("body").css("overflow-y", "hidden"); 
	
	
	$(".closeA").click(function() {
		closeModal();
	});
	
	$("#modal_bg").click(function() {
		closeModal();
	});
	
	$(".closeB").click(function() {
		closeModal();
	}); 
}
 
 
 
 
function closeModal() {
	$("#modal_bg").hide();
	$(".modal").css("top", "100%");
	$(".modal_box").scrollTop(0);
	$("body").css("overflow", "visible");
	$(".modal input[type='checkBox']").prop("checked", false);
	
	$("#amount").val(1);
};

</script>


</body>
</html>