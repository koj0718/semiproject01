<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/views/store/store_header.jsp" %>

   		<hr class="my-4"><br>

<div class="own-container">
    <div class="own-main">
        <ul class="nav clearfix">
            <li class="n1"><a href="#" onclick="redirectLogin('/owner/orders/')" style="cursor: pointer">주문확인</a></li>
            
            <li class="n2"><a href="#" onclick="openCeoBasicInfoMenu()" style="cursor: pointer">기본 정보</a></li>
            
            <li class="n3"><a href="#" onclick="redirectCeoLogin('/owner/menu/')" style="cursor: pointer">품절 메뉴 관리</a></li>
            <li class="n4"><a href="#" onclick="redirectLogin('/owner/oe/')" style="cursor: pointer">영업일 관리</a></li>
            <li class="n5"><a href="#" onclick="redirectLogin('/owner/delivery/')" style="cursor: pointer">배달지역/배달요금</a></li>
            <li class="n6"><a href="#" onclick="redirectLogin('/owner/discounts/')" style="cursor: pointer">할인관리</a></li>
        </ul>

        <div class="own-login">
            
            <div class="status-logout">
                <div class="login">
                    <div class="one-id">
                        <a href="https://ceo.yogiyo.co.kr/login?by_dowant=1"><button type="button" class="btn-own-login">One 아이디 로그인</button></a>
                        <a href="https://ceo.yogiyo.co.kr/sign-up"><button type="button" class="btn-own-login signup">One 아이디 회원가입</button></a>
                        <div class="id_pw_opt">
                            <a href="https://ceo.yogiyo.co.kr/forgot-id">아이디 찾기</a>
                            <a href="https://ceo.yogiyo.co.kr/forgot-password">비밀번호 찾기</a>
                        </div>
                    </div>
                    <div class="old-id">
                        <a href="/owner/login/"><button type="button" class="btn-own-login">기존 계정 로그인</button></a>
                        <div class="id_pw_opt">
                            <a class="non-after" href="/owner/registration/1/">아이디/비밀번호 찾기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

   		<hr class="my-4"><br>

<%@ include file="/views/store/store_footer.jsp" %>