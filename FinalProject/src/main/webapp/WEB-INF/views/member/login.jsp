<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<!-- 헤더 -->
	<%@ include file="../include/header.jsp" %>
	
	<!-- 카카오 로그인 SDK CDN-->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	
	<script src="../resources/assets/js/vendor/jquery-3.5.1.min.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
	 		Kakao.init('53490119206f1f43ee2b89e08f72694b'); // 본인의 앱 key
	 		Kakao.isInitialized();
	 	})
	 	
	 	function loginWithKakao(){	
 		Kakao.Auth.login({	
	        scope: 'profile_nickname, account_email', 
	        success: function(response) {  
	        	
	        	window.Kakao.API.request({ 			
	                url: '/v2/user/me',
	                success: function(res){
	               		var kakaoAccountInfo = res;              	  
	              		
	              	  	checkMemberExist(kakaoAccountInfo);                	
	                }
	            });      	
	        	
	        	},
	        fail: function(error) { console.log(error); }
	    	});
 		}
		
		function checkMemberExist(kakaoAcountInfo){
	 		$.ajax({
	        type: "GET",
	        url: "/member/checkKakaoAccountExist?kid="+kakaoAcountInfo.id,
	        async: false,
	        success: function(res) {        	
	            if(res == "true"){
	            	// 회원정보가 있음 -> 로그인
	            	swal("카카오 로그인 정보가 있습니다!",'로그인을 진행합니다','success');
	            	location.href="/main/all"
	            }
	            else{
	            	// 회원정보가 없음 -> 회원가입?
	            	if(confirm("회원이 아닙니다. 가입하시겠습니까?")){
	            		// 회원가입 진행
	            		insertKakaoMember(kakaoAcountInfo);
	            	}
	            	else{
	            		// 로그인페이지로 이동
	            		location.href="/member/login"
	            	}
	            }
	        },
	        error: function() {
	          console.log('실패!!');
	        },
	        complete: function(){
	        	
	        }
	      });
	 	}
	
		function insertKakaoMember(kakaoAcountInfo){
	 		var kid = kakaoAcountInfo.id;
	 		var user_name = kakaoAcountInfo.properties.nickname;
	 		var email = kakaoAcountInfo.kakao_account.email;
	 		
	 		$.ajax({
	 	        type: "GET",
	 	        url: "/member/insertKakaoMember?kid="+kakaoAcountInfo.id+"&user_name="+user_name+"&email="+email,
	 	        async: false,
	 	        success: function(res) {
	 	        	location.href="/main/all"
	 	        },
	 	        error: function() {
	 	          console.log('실패!!');
	 	        },
	 	        complete: function(){
	 	        	
	 	        }
	 	      });
	 		
	 	}
		
		function ckLogin(){
			if(document.fr.mem_id.value==""){
				swal('아이디를 입력해주세요!',"",'info');
				return false;
			}
			if(document.fr.mem_pw.value==""){
				swal('비밀번호를 입력해주세요!',"",'info');
				return false;
			}
		}
		
	</script>
	
	 <section class="contact-form-area">
        <div class="container" style="margin-top: 110px; margin-bottom: 110px;">
        
            <div class="row justify-content-cenSter">
                <div class="col-lg-8">
                    <div class="section-title text-center" style="margin-left: 405px;">
                        <span>로그인</span>
                        <h3 class="title">login</h3>
                    </div>
                </div>
            </div>
            
            <div class="row justify-content-center">
                <div class="col-lg-8">
                	<!-- form -->
                    <form action="/member/login" name="fr" method="post" onsubmit="return ckLogin()">
                        <div class="conact-form-item" style="display: flex; flex-direction: column;">
                            <div class="row" style="display: flex; flex-direction: column; align-items: center;">
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mt-20">
                                        <input type="text" placeholder="아이디를 입력해주세요" name="mem_id" maxlength="20" style="color: #D7D1B9;">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="input-box mt-20">
                                        <input type="password" placeholder="비밀번호를 입력해주세요" name="mem_pw" maxlength="21" style="color: #D7D1B9;">
                                    </div>
                                </div>
                               
                                    <div class="input-box mt-20 text-center">
                                        <input type="submit" class="main-btn" value="로그인" style="width: 370px; padding-left: 54px; background: #A4AC85; color: #414934;">
                                    </div>
                                    <div>
                                    <a id="kakao-login-btn" href="javascript:loginWithKakao()">
  											<img src="../resources/assets/images/kakao_login_medium_wide.png" width="370px"  height="55px;" style="margin-top: 20px;" alt="카카오 로그인"/>
  										</a>
                                    </div>
                                </div>
                                	<div style="text-align: center; margin-top: 20px;">
                                    	<p>로그인 정보를 잊으셨나요?</p>
                                    	<a href="/member/findId" style="color: #8d9f6f;">아이디 / 비밀번호 찾기</a>
                                    </div>
                                    <div style="text-align: center; margin-top: 10px;">
                                    	<p>아직 LetEarth의 회원이 아니신가요?</p>
                                    	<a href="/member/beforeJoin" style="color: #8d9f6f;">회원가입 하기</a>
                                    </div>
                                
                            </div>
                            </form>
                        </div>
                </div>
                
            </div>

    </section>
	
	<script>
		$(function() {
			var responseMessage = '<c:out value="${message}"/>';
			if (responseMessage != "") {
 				swal(responseMessage,'','info')
			}
		})
	</script>
	
	
	
	<!-- 푸터 -->
	<%@ include file="../include/footer.jsp" %>
	
