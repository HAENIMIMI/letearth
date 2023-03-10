<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
	<!-- 헤더 -->
	<%@ include file="../include/header.jsp" %>

<!-- 마우스오버 -->
 <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
    $(document).ready(function () 
    {
        $('.ho').hover(function(){
            $(this).css('color','#a4ac85');
        }, function() {
            $(this).css('color','gray');
        });
    });
</script>


		<section class="contact-form-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="section-title text-center">
<!--                         <span>test</span> -->
<!--                         <h3 class="title">이벤트</h3> -->
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-8">
                	<h4 style="color:gray; font-size: 1.5rem; position: relative; bottom: 6px; left: 3px; margin-right:5px; color:gray;">
                	<span style="font-weight: bolder;">
                		<a class="ho"href="/notice/main" style="color:gray;">전체</a></span>
                	<span>|</span>
                	<span style="font-weight: bolder;">
                		<a class="ho" href="/notice/all" style="color:gray;">공지사항</a></span>
                	<span>|</span>     
               		<span style="font-weight: bolder;">
               			<a href="/notice/event" style="color:#a4ac85;">이벤트</a></span></h4>
                <hr>
                <c:forEach var="vo" items="${noticeEventList }">   
                    <form id="contact-form" action="" method="">
                        <div class="conact-form-item">
                            <div class="row">
                            <div class="col-lg-12 col-md-12">
	                            
	                            <div>
                                    <span><p style="font-weight: bolder;">
									[
	                                <c:choose>
									<c:when test="${vo.not_cat eq 1}">공지사항</c:when>
									<c:when test="${vo.not_cat eq 2}"><a style="color:#b6ad90;">이벤트</a></c:when>
									</c:choose>
									] 
									<a style="color:#262626;" href="/notice/read?not_no=${vo.not_no }">${vo.not_title }</a></p>
                                    <fmt:formatDate value="${vo.not_date }" pattern="yyyy.MM.dd"/>
                                    </span>
                              		
                                </div>
        
                            </div>
                        </div>
                    </form>
                    <hr>
                    </c:forEach>
                    
                    
                    <div class="text-center">	
    			<ul>	
    			
<!--  스프링보드에서 가져온 코드인데 안나와서 아랫코드로 대체하고 주석처리 -->
<%-- 	   				<c:if test="${pvo.prev }"> --%>
<%-- 	                	<li style="display:inline-block; padding: 20px"><a href="/notice/event?page=${pvo.startPage-1 }">«</a></li> --%>
<%-- 	                </c:if> --%>
       
<!-- 	          page=1일때만 안보이는 이전페이지로 가는 코드부분 -->
	                <c:if test="${(pvo.cri.page-1) >= pvo.startPage }">
	                <li style="display:inline-block; padding: 20px"><a style="color:gray;" href="/notice/event?page=${pvo.cri.page-1 }">«</a></li>
	                </c:if>
	                
	                <c:forEach var="idx" begin="${pvo.startPage }" end="${pvo.endPage }" step="1">
	               		<li
	               			<c:out value="${idx == pvo.cri.page? 'class=active':'' }"/> 
	               		style="display:inline-block; padding: 20px"
	               		><a style="color:gray;" href="/notice/event?page=${idx }">${idx }</a></li>
	                </c:forEach>
	                
<!-- 	          page=4일때만 안보이는 이후페이지로 가는 코드부분 -->      
	                <c:if test="${(pvo.cri.page+1) <= pvo.endPage }">
	                <li style="display:inline-block; padding: 20px"><a style="color:gray;" href="/notice/event?page=${pvo.cri.page+1 }">»</a></li>
               		</c:if>
               		
<!--  스프링보드에서 가져온 코드인데 안나와서 윗코드로 대체하고 주석처리 -->	                
<%-- 	                <c:if test="${pvo.next }"> --%>
<%-- 	                	<li style="display:inline-block; padding: 20px"><a href="/notice/event?page=${pvo.endPage+1 }">»</a></li> --%>
<%-- 	                </c:if> --%>
	                
    			</ul>
    			</div>	
                    
                <div class="input-box mt-20 text-right">    
                <c:if test="${mem_id.equals('admin') }">    
                    <button type="button" style="color:#fff; background:#6f7b63; width:100px; height:40px; margin:5px; border-radius:5px; border:1px solid #fff;" onClick="location.href='/notice/regist'">글 작성하기</button>
    			</c:if>
                    <p class="form-message"></p>
                </div>    
                    
                </div>
            </div>
        </div>
    </section>

	
	
	
	<!-- 푸터 -->
	<%@ include file="../include/footer.jsp" %>