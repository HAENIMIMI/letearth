<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>

	<!-- 헤더 -->
	<%@ include file="../include/header.jsp" %>
	
	 <section class="contact-form-area">
        <div class="container" style="margin-top: 110px; margin-bottom: 110px;">
        
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-title text-center">
                        <span>로그인</span>
                        <h3 class="title">login</h3>
                    </div>
                </div>
            </div>
            
            <div class="row justify-content-center">
                <div class="col-lg-8">
                	<!-- form -->
                    <form id="contact-form" action="/login" method="post">
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
                               
                                    <div class="input-box mt-20 text-center">
                                        <button class="main-btn" type="submit">로그인</button>
                                    </div>
                                    <div>
                                    	<p>로그인 정보를 잊으셨나요?</p>
                                    	<a href="#">아이디 / 비밀번호 찾기</a>
                                    </div>
                                </div>
                                
                            </div>
                            </form>
                        </div>

                    <p class="form-message"></p>
                </div>
                
            </div>

    </section>
	
	
	
	
	
	<!-- 푸터 -->
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>