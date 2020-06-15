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
			         <div class="dropdown-menu" aria-labelledby="navbarDropdown" >   
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
			       <a href="member/logout">로그아웃</a>
	       		</td>
	       	</tr>
	       </table>
	   	</c:if>   	
	   	<c:if test="${sessionScope.loginNickname == null}">
	       <a href="member/loginMain">로그인</a>
	       <span> | </span>
	       <a  href="member/signUpMain">회원가입</a>
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
              품목
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#">전체</a>  
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
			         <div class="dropdown-menu" aria-labelledby="navbarDropdown" >    
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
			       <a href="member/logout">로그아웃</a>
	       		</td>
	       	</tr>
	       </table>
	   	</c:if>   	
	   	<c:if test="${sessionScope.loginNickname == null}">
	       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	       <a href="member/loginMain">로그인</a>
	       <span> | </span>
	       <a  href="member/signUpMain">회원가입</a>
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
              <h1 class="title-single">${productInpo.productName}</h1>
              <span class="color-text-a">Chicago, IL 606543</span>
            </div>
          </div>
          <div class="col-md-12 col-lg-4">
            <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
              <ol class="breadcrumb">
                <li class="breadcrumb-item">
                  <a href="index.html">Home</a>
                </li>
                <li class="breadcrumb-item">
                  <a href="property-grid.html">Properties</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">
                  304 Blaster Up
                </li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
    </section><!-- End Intro Single-->
    <script>
	   $(document).ready(function () {
		   const amountProductPrice = ${productInpo.productPrice};
		   var amountProduct 
		   var totalPriceStr
		   
		   $('.title-c').html(numberWithCommas(amountProductPrice));
		   
		   function combinedPrice() {
			   var allCombinedPrice = 0; 
			   //amountProduct = $('#amountProduct').val();
			   $('.amountProduct').each(function(index, item){
				   var entityPrice = Number($(item).closest('ul').attr('price'));
				   var entityAmountVal = Number($(item).val()); 
				   var resultVal = (amountProductPrice + entityPrice) * entityAmountVal;
				   allCombinedPrice += resultVal;
			   });

			   totalPriceStr = numberWithCommas(allCombinedPrice) + '원';
			   $('#combinedPrice').html(totalPriceStr); 
		   
		   } 
		   combinedPrice();  
		   
		   function amountProductChange(sel,data) {
			   var amountVal = Number(data.closest('ul').find('.amountProduct').val());
			   var amountPrice = Number(data.closest('ul').attr('price')); 

			   //var amountVal = $('#amountProduct').val();
	 		   if(sel == 0){
	 			   
	 			   if(amountVal <= 1){ 
					   return;
				   }
	 			  data.closest('ul').find('.amountProduct').val(--amountVal);
	 		   }else{
	 			  data.closest('ul').find('.amountProduct').val(++amountVal); 

	 		   }
 			   amountVal = data.closest('ul').find('.amountProduct').val();
   			   totalPriceStr = numberWithCommas((amountProductPrice + amountPrice) * amountVal) + '원'; 
   			   data.closest('ul').find('.totalPrice').html(totalPriceStr);      
			   combinedPrice(); 
		   } 
		   
 		   function amountProductButton(){
 			   $('.amountProductMinus').off(); 
			   $('.amountProductPlus').off(); 
	 
			   $('.amountProductMinus').on('click',function(){ 
				   amountProductChange(0,$(this)); 
	
				    
			   });
			   
			   $('.amountProductPlus').on('click',function(){
				   amountProductChange(1,$(this)); 
	
			   }); 
		   }
		   
 		   $(window).scroll(function() {
			   var tabScrollVal = $('#pills-tab').offset().top;
			   var windowScrollVal = $(window).scrollTop();
			   
			   if( tabScrollVal <= windowScrollVal){
 				   
				  $('#navSupport').slideDown(function(){
				  	$('#navSupport').css('display','block');
				  }); 
 
			   }else{ 
				  $('#navSupport').slideUp(function() {
					  $('#navSupport').css('display','none'); 
				  });
				    
			   }
		   });  
		   
		   $('.selectPhoto').on('click',function(){ 
			   
			   var selectImg =  $(this).attr('src');  
			   var activeImg = $('.owl-stage').find('.active').find('img').attr('src');  	
			    
			   if(selectImg == activeImg){
 					return;
			   }
			   while(true){
					  $('.owl-next').trigger('click');	
					  activeImg = $('.owl-stage').find('.active').find('img').attr('src'); 
				   if(selectImg == activeImg){
					   break; 
				   }
			   }  
		   });
		   
		   amountProductButton();
		   
		   $('.amountProductPlus').trigger('click');
		   
		   var strLength = 0;
		   $('#optionSelect').change(function(){
			   var optionSelVal = $('#optionSelect').val();
			   var optionSelPrice = $('#optionSelect').find('option[value='+optionSelVal+']').attr('selPrice') 
			   var optionSelName = $('#optionSelect').find('option[value='+optionSelVal+']').html();
			   var optionStr =  '<ul style=" list-style:none; padding-left:0px; padding-top: 10px; display: block;" price="'+ optionSelPrice +'" num="'+ optionSelVal +'">' 
	         					+ '<li style=" border-bottom: 1px solid #BDBDBD;">'+ optionSelName +'<a class="optionSelRemove" style="font-weight:bold; float: right; cursor:pointer;">x</a></li>'  
	         					+ '<li style="padding-top: 10px;">'   
								+ '<button type="button" class="btn btn-b-n amountProductMinus" style="float: left; width: 30px; height: 30px;">' 
						        + '<span style="margin: 0 auto;">-</span>'  
			      				+ '</button>'	                     			 
							 	+ '<input type="text" maxlength="3" disabled="disabled" class="amountProduct" name="list['+strLength+'].volume" value="0" style="text-align:center;  float: left; width: 35px; height: 31px;">'
							 	+ '<input type="hidden" name="list['+strLength+'].selectNum" value="'+optionSelVal+'"  >'
								+ '<button type="button" class="btn btn-b-n amountProductPlus" style="width: 30px; height: 30px;">'    
						        + '<span style="margin-left: -3px;">+</span>'        
				     			+ '</button>'
				     			+ '<span class="totalPrice" style="float: right;"></span>' 
				 				+ '</li>'  
	   							+ '</ul>';  
	   							strLength++; 	
				     
			   if(optionSelVal == 0 || $('ul[num='+optionSelVal+']').length >0){ 
				   return;			   
			   } 
 			       
			  $('#optionSelList').append(optionStr);  
  
			   amountProductButton(); 
			   combinedPrice(); 
			   $('ul[num='+optionSelVal+']').find('.amountProductPlus').trigger('click');
			   
			   $('.optionSelRemove').on('click',function(){
				 $(this).closest('ul').slideUp(function() { 
					 $(this).closest('ul').remove(); 
					 combinedPrice();  
				 });    
 
			   });
			   
			   
		   });
			
		  
		    
		    
		   
	
	   });
	   
	   function paySubmit(){
		   $('.amountProduct').removeAttr('disabled');
	   }
	   
	   // 가격 세번째 마다 ',' 붙이는 정규식
	   function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	   }
	   
	   // Iframe 높이 자동조절
	   function autoResize(i) { 

           var iframeHeight= (i).contentWindow.document.body.scrollHeight;

           (i).height=iframeHeight+20;

       }
	   
	   // 오른쪽 고정 네비 href 이동함수
	   function navLink(event){
		   var tabScrollValue = $('#pills-tab').offset().top;
		    
		   if(event == 1){
			   $('#pills-video-tab').trigger('click');
		   }else if(event == 2){
			   $('#pills-plans-tab').trigger('click');
			   
		   }else if(event == 3){
			   $('#pills-map-tab').trigger('click');
		   }
		   $(window).scrollTop(tabScrollValue - 100);       

 	   }
	   
    </script>

    <!-- ======= Property Single ======= -->
    <section class="property-single nav-arrow-b">
      <div class="container">
        <div class="row">
          <div class="col-sm-12"> 
            <div class="row justify-content-between"> 
      		 <div class="col-md-7 col-lg-7 section-md-t3" style="">     
	            <div id="property-single-carousel" class="owl-carousel owl-arrow gallery-property" style="margin:0 auto; width: 500px; height: 570px;"> 
	              <c:forEach var="list" items="${photoList}" > 
		              <div class="carousel-item-b" style=" height: 570px; ">    
		                <img src="../resources/member/${productInpo.email}/photo/${list}" alt="" style=" margin:0 auto;  width:auto; max-width:100%; height: auto; max-height: 100%;">  
		              </div> 
	              </c:forEach> 
           	 	</div>   
           	 	<div style="position:relative;  width:500px; height: 120px; margin: 0 auto; z-index: 10;" >        
           	 		<ul style="list-style:none;">    
						<c:forEach var="list"  items="${photoList}" >  
	           	 			<li style="float: left; margin-right: 5px;">     
	        	 				<img src="../resources/member/${productInpo.email}/photo/${list}" class="selectPhoto" alt="" style="  cursor:pointer;  widith: 60px; height: 78px;"> 
	           	 			</li>
						</c:forEach>
           	 		</ul>
           	 	</div>
           	</div> 
              <div class="col-md-6 col-lg-5"> 
                <div class="property-price d-flex justify-content-center foo">
                  <div class="card-header-c d-flex">
                    <div class="card-box-ico">
                      <span class="ion-money">₩</span> 
                    </div>
                    <div class="card-title-c align-self-center">
                      <h5 class="title-c"></h5>  
                    </div> 
                  </div>
                </div>
                <div class="property-summary">
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="title-box-d section-t4">
                        <h3 class="title-d">Quick Summary</h3>
                      </div>
                    </div>
                  </div>
                  <div class="summary-list">
                    <ul class="list">
                      <li class="d-flex justify-content-between">
                        <strong>좋아요 :</strong>
                        <span>1134</span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>리뷰 :</strong>
                        <span>Chicago, IL 606543</span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>구매 :</strong>
                        <span>House</span>  
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>택배 :</strong>
                        <span>Sale</span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>Area:</strong>
                        <span>340m
                          <sup>2</sup>
                        </span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>Beds:</strong>
                        <span>4</span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>Baths:</strong>
                        <span>2</span>
                      </li>
                      <li class="d-flex justify-content-between">
                        <strong>Garage:</strong>
                        <span>1</span> 
                      </li>
                    </ul> 
                  </div>
                   	<form action="paymentProduct" method="post" onsubmit="return paySubmit()" > 
                  <div class="row">  
                    <div class="col-sm-12" style="background-color: #f3f3f3;" >
	                   	<input type="hidden" name="productSeq" value="${productInpo.productSeq}">   
                    	<c:if test="${productInpo.salesMethod == 0}">  
                    	<ul style=" list-style:none; padding-left:0px; padding-top: 10px;" price="0">       	
                    		<li style=" border-bottom: 3px solid #BDBDBD;">수량</li>  
                    		<li style="padding-top: 10px;"> 
								<button type="button" class="btn btn-b-n amountProductMinus" style="float: left; width: 30px; height: 30px;"> 
									        <span style="margin: 0 auto;">-</span>  
						      		</button>	                     			 
	      							<input type="text" maxlength="3" disabled="disabled" class="amountProduct" name="singleSupply" value="0" style="text-align:center;  float: left; width: 35px; height: 31px;">   
									<button type="button" class="btn btn-b-n amountProductPlus"  style="width: 30px; height: 30px;">     
									        <span style="margin-left: -3px;">+</span>        
							     </button> 
							     <span class="totalPrice" style="float: right;"></span> 
							</li>  
                    	</ul>  
                    	</c:if>
                    	<c:if test="${productInpo.salesMethod != 0}">      
	                    	<ul style=" list-style:none; padding-left:0px; padding-top: 10px; display: block;">
	                    		<li style=" border-bottom: 3px solid #BDBDBD; padding-bottom: 10px; ">     
	                    			<select id="optionSelect" style="width: 370px;">   
	                    				<option selected="selected" value="0">옵션 선택</option> 
	                    				<c:forEach var="list" items="${productOptionInpo}">          
		                    				<option value="${list.selectNum}" selPrice="${list.additionalAmount}">${list.optionName}   
		                    				<c:if test="${list.additionalAmount != 0 }">
		                    				 (+${list.additionalAmount})
		                    				</c:if> 
		                    				 </option>
	                    				</c:forEach> 
	                    			</select>
	                    		</li>
	                    	</ul>
	                    	<div id="optionSelList">
	                    	</div>
                    	</c:if>
                    	
                    	<ul style=" list-style:none; padding-left:0px; padding-top: 10px; ">     	
                    		<li style="font-weight: bold; padding-top: 15px;"><span>총 상품금액  :</span><span style="float: right;" id="combinedPrice"></span></li>    
                    	</ul>
                    </div>
                    <div class="col-sm-12" style="padding-left: 0px; padding-right: 0px;"> 
                    	<ul style="list-style: none; padding-top: 20px; padding-left: 0px;">    
                    		<li>
		   						<input type="submit" style="width:261px; margin-right: 15px;" class="btn btn-b" value="구매하기">           
		   						<button style="width: 58px; height: 58px; background-color: #f3f3f3;" class="btn">    
		   						<span class="fa fa-shopping-bag fa-2x" aria-hidden="true"></span>       
		   						</button> 	                 
		   						<button style="width: 58px; height: 58px; background-color: #f3f3f3;" class="btn">    
		   						<span class="fa fa-heart-o fa-2x" aria-hidden="true"></span>     
		   						</button>   
                     		</li>
                    	</ul>
                    </div>
                  </div> 
                    </form>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-10 offset-md-1">
            <ul class="nav nav-pills-a nav-pills mb-3 section-t3" id="pills-tab" role="tablist">  
              <li class="nav-item">
                <a class="nav-link active" id="pills-video-tab" data-toggle="pill" href="#pills-video" role="tab" aria-controls="pills-video" aria-selected="true">View</a> 
              </li>
              <li class="nav-item">
                <a class="nav-link" id="pills-plans-tab" data-toggle="pill" href="#pills-plans" role="tab" aria-controls="pills-plans" aria-selected="false">Floor Plans</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" id="pills-map-tab" data-toggle="pill" href="#pills-map" role="tab" aria-controls="pills-map" aria-selected="false">Ubication</a>
              </li>
            </ul>  
            <div class="tab-content" id="pills-tabContent">  
              <div class="tab-pane fade show active" id="pills-video" role="tabpanel" aria-labelledby="pills-video-tab" >      
                <iframe src="../resources/member/${productInpo.email}/description/${productInpo.productDescription}" onload="autoResize(this)" width="100%"   frameborder="0" ></iframe>   
              </div>    
              <div class="tab-pane fade" id="pills-plans" role="tabpanel" aria-labelledby="pills-plans-tab">
                <img src="assets/img/plan2.jpg" alt="" class="img-fluid">
              </div>
              <div class="tab-pane fade" id="pills-map" role="tabpanel" aria-labelledby="pills-map-tab">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.1422937950147!2d-73.98731968482413!3d40.75889497932681!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25855c6480299%3A0x55194ec5a1ae072e!2sTimes+Square!5e0!3m2!1ses-419!2sve!4v1510329142834" width="100%" height="460" frameborder="0" style="border:0" allowfullscreen></iframe>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="row section-t3">
              <div class="col-sm-12">
                <div class="title-box-d">
                  <h3 class="title-d">Contact Agent</h3>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-lg-4">
                <img src="assets/img/agent-4.jpg" alt="" class="img-fluid">
              </div>
              <div class="col-md-6 col-lg-4">
                <div class="property-agent">
                  <h4 class="title-agent">Anabella Geller</h4>
                  <p class="color-text-a">
                    Nulla porttitor accumsan tincidunt. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet
                    dui. Quisque velit nisi,
                    pretium ut lacinia in, elementum id enim.
                  </p>
                  <ul class="list-unstyled">
                    <li class="d-flex justify-content-between">
                      <strong>Phone:</strong>
                      <span class="color-text-a">(222) 4568932</span>
                    </li>
                    <li class="d-flex justify-content-between">
                      <strong>Mobile:</strong>
                      <span class="color-text-a">777 287 378 737</span>
                    </li>
                    <li class="d-flex justify-content-between">
                      <strong>Email:</strong>
                      <span class="color-text-a"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="38595656595a5d545459785d40595548545d165b5755">[email&#160;protected]</a></span>
                    </li>
                    <li class="d-flex justify-content-between">
                      <strong>Skype:</strong>
                      <span class="color-text-a">Annabela.ge</span>
                    </li>
                  </ul>
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
                </div>
              </div>
              <div class="col-md-12 col-lg-4">
                <div class="property-contact">
                  <form class="form-a">
                    <div class="row">
                      <div class="col-md-12 mb-1">
                        <div class="form-group">
                          <input type="text" class="form-control form-control-lg form-control-a" id="inputName" placeholder="Name *" required>
                        </div>
                      </div>
                      <div class="col-md-12 mb-1">
                        <div class="form-group">
                          <input type="email" class="form-control form-control-lg form-control-a" id="inputEmail1" placeholder="Email *" required>
                        </div>
                      </div>
                      <div class="col-md-12 mb-1">
                        <div class="form-group">
                          <textarea id="textMessage" class="form-control" placeholder="Comment *" name="message" cols="45" rows="8" required></textarea>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <button type="submit" class="btn btn-a">Send Message</button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Property Single-->

  </main><!-- End #main -->

  
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
  <ul style="list-style:none; position: fixed; right: 15px; bottom: 50px;" id="navSupport">  
    <li style="margin-bottom: 3px;">   
      <a class="nav-link" href="javascript:navLink(1)"  style=" 
  background: #2eca6a;  
  color: #fff;
  width: 44px; 
  height: 44px;
  text-align: center;
  line-height: -6;      
  font-size: 16px;
  border-radius: 50%; " >V</a>  
    </li>
    <li style="margin-bottom: 3px;">  
      <a class="nav-link" href="javascript:navLink(2)" style="
  background: #2eca6a;  
  color: #fff;
  width: 44px;
  height: 44px;
  text-align: center;
  line-height: -6;       
  font-size: 16px;
  border-radius: 50%; ">F</a>
    </li>
    <li > 
      <a class="nav-link" href="javascript:navLink(3)" style=" 
  background: #2eca6a;  
  color: #fff;
  width: 44px;
  height: 44px;
  text-align: center;
  line-height: -6;      
  font-size: 16px; 
  border-radius: 50%; " >U</a>
    </li>
  </ul>
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
