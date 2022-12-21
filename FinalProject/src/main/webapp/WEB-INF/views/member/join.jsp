<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>

	<!-- 헤더 -->
	<%@ include file="../include/header.jsp" %>
	

    <!--====== FORM PART START ======-->
    
    <section class="contact-form-area">
        <div class="container" style="margin-top: 110px; margin-bottom: 110px;">
        
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-title text-center">
                        <span>회원가입</span>
                        <h3 class="title">Join</h3>
                    </div>
                </div>
            </div>
            
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <form id="contact-form" action="/member/join" method="post">
                        <div class="conact-form-item">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mt-20">
                                        <input type="text" placeholder="아이디를 입력해주세요" name="member_id">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mt-20">
                                        <input type="password" placeholder="비밀번호를 입력해주세요" name="member_pw">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mt-20">
                                        <input type="password" placeholder="비밀번호 확인" name="member_pw2">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mt-20">
                                        <input type="text" placeholder="이름을 입력해주세요" name="member_name">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mt-20">
                                        <input type="text" placeholder="휴대폰 번호를 입력해주세요" name="member_phone">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mt-20">
                                        <input type="email" placeholder="이메일을 입력해주세요" name="member_email">
                                    </div>
                                </div>
                               
                                    <div class="input-box mt-20 text-center">
                                        <button class="main-btn" type="submit">가입하기</button>
                                    </div>
                                </div>
                                
                            </div>
                            </form>
                        </div>

                    <p class="form-message"></p>
                </div>
                
            </div>

    </section>
    
    <!--====== FORM PART ENDS ======-->
	
	

	<!-- 푸터 -->
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>