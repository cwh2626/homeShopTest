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
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script><!--카카오 우편API -->
  
   
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
   var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i; // 이메일 정규식
   var verificationCode ; // 인증번호
   var emailCheckBoolean = false; // 이메일체크
   var passwordCheckBoolean = false; // 비밀번호체크
   var addressCheckBoolean = false; // 주소체크
   var nicknameCheckBoolean = false; // 닉네임체크
   var generalSetInterval; // 통합 타이머
   
   $(document).ready(function () {
	   
	    // 인증번호 전송 버튼
 		$('#emailCheck').on('click',function(){
			var email = $('input[name=email').val(); // 입력한 이메일
			 
			// 정규식으로 올바른 이메일인지 확인
			if(regExp.test(email)){
				$('#emailCheck').css('display','none'); // 인증번호 전송 버튼 숨김
				$('#emailCheck').closest('td').find('img').css('display','block'); // 로딩 gif 보이기

				signUpEmailCheck(email);
				
			}else{
				alert('이메일 제대로 적어라잉')
			}
 		});
 		
	    // 입력한 인증번호가 알맞은지 확인 버튼
 		$('#emailCheckNumButton').on('click',function(){
 			var emailCheckNum = $('#emailCheckNum').val(); // 입력한 인증번호
 			if(verificationCode == emailCheckNum){ // 입력한 인증번호와 전송받은 인증번호가 같은지 확인
 				emailCheckBoolean = true; //같으면 메일완료 체크 
 				// 완료 이벤트
 				$('input[name=email').attr('disabled','disabled');
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
 		
	    // 이메일 인증번호 재전송 버튼
 		$('#emailCheckNumAgainButton').on('click',function(){
			var email = $('input[name=email]').val(); // 입력한 이메일
			
			// 혹시 모르니 다시한번 정규식 이메일 체크
			if(regExp.test(email)){
				
				clearInterval(generalSetInterval); //setInterval() 실행을 취소
				signUpEmailCheck(email);
			}else{
				alert('이메일 제대로 적어라잉')
			}
 			
 		});
	     
	    // 비밀번호를 입력할때 마다 발동(키를떼고 발동)
      	$("#password").keyup(function() {
      		
      		var pwd = $('#password').val();
      		
      		if(chekPassword(pwd) != '0'){ 
      			$('#password').closest('td').find('span').html('사용불가')	
      			$('#password').closest('td').find('span').css('color','red');	
      			passwordCheckBoolean = false;
      		}else{
      			$('#password').closest('td').find('span').html('사용가능')	
      			$('#password').closest('td').find('span').css('color','#2eca6a'); 	
      			passwordCheckBoolean = true;
      		}
      		
      	});
	    
	    // 닉네임을 입력할때 마다 발동(키를떼고 발동)
      	$("#nickname").keyup(function() {
      		var nickname = $('#nickname').val();
      		
      		// 닉네임 정규식
      		// [\w]는 [A-Za-z0-9_] 이다
      		// [\W]는 \w를 제외한 특수문자들이다.
      		var nicknameRegExp = /^[\wㄱ-ㅎㅏ-ㅣ가-힣]{2,10}$/;  
      		

      		if(nicknameRegExp.test(nickname)){
      			
      			// 닉네임 존재유무 확인 ajax
      			$.ajax({ 
      			  url: 'signUpNicknameCheck',
  	  	   	  	  type: 'POST', 
  	  	   	  	  data: {nickname : nickname},
  	  	   	  	  dataType:'text',
  	  	   	  	  success: function(result) {
  	  	   	  		  if(result != "1"){
  			  	   	  		$('#nickname').closest('td').find('span').html('사용가능')	
  			      			$('#nickname').closest('td').find('span').css('color','#2eca6a'); 	
  			  	   	  		nicknameCheckBoolean = true;
  	  	   	  		  }else{
  			  	   	  		$('#nickname').closest('td').find('span').html('이미존재')	 
  			      			$('#nickname').closest('td').find('span').css('color','red');	
  			  	   	  		nicknameCheckBoolean = false;
  	  	   	  			  
  	  	   	  		  }
  	  	   	  	  },
  	 			  error: function(error) {
  	 			
  	 			  }					  
        		});
      			
      		}else{
      			$('#nickname').closest('td').find('span').html('사용불가')	
      			$('#nickname').closest('td').find('span').css('color','red');	
  	   	  		nicknameCheckBoolean = false;

      		}
      		
      	});


 		
 		
   });// ====== ready :: END ======
   
	   
	   
   // 자릿수 채우기 함수
   // n : 값
   // width : 자릿수		   
   function pad(n, width) {
	   n = n + '';
	   return n.length >= width ? n : new Array(width - n.length + 1).join('0') + n;
   }
   
   // 이메일 입력 시간 함수
   // time : 기준시간(초 단위)
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
		  	  $('#emailCheckNum').closest('div').find('span').css('color','red'); // 시간초과를 뜻하기 위하여 시간표시를 빨간색으로 변경
	  		  verificationCode = null; // 입력시간 초과시 인증번호를 null로 변경
	  		  
	  	  }
	  }, 1000);
   }
   
   //등록된 이메일인지 확인하거나 등록이 되지않았다면 즉시 인증번호 메일 전송 함수
   //email : 입력한 이메일
   function signUpEmailCheck(email){
	   $.ajax({
	   		  url: 'signUpEmailCheck',
	   	  	  type: 'POST', 
	   	  	  data: {email : email},
	   	  	  dataType:'text',
	   	  	  success: function(result) {
	   	  		  
				  $('#emailCheck').closest('td').find('img').css('display','none'); // 로딩 gif 숨김

	   	  		  if(result == '1'){
	   	  			  alert("이미 등록된 이메일입니다.")
	  				  $('#emailCheck').css('display','block'); // 등록된 이메일이기에 다시 인증벚호 전송 버튼 보이기
	   	  			  
	   	  		  }else{
	   	  			  verificationCode = result; // 등록되지않은 메일일 경우 컨트롤단에서 바로 인증번호를 전송했기에 여기에 인증번호를 담는다
	   	  			  
	   	  			  alert("전송완료")
	   	  			  $('#emailCheckNum').closest('div').css('display','block'); // 인증벚호 입력 div를 보이기
	   	  			  
	   		  		  clearInterval(generalSetInterval); // 혹시모르니 실행 중인 setInterval() 실행을 취소
	   	  			  emailCheckTimer(300); 
	   	  		  } 
	   	  			
	
	   	  	  },
				  error: function(error) {
				        alert('error.status의 값 : ' + error.status);
				  }					    	 
	  		}); 
   }
   
   //우편찾기 버튼 클릭시 실행
   function sample6_execDaumPostcode() {
       new daum.Postcode({
           oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 각 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var addr = ''; // 주소 변수
               var extraAddr = ''; // 참고항목 변수

               //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                   addr = data.roadAddress;
               } else { // 사용자가 지번 주소를 선택했을 경우(J)
                   addr = data.jibunAddress;
               }

               // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
               if(data.userSelectedType === 'R'){
                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                       extraAddr += data.bname;
                   }
                   // 건물명이 있고, 공동주택일 경우 추가한다.
                   if(data.buildingName !== '' && data.apartment === 'Y'){
                       extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                   }
                   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                   if(extraAddr !== ''){
                       extraAddr = ' (' + extraAddr + ')';
                   }
                   // 하지만 나는 여기서 참고항목을 따로 안넣기 떄문에 그냥 주소에 참고항목을 붙여서 대입하기로함  
                    addr+= extraAddr;
                   // 조합된 참고항목을 해당 필드에 넣는다.
                   //document.getElementById("sample6_extraAddress").value = extraAddr;
               
               } else {
                   //document.getElementById("sample6_extraAddress").value = '';
               }
			   
               // 주소입력 홗인
               addressCheckBoolean = true;
               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById('sample6_postcode').value = data.zonecode;
               document.getElementById("sample6_address").value = addr;
               // 커서를 상세주소 필드로 이동한다.
               document.getElementById("sample6_detailAddress").focus();
           }
       }).open(); 
   }
   
   // 비밀번호 정규식
   // pwd : 비밀번호
   function chekPassword(pwd){

		//var mbrId = $("#mbrId").val();   // id 값 입력

		var mbrPwd = pwd;  // pw 입력
		

		var check1 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,12}$/.test(mbrPwd);   //영문,숫자

		var check2 = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{8,12}$/.test(mbrPwd);  //영문,특수문자

		var check3 = /^(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{8,12}$/.test(mbrPwd);  //특수문자, 숫자

	    var check4 = /^.*(?=^.{8,12}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/.test(mbrPwd); //특수문자 / 문자 / 숫자 포함 형태의 8~12자		 
		
	    if(!(check4)){
			//alert("사용할 수 없은 조합입니다.\n패스워드 설정안내를 확인해 주세요.")
	
			return "1";


		}

		if(/(\w)\1\1/.test(mbrPwd)){
 
			//alert('같은 문자를 3번 이상 사용하실 수 없습니다.\n패스워드 설정안내를 확인해 주세요.')

			return "2";

		}
		
		/* 
		if(mbrPwd.search(mbrId)>-1){

			alert("비밀번호에 아이디가 포함되었습니다.\n패스워드 설정안내를 확인해 주세요.");

			return false;

		}
 		*/
 		
		return "0";

	}
   	
   function submitCheck() {
	   var nameVal = document.getElementById('name').value;
	   var passwordVal = document.getElementById('password').value;
	   var passwordCheckVal = document.getElementById('passwordCheck').value;
	   var phonenumVal = document.getElementById('phonenum').value;
 	   var phonnumRegExp = /^[0-9]{10,11}$/; // 핸드폰 정규식

	   if(emailCheckBoolean != true){ 
		   alert('이메일을 확인해주세요.');
		   return false;
	   }
	   
	   if(nameVal == ''){
		   alert('이름을 입력해주세요.');
		   return false;
	   }
	   
	   if(passwordCheckBoolean != true){
		   alert('비밀번호를 확인해주세요.')
		   return false;
	   }
	   
	   if(passwordVal != passwordCheckVal){
		   alert('비밀번호가 다릅니다.')
		   return false;
		   
	   }
	   
	   if(addressCheckBoolean != true){
		  alert('주소를 확인해주세요.');
		  return false;
	   }
	  
	   if(nicknameCheckBoolean != true){
		  alert('닉네임을 확인해주세요');
		  return false;
	   }
	   
	   if(!phonnumRegExp.test(phonenumVal)){ 
		   alert('핸드폰번호가 잘못되었습니다.')
		  return false;
	   }
	   $('input[name=email]').removeAttr('disabled');
	   $('input[name=postalCode]').removeAttr('disabled');
	   $('input[name=address]').removeAttr('disabled');
 
	   return true; 
   }
 
  
   
   </script>
   
  <!-- sing Up -->
 <form action="signUp" method="post" onsubmit="return submitCheck()"> 
  <table class="form-a" style="  position: relative;
  top: 50%; 
  left: 50%; 
  margin-top: 200px; 
  margin-left: -255px;   
  width: 475px;
  " >
  	<tr>
  		<th style ="text-align: center;">회원 가입</th>
  	</tr>
  	<tr> 
  		<td>  
  			<h5>Email</h5>  
            <input type="text" name="email" class="form-control form-control-lg form-control-a"  placeholder="이메일을 입력하세요"> 
            <img alt="" src="http://localhost:8888/shop/resources/images/unnamed.gif" style="width: 40px;height: 40px; display:none;"> 
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
  			<h5>Name</h5>
            <input type="text" name="name" id="name"class="form-control form-control-lg form-control-a" placeholder="이름을 입력하세요">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<h5>Password</h5>
            <input type="password" name="password" id="password" class="form-control form-control-lg form-control-a" placeholder="비밀번호를 입력하세요">
      		<span style="position: absolute; width:80px; margin-top : -40px; right: 0px; "></span>         
  			<pre style="color: #A4A4A4;">
* 8자~12자리의 영문(대소문자),숫자,특수문자를 하나이상 넣어서 만들어주세요.
* 동일한 숫자 또는 문자를 3번이상 연속으로 사용할 수 없습니다.</pre>    
  		</td> 
  	</tr>
  	<tr>
  		<td>
  			<h5>Password Check</h5>
            <input type="password" id="passwordCheck" class="form-control form-control-lg form-control-a" placeholder="비밀번호를 다시 입력하세요">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<h5>Address</h5> 
  		    <input type="text" class="form-control" name="postalCode" id="sample6_postcode" placeholder="우편번호" disabled="disabled" style="width: 150px;float:left;">  
			<input type="button" class="btn btn-b-n" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="margin-left: 10px;"><br>
			<input type="text" class="form-control" name="address" id="sample6_address" placeholder="주소" disabled="disabled" style="margin-top: 10px;">  
			<input type="text" class="form-control" name="detailAddress"id="sample6_detailAddress" placeholder="상세주소" style="margin-top: 10px;">
  		</td>
  	</tr>
  	<tr>
  		<td>
  			<h5>NicName</h5>
            <input type="text" id="nickname" name="nickname" class="form-control form-control-lg form-control-a" placeholder="사용할 닉네임을 입력하세요">
 			<span style="position: absolute; width:80px; margin-top : -40px; right: 0px; "></span>
 			<pre style="color: #A4A4A4;">
* 2자~10자리의 특수문자 제외</pre>             
  		</td>
  	</tr>
  	
  	<tr>
  		<td>
  			<h5>Phone Number</h5>
            <input type="text" name="phonenum" id="phonenum" class="form-control form-control-lg form-control-a" placeholder="전화번호를 입력하세요">
  			<pre style="color: #A4A4A4;">
* '-' 없이 입력해주세요.</pre>    
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
