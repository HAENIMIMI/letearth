<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri ="http://java.sun.com/jsp/jstl/fmt"%>
<title>LET EARTH</title>
<link rel="stylesheet" href="../resources/assets/css/project.css">
<script src="../resources/assets/js/vendor/jquery-3.5.1.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!--====== Required meta tags ======-->
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!--====== Title ======-->
<title>LET EARTH</title>

<!--====== Favicon Icon ======-->
<link rel="shortcut icon" href="../resources/assets/images/favicon.ico" type="image/png">

<!--====== Bootstrap css ======-->
<link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css">

<!--====== flaticon css ======-->
<link rel="stylesheet" href="../resources/assets/css/flaticon.css">

<!--====== odometer css ======-->
<link rel="stylesheet" href="../resources/assets/css/odometer.min.css">

<!--====== magnific popup css ======-->
<link rel="stylesheet" href="../resources/assets/css/magnific-popup.css">

<!--====== Fontawesome css ======-->
<link rel="stylesheet" href="../resources/assets/css/font-awesome.min.css">

<!--====== animate css ======-->
<link rel="stylesheet" href="../resources/assets/css/animate.min.css">

<!--====== Slick css ======-->
<link rel="stylesheet" href="../resource/sassets/css/slick.css">

<!--====== Default css ======-->
<link rel="stylesheet" href="../resources/assets/css/default.css">

<!--====== Style css ======-->
<link rel="stylesheet" href="../resources/assets/css/style.css">

    
<!-- TOAST UI Editor CDN URL(CSS)-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>

<!-- jQuery CDN -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->

<!-- jQuery UI CDN -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>

<link rel="stylesheet" type="text/css" href="/tag_create.css">
<script type="module" src="/tag_create.js"></script>
<script src="https://unpkg.com/@yaireo/tagify"></script>
<link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />

<style>
#rangeGraph{
    height:10px;
    background:#e9e9ee;
}

#rangeGraph span{
    height:100%;
    width:0%;
    background:#29f0b4;
}
.user-img {
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	width: 80px;
    height: 80px;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    border-radius: 50%;
}
.pb-190 {
	padding-bottom: 90px;
}
only screen and (min-width: 768px) and (max-width: 991px)
.project-details-content-area .tab-btns .nav li a {
	color: #1b1f2e;
}
</style>
<script>
$(document).ready(function(){
	// ????????? ?????? ??? ???????????? ??? ????????????
	$.ajax({
		url:"/project/basicInfo",
		type:"get",
		datatype:"html",
		success:function(data){
			$("#project").html(data);
		}	
	});
	
	// ?????? ??????
	$('#basicInfo-tab').click(function() {
		$.ajax({
			url:"/project/basicInfo",
			type:"get",
			datatype:"html",
			success:function(data){
				$("#project").html(data);
			}	
		});
	});
	
	// ??????
	$('#plan-tab').click(function() {
		$.ajax({
			url:"/project/plan",
			type:"get",
			datatype:"html",
			success:function(data){
				$("#project").html(data);
			}	
		});
	});
	
	// ?????????
	$('#reward-tab').click(function() {
		$.ajax({
			url:"/project/reward",
			type:"get",
			datatype:"html",
			success:function(data){
				$("#project").html(data);
			}	
		});
	});
	
	// ?????????
	$('#story-tab').click(function() {
		$.ajax({
			url:"/project/story",
			type:"get",
			datatype:"html",
			success:function(data){
				$("#project").html(data);
			}	
		});
	});
	
	// ??????
	$('#policy-tab').click(function() {
		$.ajax({
			url:"/project/policy",
			type:"get",
			datatype:"html",
			success:function(data){
				$("#project").html(data);
			}	
		});
	});
	
	// ?????????
	$('#regist-tab').click(function() {
		$.ajax({
			url:"/project/regist",
			type:"get",
			datatype:"html",
			success:function(data){
				$("#project").html(data);
			}	
		});
	});

});
</script>
    <!--====== PROJECT DETAILS PART START ======-->
    
    <section class="project-details-area pt-120 pb-190" style="background-color: white">
        <div style="display: flex; justify-content: center;">
        </div>
    </section>
    
    
    <!--====== PROJECT DETAILS PART ENDS ======-->
 
 <section class="project-details-content-area pb-110">
        <div style="display: flex; justify-content: center;">
                <div class="col-lg-8">
                    <div class="tab-btns">
                        <ul class="nav nav-pills" id="pills-tab" role="tablist">
                        	<!-- ??? ?????? -->
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="basicInfo-tab" data-toggle="pill" href="#project" role="tab" aria-controls="project" aria-selected="false" style="padding: 0px; margin-left:1em; margin-right:1em; background: none; color: #1b1f2e;">?????? ??????</a>
                            </li>
                            <li class="nav-item" role="presentation">
                               <a class="nav-link" id="plan-tab" data-toggle="pill" href="#project" role="tab" aria-controls="project" aria-selected="false" style="padding: 0px; margin-left:1em; margin-right:1em; background: none; color: #1b1f2e;">??????</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="reward-tab" data-toggle="pill" href="#project" role="tab" aria-controls="project" aria-selected="false" style="padding: 0px; margin-left:1em; margin-right:1em; background: none; color: #1b1f2e;">?????????</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="story-tab" data-toggle="pill" href="#project" role="tab" aria-controls="project" aria-selected="false" style="padding: 0px; margin-left:1em; margin-right:1em; background: none; color: #1b1f2e;">?????????</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="policy-tab" data-toggle="pill" href="#project" role="tab" aria-controls="project" aria-selected="false" style="padding: 0px; margin-left:1em; margin-right:1em; background: none; color: #1b1f2e;">??????</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="regist-tab" data-toggle="pill" href="#project" role="tab" aria-controls="project" aria-selected="false" style="padding: 0px; margin-left:1em; margin-right:1em; background: none; color: #1b1f2e;">????????? ?????? ??????</a>
                            </li>
                        	<!-- ??? ?????? -->
                        </ul>
                    </div>
            	 <hr>
                    <div class="tab-content" id="pills-tabContent">
	                    <!-- ?????? ?????? -->
	                    <div class="tab-pane fade show active" id="project" role="tabpanel" aria-labelledby="project-tab">
	                    </div>
	                    <!-- ?????? ?????? -->
	                    <!-- ?????? -->
	                    <div class="tab-pane fade" id="plan" role="tabpanel" aria-labelledby="plan-tab">
	                    </div>
	                    <!-- ?????? -->
	                    <!-- ????????? -->
	                    <div class="tab-pane fade" id="reward" role="tabpanel" aria-labelledby="reward-tab">
	                    </div>
	                    <!-- ????????? -->
	                    <!-- ????????? -->
	                    <div class="tab-pane fade" id="story" role="tabpanel" aria-labelledby="story-tab">
	                    </div>
	                    <!-- ????????? -->
	                    <!-- ?????? -->
	                    <div class="tab-pane fade" id="policy" role="tabpanel" aria-labelledby="policy-tab">
	                    </div>
	                    <!-- ?????? -->
                      	<!-- ????????? -->
                        <div class="tab-pane fade" id="regist" role="tabpanel" aria-labelledby="regist-tab">
                        </div>
                      	<!-- ????????? -->
					</div>
                </div>
	</div>
</section>
	
	<!-- ?????? -->
	<%@ include file="../include/footer.jsp" %>