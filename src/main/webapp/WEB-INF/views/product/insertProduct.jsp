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
  
  <!-- ======== style ========= -->
  <style>
  .productMainView th, .productMainView td {
    border-bottom: 1px solid #BDBDBD;
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
			            <a class="dropdown-item" href="product/insertSaleMain">판매</a>
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
			            <a class="dropdown-item" href="product/insertSaleMain">판매</a>
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
              <h1 class="title-single">Commodity registration</h1>
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
    </section><!-- End Intro Single-->
 
    
  <!--/ textarea start /-->
    <section class="section-about">
      <div class="container">
        <div class="row">
        	<div class="col-md-12">
			<form action="insertSaleWrite"  method="post" enctype="multipart/form-data">
        	<table class="productMainView form-a" style="
		  			width : 100%;
		  		">
		  	<tr>
		  		<td>
  					<h5>Category</h5>
  					<br>
  					<select name="category">
						<optgroup label="상의">
							<option value="0">반팔 티셔츠</option>
							<option value="1">긴팔 티셔츠</option>
							<option value="2">민소매 티셔츠</option>
							<option value="3">셔츠/블라우스</option>
						</optgroup>
						<optgroup label="하의">
							<option value="4">데님 팬츠</option>
							<option value="5">코튼 팬츠</option>
							<option value="6">슬랙스</option>
							<option value="7">트레이닝</option>
						</optgroup>
						<optgroup label="아우터">
							<option value="8">레더/라이더스 재킷</option>
							<option value="9">수트/블레이저 재킷</option>
							<option value="10">트레이닝 재킷</option>
							<option value="11">롱 패</option>
						</optgroup>
					</select>
		  		</td>
		  	</tr>
		  	<tr>
		  		<td>
					<h5>Product name</h5><br>  
            		<input type="text" name="productName" style="width : 600px;" class="form-control form-control-lg form-control-a" placeholder="상품명을 입력하세요">
					<pre style="color: #A4A4A4;">자기소비 목적으로 해외에서 직구한 상품을 온라인 등을 통해 되파는 경우,
관세법 위반으로 형사처벌 대상이 되오니 유의해주시기 바랍니다.</pre>
		  		</td>
		  	</tr>
		  	<tr> 
		  		<td>  
		  			<h5>Price</h5><br>
            		<input type="text" name="productPrice" style="width : 400px; float : left;" class="form-control form-control-lg form-control-a" placeholder="가격을 입력하세요">
            		<div style="float:left; width: 50px; font-size: x-large; margin-top: 8px; padding-left: 10px; color: #A4A4A4; ">원</div>   
		  		</td> 
		  	</tr>
	  	 	<tr>  
		  		<td>
		  		  <script type="text/javascript">
		  		  /* 
		  		  페이지가 켜지는 순서 
		  		  1.head 사이에있는 script 
		  		  2.body
		  		  3.$(document).ready(function(){}); //이것은 자바스크립트의onload와 똑같지만 굳이 순서를 따지면 이게 먼저
		  		  4.script의 window.onload
		  		  
		  		  간단히말하자면 그냥 위에서부터 순서대로 내려오면된다 그리고 나서
	  			  3.$(document).ready(function(){}); 
		  		  4.script의 window.onload
		  		  가 차례로 나온다
		  		  */
		  		
				   $(document).ready(function () {
					   
					  //Photo에서 사진등록버튼을 클릭하고 사진을 선택했을때 발동
					  $('.filebox').change(function() { 
						  //alert($(this).find('label').html() 태스트용
						  
						  //ajax로 파일을 보낼때는 FormData를이용한다 
						  //FoRmData는 ajax로 파일을 보낼 떄 유용하며 생성할떄 기존에 form태그가 있으면 new FormData(form태그);를 입력하면 자동으로 내용들이 append된다.
						  var formData = new FormData(); //parents는 조상들(여러개) 요소를 선택할떄 사용한다.그렇기에[0]을 이용하여 제일가까운녀석만선택
						  formData.append("imgSrc", $(this).find('input')[0].files[0]); //생성된 formData에 보낼파일 input을 추가해주면된다

						  var num = $(this).attr('num'); //사진등록ajax를 하나로 통합하여 사용하기 위하여 각 등록에 num이라는 속성을 대입하여 코드를 줄였다.
				    	  var imgId = '#' + $(this).closest('td').find('img').attr('id'); //closest는 parents와 기능이 비슷하나 차이점은 closest는 단하나만 가져오는것이라고 할 수 있다.
				    	  																  //find는 자식요소중에서 찾는 기능이다.
				    	  																  

						  $.ajax( {
						      url:'uploadExamplePhoto', // 응답을 받아 줄 경로, 경로는 현재 페이지에서의 상대경로 값을 가리킨다.
						      type:'POST', // 요청 방식, get, post, put, del
						      processData: false, // 기본값은 true이다 하지만 기본값일때  key1=value1&key2=value2 이런식으로 전달되기에 false로 바꿔어  { key1 : 'value1', key2 : 'value2' }  이런식으로 전달해야 파일을 보낼 수 가 있다고한다
						      contentType: false, // 이거는 false여야지 보내진단다
						      data: formData, // 서버단으로 전송하는 데이터, 따라서, 객체가 들어간다. 속성명, 값
						      dataType:'text', // 데이터타입, 돌아올 때 서버로부터 받는 값의 종류, 보통 둘 중 하나 1.text, 2.json
						      success: function(data) {
								  $(imgId).closest('td').find('div').css('visibility','hidden');//파일 전송시에 등록버튼 숨기기
								  $(imgId).closest('td').find('button').css('visibility','hidden'); //파일 전송시에 삭제버튼 숨기기
						    	  $(imgId).attr('src','http://localhost:8888/shop/resources/product/fixedPhoto/loading.gif'); //파일 전송시에 로딩화면으로 대체
						    	  uploadExamplePhotoCheck(data,num); // 파일전송 후 서버에 등록이 되었는지 계속확인하기
						      }, 
						      error: function(error) {
						        alert('error.status의 값 : ' + error.status);
						      }
						    }); 
						 // $('#examplePhoto').css('display', 'none');
						  //$('#mainPhoto').css('display','block');  
					  
					  
					  });  
					  
					   // 삭제버튼을 클릭할시에 발동
					   $('.close').on('click', function(){
						  var imgId = '#' + $(this).closest('td').find('img').attr('id');
						  var src = $(imgId).attr('src');
						  var fileboxNum = $(this).closest('td').find('.filebox').attr('num');
						  var srcFull
						  
						  //필수등록(num =0)과 선택등록(num= 1~4)의 기본값사진의 구분을 위한 if절
						  if(fileboxNum == '0'){
							  srcFull ='http://localhost:8888/shop/resources/product/fixedPhoto/img_no_286x286.gif';
						  }else{
							  srcFull ='http://localhost:8888/shop/resources/product/fixedPhoto/img_no_137x137.gif';
						  }
						  
						  examplePhotoDelete(src);// 삭제시에 서버에 저장된 사진 삭제함수
						  $(imgId).attr('src',srcFull); // 다시 기본값 사진 대체
						  $(this).closest('td').find('div').css('visibility','visible'); // 등록버튼 숨김해제
 
					  }); 
					  
				  
				  });
		  		  
		  		  
				  //사진등록에서 사진이 서버에 전달되었는지 재귀함수로 계속확인하는 함수
				  //data : 파일명, num : form위치찾기를 위한 자식의 속성인(num)
		  		  function uploadExamplePhotoCheck(data,num) {
					  $.ajax({
			    		  url: 'uploadExamplePhotoCheck',
			    	  	  type: 'POST', 
			    	  	  data: {imgSrcCheck : data},
			    	  	  dataType:'text',
			    	  	  success: function(result) {
			    	  		  
			    	  		 if(result == '1'){ //서버에 전달된경우
				    	  		 $('#' + $('div[num='+num+']').closest('td').find('img').attr('id')).attr('src',
				    	  				 'http://localhost:8888/shop/resources/product/mainImages/'+data);
				    	  		 
								 $('div[num='+num+']').closest('td').find('button').css('visibility','visible'); //단기버튼 숨김해제
			    	  		  
			    	  		  }else {
			    	  			uploadExamplePhotoCheck(data,num); //서버전달이 안된경우 다시 반복
 			    	  		  } 
			    	  			

			    	  	  },
						  error: function(error) {
						        alert('error.status의 값 : ' + error.status);
						  }					    	 
			    	  }); 
					  
				  }  
		  		  
				  //서버에 등록된 사진 삭제 함수
				  //src : 사진경로
		  		  function examplePhotoDelete(src) {
		  			 
		  			  $.ajax({
						  url : 'examplePhotoDelete',
						  type : 'POST',
						  data : {imgSrc : src},
						  dataType : 'text',
						  success : function(result) {
							  if(result = '1'){
						    	
							  }else{
								  alert("파일삭제오류");
								  
							  }
						  },
						  error : function(error) {
						        alert('error.status의 값 : ' + error.status);

						  }
				  	  });
		  		  }
	
				  </script>  
				    
		  			<h5>Photo</h5><br>   
		  			<table>  
		  				<tr>  
		  					<td rowspan="2"  style=" position:relative; width: 350px; height: 350px; border-bottom: none;  "> 
			  					<img id="examplePhoto"src="http://localhost:8888/shop/resources/product/fixedPhoto/img_no_286x286.gif" style="border: 1px solid #A4A4A4; position:relative; width : 350px; height: 350px;"> 
					            <button type="button" id="examplePhotoClose" class="close" aria-label="Close"
								style="position: absolute; top: 80px; right: 60px; ">   
								  <span aria-hidden="true">&times;</span>   
								</button> 
									<div class="filebox" num="0" style="position:absolute; width: 100px; top: 260px; left: 172px; ">  
									  <label for="ex_file">필수등록</label>  
									  <input type="file" name="productFirstPhoto" id="ex_file">
									</div>		
		  					</td>
		  					<td style=" position:relative; width: 170px; height: 170px; border-bottom: none;"> 
			  					<img id="subExamplePhoto1"src="http://localhost:8888/shop/resources/product/fixedPhoto/img_no_137x137.gif" style="border: 1px solid #A4A4A4; position:relative; width : 170px; height: 170px;"> 
					            <button type="button" id="subExamplePhotoClose1" class="close" aria-label="Close"
								style="position: absolute; top: 40px; right: 40px; ">   
								  <span aria-hidden="true">&times;</span>   
								</button> 
									<div class="filebox" num="1" style="position:absolute; width: 100px; top: 115px; left: 79px; ">  
									  <label for="subEx_file1">1 선택등록</label>  
									  <input type="file" name="productSubPhoto1" id="subEx_file1">
									</div>		
		  					</td>
		  					<td style=" position:relative; width: 170px; height: 170px; border-bottom: none; "> 
			  					<img id="subExamplePhoto2"src="http://localhost:8888/shop/resources/product/fixedPhoto/img_no_137x137.gif" style=" border: 1px solid #A4A4A4; position:relative; width : 170px; height: 170px;"> 
					            <button type="button" id="subExamplePhotoClose2" class="close" aria-label="Close"
								style="position: absolute; top: 40px; right: 40px;   ">   
								  <span aria-hidden="true">&times;</span>   
								</button>
									<div class="filebox" num="2"style="position:absolute; width: 100px; top: 115px; left: 79px;  ">
									  <label for="subEx_file2">2 선택등록</label>  
									  <input type="file" name="productSubPhoto2" id="subEx_file2">
									</div>		
		  					</td>
		  				</tr>
		  				<tr>
		  					<td style=" position:relative; width: 170px; height: 170px; border-bottom: none;"> 
			  					<img id="subExamplePhoto3"src="http://localhost:8888/shop/resources/product/fixedPhoto/img_no_137x137.gif" style="border: 1px solid #A4A4A4; position:relative; width : 170px; height: 170px;"> 
					            <button type="button" id="subExamplePhotoClose3" class="close" aria-label="Close"
								style="position: absolute;top: 40px; right: 40px;   ">   
								  <span aria-hidden="true">&times;</span>   
								</button>
									<div class="filebox"  num="3" style="position:absolute; width: 100px; top: 115px; left: 79px; ">
									  <label for="subEx_file3">3 선택등록</label>  
									  <input type="file"name="productSubPhoto3" id="subEx_file3"> 
									</div>		
		  					</td>
		  					<td style=" position:relative; width: 170px; height: 170px; border-bottom: none; "> 
			  					<img id="subExamplePhoto4"src="http://localhost:8888/shop/resources/product/fixedPhoto/img_no_137x137.gif" style="border: 1px solid #A4A4A4; position:relative; width : 170px; height: 170px;"> 
					            <button type="button" id="subExamplePhotoClose4" class="close" aria-label="Close"
								style="position: absolute; top: 40px; right: 40px;  ">   
								  <span aria-hidden="true">&times;</span>   
								</button>
									<div class="filebox"  num="4"style="position:absolute; width: 100px; top: 115px; left: 79px; ">
									  <label for="subEx_file4">4 선택등록</label>  
									  <input type="file" name="productSubPhoto4" id="subEx_file4">
									</div>		
		  					</td>
		  				</tr>
		  			</table>
		  				  			
		  		</td> 
		  	</tr>
		  	<tr >
		  		<td> 
	  			<h5>Product Description</h5><br>   
			                  <textarea class="form-control" id="p_content" name="productDescription"></textarea>
		            <script type="text/javascript">
		            //ckeditor 다이얼로그 관리 함수
		            CKEDITOR.on('dialogDefinition', function (ev) {
		    			var dialogName = ev.data.name;
		    			var dialog = ev.data.definition.dialog;
		    			var dialogDefinition = ev.data.definition;
							
		    			  	//링크 다이얼로그
		    				if (dialogName == 'link') {
		    				/* 	
		    				dialog.on('show', function (obj) {
		    					this.selectPage('Upload'); //업로드탭으로 시작
		    				});
		    				*/

		    				dialogDefinition.removeContents('advanced'); // 자세히탭 제거
		    				dialogDefinition.removeContents('upload'); // 업로드탭 제거
		    				}	
		    			  	
		    				/* 
		    				//이미지 다이얼로그
		    				if (dialogName == 'image') {
			    				dialog.on('show', function (obj) {
			    					this.selectPage('Upload'); //업로드탭으로 시작
			    				});

			    				dialogDefinition.removeContents('advanced'); // 자세히탭 제거
			    			}
		    				*/
		    		});
		            
		            
		            CKEDITOR.replace('p_content'
                                      	, {height: 500 
		          	  					,filebrowserUploadUrl : "imageUpload.do"  // 이것을 잘이용해보자 업로드: 주소는 컨트롤 value로 따진                                            
		          	  					,uiColor : '#2eca6a' //ckeditor UI 컬러
		          	  					,toolbar : [ 
			          	  					{ name: 'document', items: [ 'Source', '-', 'Preview', 'NewPage','-' ] },
				          	  				{ name: 'clipboard', items: [  '-', 'Undo', 'Redo' ] }, 
				          	  				{ name: 'editing', items: [ 'Find', '-', 'SelectAll'] }, 
				          	  				'/', 
				          	  				{ name: 'basicstyles', items: [ 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript' ] },
				          	  				{ name: 'paragraph', items: [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl'] },
				          	  				{ name: 'links', items: [ 'Link', 'Unlink' ] },
				          	  				{ name: 'insert', items: [ 'Image','Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'Iframe' ] },
				          	  				'/',
				          	  				{ name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize' ] },
				          	  				{ name: 'colors', items: [ 'TextColor', 'BGColor' ] },
				          	  				{ name: 'tools', items: [ 'Maximize', 'ShowBlocks' ] }
			          	  				]                        
		            });
		            
		            
		            </script>
		  		</td>
		  	</tr>
		  	<tr>
		  		<td>
	  				<h5>Delivery Method</h5><br>
		  			<select name="deliveryMethod">
							<option value="0">무료(판매자 부담)</option>
							<option value="1">착불(구매자 부담)</option>
							<option value="3">직접배달</option>
					</select>   
		  		</td>
		  	</tr>
		  	<tr>
		  		<td style=" border-bottom: none; text-align: center; padding-top: 100px;" >
		  			<input class="btn btn-a" type="submit" value="물품등록">
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
