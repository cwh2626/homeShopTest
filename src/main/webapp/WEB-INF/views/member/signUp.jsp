<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>EstateAgency Bootstrap Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="../resources/bootstrap/img/favicon.png" rel="icon">
  <link href="../resources/bootstrap/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="../resources/bootstrap/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="../resources/bootstrap/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="../resources/bootstrap/lib/animate/animate.min.css" rel="stylesheet">
  <link href="../resources/bootstrap/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="../resources/bootstrap/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="../resources/bootstrap/css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
   <!-- ======== script ======== -->	 
  <script type="text/javascript" src="../resources/jquery/jquery-3.4.1.min.js"></script>
   
  <!-- ======== style ========= -->
<style type="text/css">
td {
	padding-top: 20px;
}

th{
	font-size: xx-large;
}

</style>
</head>

<body>

  <div class="click-closed"></div>
  <!--/ Form Search Star /-->
  <div class="box-collapse">
    <div class="title-box-d">
      <h3 class="title-d">Search Property</h3>
    </div>
    <span class="close-box-collapse right-boxed ion-ios-close"></span>
    <div class="box-collapse-wrap form">
      <form class="form-a">
        <div class="row">
          <div class="col-md-12 mb-2">
            <div class="form-group">
              <label for="Type">Keyword</label>
              <input type="text" class="form-control form-control-lg form-control-a" placeholder="Keyword">
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="Type">Type</label>
              <select class="form-control form-control-lg form-control-a" id="Type">
                <option>All Type</option>
                <option>For Rent</option>
                <option>For Sale</option>
                <option>Open House</option>
              </select>
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="city">City</label>
              <select class="form-control form-control-lg form-control-a" id="city">
                <option>All City</option>
                <option>Alabama</option>
                <option>Arizona</option>
                <option>California</option>
                <option>Colorado</option>
              </select>
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="bedrooms">Bedrooms</label>
              <select class="form-control form-control-lg form-control-a" id="bedrooms">
                <option>Any</option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
              </select>
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="garages">Garages</label>
              <select class="form-control form-control-lg form-control-a" id="garages">
                <option>Any</option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
                <option>04</option>
              </select>
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="bathrooms">Bathrooms</label>
              <select class="form-control form-control-lg form-control-a" id="bathrooms">
                <option>Any</option>
                <option>01</option>
                <option>02</option>
                <option>03</option>
              </select>
            </div>
          </div>
          <div class="col-md-6 mb-2">
            <div class="form-group">
              <label for="price">Min Price</label>
              <select class="form-control form-control-lg form-control-a" id="price">
                <option>Unlimite</option>
                <option>$50,000</option>
                <option>$100,000</option>
                <option>$150,000</option>
                <option>$200,000</option>
              </select>
            </div>
          </div>
          <div class="col-md-12">
            <button type="submit" class="btn btn-b">Search Property</button>
          </div>
        </div>
      </form>
    </div>
  </div>
  <!--/ Form Search End /-->

  <!--/ Nav Star /-->
  <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" href="/shop">웅희<span class="color-b">집</span></a>
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="about.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="property-grid.html">Property</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="blog-grid.html">Blog</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
              aria-haspopup="true" aria-expanded="false">
              Pages
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="property-single.html">Property Single</a>
              <a class="dropdown-item" href="blog-single.html">Blog Single</a>
              <a class="dropdown-item" href="agents-grid.html">Agents Grid</a>
              <a class="dropdown-item" href="agent-single.html">Agent Single</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="./signUpMain">회원가입</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="./loginMain">로그인</a>
          </li>
        </ul>
      </div>
      <button type="button" class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
    </div>
  </nav>
  <!--/ Nav End /-->
   <script type="text/javascript">
   var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; //이메일 정규식
   var verificationCode ; //인증번호
   var emailCheckBoolean = false; //이메일체크
   var generalSetInterval; //통합 타이머
   
   $(document).ready(function () {
	   
 		$('#emailCheck').on('click',function(){
			var email = $('input[name=email').val();
			 
			if(regExp.test(email)){
				$('#emailCheck').css('display','none');
				signUpEmailCheck(email);
				
			}else{
				alert('이메일 제대로 적어라잉')
			}
 		});
 		
 		$('#emailCheckNumButton').on('click',function(){
 			var emailCheckNum = $('#emailCheckNum').val();
 			if(verificationCode == emailCheckNum){
 				emailCheckBoolean = true;
 				$('#emailCheck').html('사용가능');
 		 		$('#emailCheck').off('click');
 		 		$('#emailCheck').removeAttr('href'); 
				$('#emailCheck').css('color','#2eca6a');
				$('#emailCheck').css('display','block');
  			  	$('#emailCheckNum').closest('div').css('display','none');

 			}else{
 				alert('인증번호가 틀립니다.')
 			}
 		});
 		
 		$('#emailCheckNumAgainButton').on('click',function(){
			var email = $('input[name=email').val();
			if(regExp.test(email)){
				
				clearInterval(generalSetInterval); //setInterval() 실행을 취소
				signUpEmailCheck(email);
			}else{
				alert('이메일 제대로 적어라잉')
			}
 			
 		});

 		
 		
   });
   
   //자릿수 채우기 함수
   function pad(n, width) {
	   n = n + '';
	   return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
   }
   
   function emailCheckTimer(time) {
	  var time = time; //기준시간 작성
	  var min //분
	  var sec //초
	  
	  
	  generalSetInterval = setInterval(function() {
		  //parseInt() : 정수를 반환
		  min = parseInt(time/60); //몫을 계산
	  	  sec = time%60; //나머지를 계산
	  	  $('#emailCheckNum').closest('div').find('span').html(min + " : " + pad(sec,2));
	  	  time--;
	  	  
	  	  //타임아웃 시 
	  	  if(time < 0 ){
	  		  clearInterval(generalSetInterval); //setInterval() 실행을 취소
		  	  $('#emailCheckNum').closest('div').find('span').css('color','red');
	  		  verificationCode = null;
	  		  
	  	  }
	  }, 1000);
   }
   
   function signUpEmailCheck(email){
	   $.ajax({
	   		  url: 'signUpEmailCheck',
	   	  	  type: 'POST', 
	   	  	  data: {email : email},
	   	  	  dataType:'text',
	   	  	  success: function(result) {
	   	  		  if(result == '1'){
	   	  			  alert("이미 등록된 이메일입니다.")
	  				  $('#emailCheck').css('display','block');
	   	  			  
	   	  		  }else{
	   	  			  verificationCode = result;
	   	  			  
	   	  			  alert("전송완료")
	   	  			  $('#emailCheckNum').closest('div').css('display','block');
	   	  			  
	   		  		  clearInterval(generalSetInterval); //setInterval() 실행을 취소
	   	  			  emailCheckTimer(30);
	   	  		  } 
	   	  			
	
	   	  	  },
				  error: function(error) {
				        alert('error.status의 값 : ' + error.status);
				  }					    	 
	  		}); 
   }
  
   
   
   </script>
  <!-- sing Up -->
 <form action="user" method="post">
  <table class="form-a" style="  position: relative;
  top: 50%; 
  left: 50%;
  margin-top: 200px; 
  margin-left: -225px;  
  width: 475px;
  " >
  	<tr>
  		<th style ="text-align: center;">회원 가입</th>
  	</tr>
  	<tr> 
  		<td>  
  			<h6>Email</h6> 
            <input type="text" name="email" class="form-control form-control-lg form-control-a" placeholder="이메일을 입력하세요">
            <a href="javascript:void(0);" id="emailCheck">인증번호 전송</a>
            <div style="display: none; margin-top: 10px;">   
	            <input type="text" id="emailCheckNum" placeholder="안중번호를 입력하세요" style=" width: 250px; height: 34px">   
           		<span style="position:absolute; margin-left: -50px; margin-top: 4.5px;"></span> 
				<input type="button" id="emailCheckNumButton"class="btn btn-b-n" value="확인">
				<input type="button" id="emailCheckNumAgainButton"class="btn btn-b-n" value="재전송"> 
            </div>
			<p style="display: none;">이미 등록된 이메일 입니다.</p>	  		 
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<h6>Name</h6>
            <input type="text" name="name" class="form-control form-control-lg form-control-a" placeholder="이름을 입력하세요">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<h6>NicName</h6>
            <input type="text" name="nickname" class="form-control form-control-lg form-control-a" placeholder="사용할 닉네임을 입력하세요">
  		</td>
  	</tr>
  	
  	<tr>
  		<td>
  			<h6>Phone Number</h6>
            <input type="text" name="phonenum" class="form-control form-control-lg form-control-a" placeholder="전화번호를 입력하세요">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<h6>Password</h6>
            <input type="password" name="password" class="form-control form-control-lg form-control-a" placeholder="비밀번호를 입력하세요">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<h6>Password Check</h6>
            <input type="password" class="form-control form-control-lg form-control-a" placeholder="비밀번호를 다시 입력하세요">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<div class="col-md-12" style ="text-align: center;">
            <button type="submit" class="btn btn-b">Join</button>
          	</div>
  		</td>
  	</tr>
  </table>
 </form>
  <!-- sing Up End -->
  	
  <!--/ footer Star /-->
  <section class="section-footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-4">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">EstateAgency</h3>
            </div>
            <div class="w-body-a">
              <p class="w-text-a color-text-a">
                Enim minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip exea commodo consequat duis
                sed aute irure.
              </p>
            </div>
            <div class="w-footer-a">
              <ul class="list-unstyled">
                <li class="color-a">
                  <span class="color-text-a">Phone .</span> contact@example.com</li>
                <li class="color-a">
                  <span class="color-text-a">Email .</span> +54 356 945234</li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md-4 section-md-t3">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">The Company</h3>
            </div>
            <div class="w-body-a">
              <div class="w-body-a">
                <ul class="list-unstyled">
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Site Map</a>
                  </li>
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Legal</a>
                  </li>
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Agent Admin</a>
                  </li>
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Careers</a>
                  </li>
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Affiliate</a>
                  </li>
                  <li class="item-list-a">
                    <i class="fa fa-angle-right"></i> <a href="#">Privacy Policy</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-sm-12 col-md-4 section-md-t3">
          <div class="widget-a">
            <div class="w-header-a">
              <h3 class="w-title-a text-brand">International sites</h3>
            </div>
            <div class="w-body-a">
              <ul class="list-unstyled">
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Venezuela</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">China</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Hong Kong</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Argentina</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Singapore</a>
                </li>
                <li class="item-list-a">
                  <i class="fa fa-angle-right"></i> <a href="#">Philippines</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <nav class="nav-footer">
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">Home</a>
              </li>
              <li class="list-inline-item">
                <a href="#">About</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Property</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Blog</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Contact</a>
              </li>
            </ul>
          </nav>
          <div class="socials-a">
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-pinterest-p" aria-hidden="true"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a href="#">
                  <i class="fa fa-dribbble" aria-hidden="true"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="copyright-footer">
            <p class="copyright color-text-a">
              &copy; Copyright
              <span class="color-a">EstateAgency</span> All Rights Reserved.
            </p>
          </div>
          <div class="credits">
            <!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=EstateAgency
            -->
            Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!--/ Footer End /-->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <div id="preloader"></div>

  <!-- JavaScript Libraries -->
  <script src="../resources/bootstrap/lib/jquery/jquery.min.js"></script>
  <script src="../resources/bootstrap/lib/jquery/jquery-migrate.min.js"></script>
  <script src="../resources/bootstrap/lib/popper/popper.min.js"></script>
  <script src="../resources/bootstrap/lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="../resources/bootstrap/lib/easing/easing.min.js"></script>
  <script src="../resources/bootstrap/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="../resources/bootstrap/lib/scrollreveal/scrollreveal.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="../resources/bootstrap/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="../resources/bootstrap/js/main.js"></script>

</body>
</html>
