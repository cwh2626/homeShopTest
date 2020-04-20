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
        	<table class="productMainView form-a" style="
		  			width : 100%;
		  		">
		  	<tr>
		  		<td>
  					<h5>Category</h5>
  					<br>
  					<select>
						<optgroup label="상의">
							<option>반팔 티셔츠</option>
							<option>긴팔 티셔츠</option>
							<option>민소매 티셔츠</option>
							<option>셔츠/블라우스</option>
						</optgroup>
						<optgroup label="하의">
							<option>데님 팬츠</option>
							<option>코튼 팬츠</option>
							<option>슬랙스</option>
							<option>트레이닝</option>
						</optgroup>
						<optgroup label="아우터">
							<option>레더/라이더스 재킷</option>
							<option>수트/블레이저 재킷</option>
							<option>트레이닝 재킷</option>
							<option>롱 패</option>
						</optgroup>
					</select>
		  		</td>
		  	</tr>
		  	<tr>
		  		<td>
					<h5>Product name</h5><br>  
            		<input type="text" name="" style="width : 600px;" class="form-control form-control-lg form-control-a" placeholder="상품명을 입력하세요">
					<pre style="color: #A4A4A4;">자기소비 목적으로 해외에서 직구한 상품을 온라인 등을 통해 되파는 경우,
관세법 위반으로 형사처벌 대상이 되오니 유의해주시기 바랍니다.</pre>
		  		</td>
		  	</tr>
		  	<tr> 
		  		<td>  
		  			<h5>Price</h5><br>
            		<input type="text" name="" style="width : 400px; float : left;" class="form-control form-control-lg form-control-a" placeholder="가격을 입력하세요">
            		<div style="float:left; width: 50px; font-size: x-large; margin-top: 8px; padding-left: 10px; color: #A4A4A4; ">원</div>   
		  		</td> 
		  	</tr>
	  	 	<tr>  
		  		<td>
		  		  <script type="text/javascript">
				  $(document).ready(function () {
					  alert("dd");

					  $('#upload').on('click', function() {
						  alert("dd");
						  $('#examplePhoto').css('display', 'none');
						  $('#mainPhoto').css('display','block');  
					  });
				  }); 
				  </script>    
		  			<h5>Photo</h5><br> 
		  			<div class="col-md-4" > 
		  			<input type="button" value="ddd" id="upload">
		  			<input type="file" name="upload" size="30"> 
		  				<img id="examplePhoto"src="../resources/ckeditor/images/img_no_286x286.gif" style="width : 350px; height: 350px;"> 
			            <div id="mainPhoto" class="card-box-a card-shadow" style="width : 350px; height: 350px; display: none;">
			              <div class="img-box-a" style="line-height: 350px;">
			                <img src="../resources/ckeditor/images/img_no_286x286.gif" alt="" class="img-a img-fluid">
			              </div>
			              <div class="card-overlay">
			                <div class="card-overlay-a-content">
			                  <div class="card-header-a">
			                    <h2 class="card-title-a">
			                      <a href="#">샘플</a>
			                    </h2>
			                  </div>
			                  <div class="card-body-a">
			                    <div class="price-box d-flex">
			                      <span class="price-a">$ 12.000</span>
			                    </div>
			                    <a href="property-single.html" class="link-a">Click here to view
			                      <span class="ion-ios-arrow-forward"></span>
			                    </a>
			                  </div>
			                  <div class="card-footer-a">
			                    <ul class="card-info d-flex justify-content-around">
			                      <li>
			                        <h4 class="card-info-title">Area</h4>
			                        <span>340m
			                          <sup>2</sup>
			                        </span>
			                      </li>
			                      <li>
			                        <h4 class="card-info-title">Beds</h4>
			                        <span>2</span>
			                      </li>
			                      <li>
			                        <h4 class="card-info-title">Baths</h4>
			                        <span>4</span>
			                      </li>
			                      <li>
			                        <h4 class="card-info-title">Garages</h4>
			                        <span>1</span>
			                      </li>
			                    </ul>
			                  </div>
			                </div>
			              </div>
			            </div>
			          </div>
		  		</td> 
		  	</tr>
		  	<tr >
		  		<td> 
		  			<form action="insertSale" method="post">
			                  <textarea class="form-control" id="p_content" name="test"></textarea>
			                  <input type="submit" value="test">
		            </form>                 
		            <script type="text/javascript">
		            CKEDITOR.replace('p_content'
		                                            , {height: 500 
		          	  ,filebrowserUploadUrl : "imageUpload.do"  // 이것을 잘이용해보자 업로드: 주소는 컨트롤 value로 따진                                            
		                                            });
		            </script>
		  		</td>
		  		<td>
		  		</td>		
		  	</tr>
		  </table>
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
