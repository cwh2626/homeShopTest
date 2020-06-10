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
  
  <script type="text/javascript" src="../resources/ckeditor/ckeditor.js"></script>
  <script type="text/javascript" src="../resources/jquery/jquery-3.4.1.min.js"></script>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script><!--카카오 우편API -->
   
  <!-- ======== style ========= -->
  <style>
  .productMainView th, .productMainView td {
    border-bottom: 1px solid #000000;  	
    padding: 30px;
  }
  .productMainView select {

    width: 400px; /* 원하는 너비설정 */
    padding: .8em .5em; /* 여백으로 높이 설정 */
    height: 35px;
    /* font-family: inherit;   폰트 상속 */
    /* background: url('이미지 경로') no-repeat 95% 50%;  네이티브 화살표를 커스텀 화살표로 대체 */
    /*  border: 1px solid9 #99; */
    /*border-radius: 0px;  iOS 둥근모서리 제거 */
    /*-webkit-appearance: none; 네이티브 외형 감추기 
    -moz-appearance: none; 
    appearance: none;
  	*/
  	} 
  	.subTable td, .subTable th{
		  		border-bottom: 1px solid #BDBDBD; 
		  		padding: 15px;  
	} 
  	 
	.filebox label {
	  display: inline-block;
	  padding: .5em .75em;
	  color: #fff;
	  font-size: small;
	  line-height: normal;
	  vertical-align: middle;
	  background-color: #2eca6a; 
	  cursor: pointer;
	  border: 1px solid #2eca6a;
	  border-radius: .25em;
	  -webkit-transition: background-color 0.2s;
	  transition: background-color 0.2s;
	}
	
	.filebox label:hover {
	  background-color: #6ed36e;
	}
	
	.filebox label:active {
	  background-color: #367c36;
	}
	
	.filebox input[type="file"] {
	  position: absolute;
	  width: 1px;
	  height: 1px;
	  padding: 0;
	  margin: -1px;
	  overflow: hidden;
	  clip: rect(0, 0, 0, 0);
	  border: 0;
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
      <div class="d-md-none">
	   	<c:if test="${sessionScope.loginNickname != null}">
	          <table>
	       	<tr>
	       		<td>
			       <div class="dropdown">
		          	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
		             aria-haspopup="true" aria-expanded="false">
		             ${sessionScope.loginNickname}
		          	</a>
			         <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			            <a class="dropdown-item" href="property-single.html">Property Single</a>
			            <a class="dropdown-item" href="blog-single.html">Blog Single</a>
			            <a class="dropdown-item" href="agents-grid.html">Agents Grid</a>
			            <a class="dropdown-item" href="insertSaleMain">판매</a>
			         </div> 
		    		</div>
	       		</td>
	       		<td style="padding-left: 10px; padding-right: 10px">
	       			<span> | </span>
	       		</td>
	       		<td>
			       <a href="../logout">로그아웃</a>
	       		</td>
	       	</tr>
	       </table>
	   	</c:if>   	
	   	<c:if test="${sessionScope.loginNickname == null}">
	       <a href="../member/loginMain">로그인</a>
	       <span> | </span>
	       <a  href="../member/signUpMain">회원가입</a>
	   	</c:if>   	
      </div>
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
        </ul>
      </div>
      <button type="button" class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-search" aria-hidden="true"></span>
      </button>
       <div class="d-none d-md-block">
		<c:if test="${sessionScope.loginNickname != null}">
	       <table>
	       	<tr>
	       		<td>
			       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	       		</td>
	       		<td>
			       <div class="dropdown">
		          	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
		             aria-haspopup="true" aria-expanded="false">
		             ${sessionScope.loginNickname}
		          	</a>
			         <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			            <a class="dropdown-item" href="property-single.html">Property Single</a>
			            <a class="dropdown-item" href="blog-single.html">Blog Single</a>
			            <a class="dropdown-item" href="agents-grid.html">Agents Grid</a>
			            <a class="dropdown-item" href="insertSaleMain">판매</a>
			         </div> 
		    		</div>
	       		</td>
	       		<td style="padding-left: 10px; padding-right: 10px">
	       			<span> | </span>
	       		</td>
	       		<td>
			       <a href="../member/logout">로그아웃</a>
	       		</td>
	       	</tr>
	       </table>
	   	</c:if>   	
	   	<c:if test="${sessionScope.loginNickname == null}">
	       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	       <a href="../member/loginMain">로그인</a>
	       <span> | </span>
	       <a  href="../member/signUpMain">회원가입</a>
	   	</c:if> 
      </div>
    </div>
  </nav>
  <!--/ Nav End /-->
   
   
  <main id="main">
   <!-- ======= Intro Single ======= -->
    <section class="intro-single">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-lg-8">
            <div class="title-single-box">
              <h1 class="title-single">Order / Payment</h1>     
            </div>
          </div>
          <div class="col-md-12 col-lg-4">
            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="#">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                  About
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </section>
    <!-- End Intro Single-->

	<script>
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
	</script>
  <!--/ textarea start /-->
    <section class="section-about">
      <div class="container">
        <div class="row">
        	<div class="col-md-12">
			<form action="insertSaleWrite"  method="post">
        	<table class="productMainView form-a" style="
		  			width : 100%;
		  		">
		  	<tr>
		  		<td>
  					<h5>Product Info</h5> 
  					<br>
  					<table style="width: 1100px;text-align: center; border-bottom: 5px solid #BDBDBD; " class="subTable">         
  						<tr style="padding: 0; height: 50px; border-bottom: 5px solid #BDBDBD;">         
  							<th colspan="2" style="padding: 0; height: 50px; " >상품정보</th> 
  							<th style="padding: 0; height: 50px; ">금액</th> 
  							<th style="padding: 0; height: 50px; ">배송비</th>
  							<th style="padding: 0; height: 50px; ">판매자</th> 
  						</tr>
  						<tr>
  						   <td style="padding: 10px;">    
  						   	<img alt="" style="width: 70px; height: 88px;" src="../resources/member/cwh2626@naver.com/photo/20200602.jpeg">
  						   </td>
  						   <td style="text-align: left;">  
  						   	<span style="font-size: large; font-weight: bolder;">상품 이름</span>   
  						   	<ul style="list-style: none; background-color: #f3f3f3; border:1px solid #BDBDBD; padding-left: 0; ">   
  						   		<li style="padding:8px; margin: 7px;">      
  						   			<span>옵션 선택 2fdskjfafdskewai;jjai;efsdadfsdfdsfsj</span><span style="float: right;"><span style="width: 200px; text-align: right;">23개</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>100,000</span></span>  
  						   		</li>   
  						   		<li style=" padding:8px; margin: 7px; border-top: 1px solid #BDBDBD;">     
  						   			<span>옵션 선택 2fdskjfafdskewai;jjai;efsdadfsdfdsfsj</span><span style="float: right;"><span style="width: 200px; text-align: right;">23개</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>100,02000</span></span>  
  						   		</li> 
  						   		<li style=" padding:8px; margin: 7px; border-top: 1px solid #BDBDBD;">    
  						   			<span>옵션 선택 2fdskjfafdskewai;jjai;efsdadfsdfdsfsj</span><span style="float: right;"><span style="width: 200px; text-align: right;">2개</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>10033,000</span></span>  
  						   		</li>
  						   	</ul>
  						   </td>
  						   <td>
  						   	<span>300,000</span>
  						   </td>
  						   <td>
  						   	<span>3,000</span> 
  						   </td>
  						   <td> 
  						   	<span>조웅희</span>  
  						   </td>
  						</tr>
  						<tr>
  						   <td style="padding: 10px;">    
  						   	<img alt="" style="width: 70px; height: 88px;" src="../resources/member/cwh2626@naver.com/photo/20200602.jpeg">
  						   </td>
  						   <td style="text-align: left;">  
  						   	<span style="font-size: large; font-weight: bolder;">상품 이름</span>   
  						   	<ul style="list-style: none; background-color: #f3f3f3; border:1px solid #BDBDBD; padding-left: 0; ">   
  						   		<li style="padding:8px; margin: 7px;">      
  						   			<span>옵션 선택 2fdskjfafdskewai;jjai;efsdadfsdfdsfsj</span><span style="float: right;"><span style="width: 200px; text-align: right;">23개</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>100,000</span></span>  
  						   		</li>   
  						   		<li style=" padding:8px; margin: 7px; border-top: 1px solid #BDBDBD;">     
  						   			<span>옵션 선택 2fdskjfafdskewai;jjai;efsdadfsdfdsfsj</span><span style="float: right;"><span style="width: 200px; text-align: right;">23개</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>100,02000</span></span>  
  						   		</li> 
  						   		<li style=" padding:8px; margin: 7px; border-top: 1px solid #BDBDBD;">    
  						   			<span>옵션 선택 2fdskjfafdskewai;jjai;efsdadfsdfdsfsj</span><span style="float: right;"><span style="width: 200px; text-align: right;">2개</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>10033,000</span></span>  
  						   		</li>
  						   	</ul>
  						   </td>
  						   <td>
  						   	<span>300,000</span>
  						   </td>
  						   <td>
  						   	<span>3,000</span> 
  						   </td>
  						   <td>
  						   	<span>조웅희</span>  
  						   </td>
  						</tr>
  					</table>
  					<table  style="width: 1100px;text-align: center;" class="subTable">  
  						<tr>
  							<th style="border-bottom: none; padding-bottom: 0px;">상품금액</th>  
  							<td style="border-bottom: none; padding-bottom: 0px;"></td>
  							<th style="border-bottom: none; padding-bottom: 0px;">배송비</th>
  							<td style="border-bottom: none; padding-bottom: 0px;"></td>
  							<th style="border-bottom: none; padding-bottom: 0px;">할인</th>
  							<td style="border-bottom: none; padding-bottom: 0px;"></td>
  							<th style="border-bottom: none; padding-bottom: 0px;">최종결제금액</th> 
  						</tr>
  						<tr> 	     
  							<td style="border-bottom: none; font-size:large; padding-top: 0px;">300,000</td>  
  							<td style="border-bottom: none; font-weight: bolder;padding-top: 0px; font-size:xx-large;">+</td>  
  							<td style="border-bottom: none; font-size:large; padding-top: 0px;">3,000</td>
  							<td style="border-bottom: none; font-weight: bolder; padding-top: 0px; font-size:xx-large;" >-</td>
  							<td style="border-bottom: none; font-size:large;color: red; padding-top: 0px;">50,000</td>
  							<td style="border-bottom: none; font-weight: bolder; font-size:xx-large; padding-top: 0px;">=</td>
  							<td style="border-bottom: none; font-weight: bolder; font-size:x-large; padding-top: 0px;">253,000</td>     
  						</tr>
  					</table>
		  		</td>
		  	</tr>
		  	<tr>
		  		<td> 
					<table  style="width: 1100px;  " class="subTable">           
						<tr >  
							<td colspan="2" style="">  
							<h5 style="float: left;">Recipient Info</h5>
							<div style="margin-left: 100px; padding-left: 100px; ">      
								<span style="padding-right: 50px;font-weight: bold;">배송지 선택</span>   
								<input type="radio" name="test1">&nbsp;&nbsp;기본값&nbsp;&nbsp;      
								<input type="radio" name="test1">&nbsp;&nbsp;기본값         
							</div>
							</td>
							<td colspan="2"> 
							<h5>Buyer Info</h5>   
							</td>
						</tr>  
						<tr style="border-left: 1px solid #BDBDBD; border-right: 1px solid #BDBDBD; "> 
							<th style="padding:15px; text-align: center;">수령인</th>
							<td style="border-right: 1px solid #BDBDBD;  padding:15px;"> 
								<input type="text">
							</td>
							<th style="padding:15px; text-align: center;">배송자</th>
							<td style="padding:15px;"> 
								<input type="text">
							</td>
						</tr>
						<tr style="border-left: 1px solid #BDBDBD; border-right: 1px solid #BDBDBD; ">
							<th style="text-align: center; padding:15px;">연락처</th>
							<td style="padding:15px; border-right: 1px solid #BDBDBD; "><input type="text"></td>
							<th style="text-align: center; padding:15px;">연락처</th>
							<td style="padding:15px;"><input type="text"></td>
						</tr>
						<tr style="border-left: 1px solid #BDBDBD; border-right: 1px solid #BDBDBD; "> 
							<th style="padding:15px; text-align: center;">주소</th> 
							<td style="padding:15px; border-right: 1px solid #BDBDBD; "> 
				  		    <input type="text" class="form-control" name="postalCode" id="sample6_postcode" placeholder="우편번호" disabled="disabled" style="width: 150px;float:left;">  
							<input type="button" class="btn btn-b-n" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="margin-left: 10px;"><br>
							<input type="text" class="form-control" name="address" id="sample6_address" placeholder="주소" disabled="disabled" style="margin-top: 10px;">  
							<input type="text" class="form-control" name="detailAddress"id="sample6_detailAddress" placeholder="상세주소" style="margin-top: 10px;">
							</td>
							<th style="padding:15px; text-align: center;">주소</th> 
							<td style="padding:15px;"> 
				  		    <input type="text" class="form-control" name="postalCode" id="sample6_postcode" placeholder="우편번호" disabled="disabled" style="width: 150px;float:left;">  
							<input type="button" class="btn btn-b-n" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="margin-left: 10px;"><br>
							<input type="text" class="form-control" name="address" id="sample6_address" placeholder="주소" disabled="disabled" style="margin-top: 10px;">  
							<input type="text" class="form-control" name="detailAddress"id="sample6_detailAddress" placeholder="상세주소" style="margin-top: 10px;">
							</td>
						</tr>
						<tr style="border-left: 1px solid #BDBDBD; border-right: 1px solid #BDBDBD; "> 
							<th style="text-align: center; padding:15px;">배송 메모</th>
							<td style="padding:15px; border-right: 1px solid #BDBDBD; ">
								<textarea rows="5" cols="60"></textarea>
								<p>※ 택배기사님께 전할 말씀을 남겨주세요.</p>  
							</td>      
						</tr>
					</table>
		  		</td>
		  	</tr>
		  	<tr> 
		  		<td> 
		  			<h5>Payment info </h5><br>
		  			<table  style="width: 1100px;" class="subTable">  
		  				<tr>
		  					<th>결제 수단</th>
		  					<td>
		  						<select name="paymentMethod" style="width: 250px;">   
										<option value="0">카카오페이</option>
										<option value="1">unknown</option>
										<option value="3">unknown</option>
								</select>
		  					</td>
		  					<th style="text-align: center;">결제하기</th>  
		  				</tr>
		  				<tr>
		  					<th>결제 안내</th>
		  					<td>
		  						<p>카카오페이 안내</p>
		  						<p>카카오페이는 카카오톡에서 카드를 등록, 간단하게 비밀번호만으로 결제할 수 있는 빠르고 편리한 모바일 결제 서비스입니다.</p>
		  						<span>-지원 카드 : 모든 카드 등록/결제 가능</span>  
		  					</td>
		  					<td rowspan="2" style="border: 2px groove #BDBDBD;">    
		  						<p style="font-size: xx-large; font-weight: bold; color:#2eca6a; float: left; ">333,333</p>     
								<div style="float:left; width: 30px; font-size: x-large; margin-top: 8px; padding-left: 5px; color: #A4A4A4; ">원</div>   
		  					</td> 
		  				</tr>
		  				<tr>
		  					<th>주문자 동의</th>
		  					<td>
		  						<ul style="list-style: none; padding-left: 0px;">   
		  							<li style=" border-bottom: 2px solid #BDBDBD;"><input type="checkbox"> 전체동의</li>      
		  							<li style="padding-left: 10px;"><input type="checkbox"> 개인정보 제3자 제공 동의(필수)</li> 
		  							<li style="padding-left: 10px;"><input type="checkbox"> 위 상품 정보 및 거래 조건을 확인하였으며, 구매 진행에 동의합니다.(필수)</li> 
		  						</ul>
		  					</td>
		  				</tr> 
		  			</table>
		  		</td> 
		  	</tr>
		  	<tr>
		  		<td style=" border-bottom: none; text-align: center; padding-top: 100px;" >
		  			<input class="btn btn-a" type="submit" value="PAYMENT"> 
		  		</td>
		  	</tr>
		  </table>
		  </form>
        	</div>
        </div>
      </div>
    </section>
  <!--/ textarea End /-->
    </main>
  	
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
  
  <!-- 여러가지 -->
</body>

</html>