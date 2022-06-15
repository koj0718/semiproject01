<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

  <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-{SDK-Version 1.2.0}.js"></script>
  
<html>
<head>
<meta charset="UTF-8">
<title>본인인증</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

	<script>
	
	  var IMP = window.IMP; // 생략 가능
	  IMP.init("{imp87022146}"); // 예: imp00000000
	  
	  // IMP.certification(param, callback) 호출
	  IMP.certification({ // param
	    merchant_uid: "ORD20180131-0000011", // 주문 번호
	    m_redirect_url : "{리디렉션 될 URL}", // 모바일환경에서 popup:false(기본값) 인 경우 필수, 예: https://www.myservice.com/payments/complete/mobile
	    popup : false // PC환경에서는 popup 파라메터가 무시되고 항상 true 로 적용됨
	  }, function (rsp) { // callback
	    if (rsp.success) {
	      ...,
	      // 인증 성공 시 로직,
	      ...
	    } else {
	      ...,
	      // 인증 실패 시 로직,
	      ...
	    }
	  });
	  
	  IMP.certification({
		    /* ...중략... */
		  }, function (rsp) { // callback
		    if (rsp.success) { // 인증 성공 시
		      // jQuery로 HTTP 요청
		      jQuery.ajax({
		        url: "{서버의 인증 정보를 받는 endpoint}", // 예: https://www.myservice.com/certifications
		        method: "POST",
		        headers: { "Content-Type": "application/json" },
		        data: { imp_uid: rsp.imp_uid }
		      });
		    } else {
		      alert("인증에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
		    }
		  });
	  
	  GET {m_redirect_url}?imp_uid={}&merchant_uid={본인인증 건의 merchant_uid}&success={true 또는 false}
	  
	  app.use(bodyParser.json());
	  ...
	  // "/certifications"에 대한 POST 요청을 처리하는 controller
	  app.post("/certifications", async (request, response) => {
	    const { imp_uid } = request.body; // request의 body에서 imp_uid 추출
	  })
	  
	    app.use(bodyParser.json());
	  ...
	  // "/certifications"에 대한 POST 요청을 처리하는 controller
	  app.post("/certifications", async (request, response) => {
	    const { imp_uid } = request.body; // request의 body에서 imp_uid 추출
	    try {
	      // 인증 토큰 발급 받기
	      const getToken = await axios({
	        url: "https://api.iamport.kr/users/getToken",
	        method: "post", // POST method
	        headers: { "Content-Type": "application/json" }, // "Content-Type": "application/json"
	        data: {
	          imp_key: "imp_apikey", // REST API키
	          imp_secret: "ekKoeW8RyKuT0zgaZsUtXXTLQ4AhPFW3ZGseDA6bkA5lamv9OqDMnxyeB9wqOsuO9W3Mx9YSJ4dTqJ3f" // REST API Secret
	        }
	      });
	      const { access_token } = getToken.data.response; // 인증 토큰
	      ...
	      // imp_uid로 인증 정보 조회
	      const getCertifications = await axios({
	        url: \`https://api.iamport.kr/certifications/\${imp_uid}\`, // imp_uid 전달
	        method: "get", // GET method
	        headers: { "Authorization": access_token } // 인증 토큰 Authorization header에 추가
	      });
	      const certificationsInfo = getCertifications.data.response; // 조회한 인증 정보
	      ...
	    } catch(e) {
	      console.error(e);
	    }
	  });
	  
	  // "/certifications"에 대한 POST 요청을 처리하는 controller
	  app.post("/certifications", async (request, response) => {
	    const { imp_uid } = request.body; // request의 body에서 imp_uid 추출
	    try {
	      // 인증 토큰 발급 받기
	      /* ...중략... */
	      // imp_uid로 인증 정보 조회
	      /* ...중략... */
	      const certificationsInfo = getCertifications.data.response; // 조회한 인증 정보
	      const { name, birth } = certificationsInfo;
	      ...
	      // 연령 제한 로직
	      if (new Date(birth).getFullYear() <= 1999) {
	        // 연령 만족
	      } else {
	        // 연령 미달
	      }
	    } catch(e) {
	      console.error(e);
	    }
	  });
	  
	  
  
	</script>
    
    <div class="my-5 pt-5 text-muted text-center text-small">
        <h1 class="mb-1">&copy;header</h1>
    </div>
	
	
    
	<footer class="my-5 pt-5 text-muted text-center text-small">
		<h1 class="mb-1">&copy;footer</h1>
	</footer>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>