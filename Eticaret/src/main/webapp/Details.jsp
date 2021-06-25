<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Objects"%>
<%@page import="java.util.List"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="Productscontroller.Products"%>
<%@page import="Productscontroller.ProductsCRUD"%>
<%@page import="java.util.List"%>
<%@page import="categorycontroller.Categories"%>
<%@page import="categorycontroller.CRUD"%>
<%@page import="Usercontroller.UserCRUD"%>
<%@page import="Usercontroller.Users"%>
<%
if (!Objects.isNull(session.getAttribute("User"))) {
    Users u = (Users)session.getAttribute("User");
    request.setAttribute("d", u);
}
%>
<%
 String ProductId = request.getParameter("ProductId");
 Products prd = new ProductsCRUD().GetById(Integer.valueOf(ProductId));
 request.setAttribute("prd", prd);
 Categories ctg = new CRUD().GetById(Integer.valueOf(prd.getCategoryId()));
 request.setAttribute("ctg", ctg);
%>
    
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Karma Shop</title>
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="karma-master/css/linearicons.css">
	<link rel="stylesheet" href="karma-master/css/font-awesome.min.css">
	<link rel="stylesheet" href="karma-master/css/themify-icons.css">
	<link rel="stylesheet" href="karma-master/css/bootstrap.css">
	<link rel="stylesheet" href="karma-master/css/owl.carousel.css">
	<link rel="stylesheet" href="karma-master/css/nice-select.css">
	<link rel="stylesheet" href="karma-master/css/nouislider.min.css">
	<link rel="stylesheet" href="karma-master/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="karma-master/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="karma-master/css/main.css">
		<link href="css/panel/Admin/sweetalert2.min.css" rel="stylesheet" />
    <link href="css/panel/Admin/sweetalert2.css" rel="stylesheet" />
</head>

<body>

		<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="Home.jsp"><img src="karma-master/img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="Home.jsp">Anasayfa</a></li>
							<li class="nav-item active"><a class="nav-link" href="HomeFilter.jsp">Ürünler</a></li>							
							<%
						if (!Objects.isNull(session.getAttribute("User"))) {
							%>
						     <li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
								  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
								</svg>${d.getUserName()}</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="Profil.jsp">Profil Ayarları</a></li>
									<li class="nav-item"><a class="nav-link" href="MeOrders.jsp">Siparişlerim</a></li>
									<li class="nav-item"><a class="nav-link" href="Login.jsp?IsLogout=1">Çıkış Yap</a></li>
								</ul>
							</li>
							<%
						}
						else{
							%>
						     <li class="nav-item"><a class="nav-link" href="Login.jsp">Giriş Yap</a></li>
							<%
						}
						%>
							<li class="nav-item"><a class="nav-link" href="contact.jsp">İletişim</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
						<%
						if (!Objects.isNull(session.getAttribute("User"))) {
							%>
							<li class="nav-item"><a href="MeBaskets.jsp" class="cart"><span class="ti-bag"></span> Sepetim</a></li>
							<%
						}
						%>
							
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Urun Detay Sayfası</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Anasayfa<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">Urunler<span class="lnr lnr-arrow-right"></span></a>
						<a href="single-product.html">Urun Detayı</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
			<input type="hidden" id="ProductId"  name="ProductId" value="${prd.getProductId()}" />
			<input type="hidden" id="UserId"  name="UserId" value="${d.getUserId()}" />
			 
				<div class="col-lg-6">
					<div class="s_Product_carousel">
						<div class="single-prd-item">
							<img class="img-fluid" src="images/${prd.getİmageFolder()}" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="images/${prd.getİmageFolder()}" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="images/${prd.getİmageFolder()}" alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3>${prd.getProductName()}</h3>
						<h2>${prd.getPrice()} ₺</h2>
						<ul class="list">
							<li><a class="active" href="#"><span>Kategori</span> : ${ctg.getCategoryName()}</a></li>
						</ul>
						<br>
						<div class="product_count">
							<label for="qty">Adet:</label>
							<input type="text" name="qty" id="sst" maxlength="50" value="1" title="Quantity:" class="input-text qty">
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
							 class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
							 class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
						</div>
						<div class="card_area d-flex align-items-center">
							<a onclick="AddBasket()" class="primary-btn" href="#">Sepete Ekle</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Açıklama</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
					 aria-selected="false">Özellikleri</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
					 aria-selected="false">Yorumlar</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
					 aria-selected="false">Değerlendirme</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
					${prd.getDescription()}
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<h5>Width</h5>
									</td>
									<td>
										<h5>128mm</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Height</h5>
									</td>
									<td>
										<h5>508mm</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Depth</h5>
									</td>
									<td>
										<h5>85mm</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Weight</h5>
									</td>
									<td>
										<h5>52gm</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Quality checking</h5>
									</td>
									<td>
										<h5>yes</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Freshness Duration</h5>
									</td>
									<td>
										<h5>03days</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>When packeting</h5>
									</td>
									<td>
										<h5>Without touch of hand</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Each Box contains</h5>
									</td>
									<td>
										<h5>60pcs</h5>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="comment_list">
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-1.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<h5>12th Feb, 2018 at 05:56 pm</h5>
											<a class="reply_btn" href="#">Reply</a>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item reply">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-2.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<h5>12th Feb, 2018 at 05:56 pm</h5>
											<a class="reply_btn" href="#">Reply</a>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-3.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<h5>12th Feb, 2018 at 05:56 pm</h5>
											<a class="reply_btn" href="#">Reply</a>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="review_box">
								<h4>Post a comment</h4>
								<form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="name" name="name" placeholder="Your Full name">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="email" class="form-control" id="email" name="email" placeholder="Email Address">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="number" name="number" placeholder="Phone Number">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="message" id="message" rows="1" placeholder="Message"></textarea>
										</div>
									</div>
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="btn primary-btn">Submit Now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="row total_rate">
								<div class="col-6">
									<div class="box_total">
										<h5>Overall</h5>
										<h4>4.0</h4>
										<h6>(03 Reviews)</h6>
									</div>
								</div>
								<div class="col-6">
									<div class="rating_list">
										<h3>Based on 3 Reviews</h3>
										<ul class="list">
											<li><a href="#">5 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">4 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">3 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">2 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">1 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="review_list">
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-1.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-2.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-3.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="review_box">
								<h4>Add a Review</h4>
								<p>Your Rating:</p>
								<ul class="list">
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
								</ul>
								<p>Outstanding</p>
								<form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="name" name="name" placeholder="Your Full name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Full name'">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="email" class="form-control" id="email" name="email" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="number" name="number" placeholder="Phone Number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone Number'">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="message" id="message" rows="1" placeholder="Review" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Review'"></textarea></textarea>
										</div>
									</div>
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="primary-btn">Submit Now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->

	

	 <!-- start footer Area -->
	<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Hakkımızda</h6>
						<p>
							Karma K24 Karma Holding A.Ş adı altında kurulan bir şirkettir.
						</p>
					</div>
				</div>
				<div class="col-lg-4  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Haberler</h6>
						<p>Güncel kalmak için takip edin</p>
						<div class="" id="mc_embed_signup">

							<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get" class="form-inline">

								<div class="d-flex flex-row">

									<input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
									 required="" type="email">


									<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
									</div>

									<!-- <div class="col-lg-4 col-md-4">
												<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
											</div>  -->
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Instragram</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="karma-master/img/i1.jpg" alt=""></li>
							<li><img src="karma-master/img/i2.jpg" alt=""></li>
							<li><img src="karma-master/img/i3.jpg" alt=""></li>
							<li><img src="karma-master/img/i4.jpg" alt=""></li>
							<li><img src="karma-master/img/i5.jpg" alt=""></li>
							<li><img src="karma-master/img/i6.jpg" alt=""></li>
							<li><img src="karma-master/img/i7.jpg" alt=""></li>
							<li><img src="karma-master/img/i8.jpg" alt=""></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Bizi Takip Edin</h6>
						<p>Let us be social</p>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
				<p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
</p>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->
	<script src="css/panel/Admin/sweetalert2.min.js"></script>
	<script src="css/panel/Admin/sweetalert2.js"></script>
	<script src="css/panel/Admin/jquery-3.3.1.min.js"></script>
	<script src="karma-master/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="karma-master/js/vendor/bootstrap.min.js"></script>
	<script src="karma-master/js/jquery.ajaxchimp.min.js"></script>
	<script src="karma-master/js/jquery.nice-select.min.js"></script>
	<script src="karma-master/js/jquery.sticky.js"></script>
	<script src="karma-master/js/nouislider.min.js"></script>
	<script src="karma-master/js/jquery.magnific-popup.min.js"></script>
	<script src="karma-master/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="karma-master/js/gmaps.min.js"></script>
	<script src="karma-master/js/main.js"></script>
	        <script type="text/javascript">
               function successalert() {
                    Swal.fire(
                        'Başarılı!',
                        'İşlem Tamamlandı!',
                        'success'
                    );
                    };
                    function successbasket() {
                        Swal.fire(
                            'Başarılı!',
                            'Ürün Sepetinize Eklendi!',
                            'success'
                        );
                        };
            </script>
            <script type="text/javascript">
            function erroralert(msg) {
                Swal.fire({
				  icon: 'error',
				  title: 'hata...',
				  text: msg,
				})
                };
            </script>
<script>
function SpeedLogin()
{
	(async () => {
		  const { value: formValues } = await Swal.fire({
		    title: "Giriş Yap",
		    html:
		      '<input placeholder="Email" id="swal-input1" class="swal2-input">' +
		      '<input placeholder="Şifre" id="swal-input2" class="swal2-input">',
		    focusConfirm: false,
		    preConfirm: () => {
		      return [
		        document.getElementById("swal-input1").value,
		        document.getElementById("swal-input2").value
		      ];
		    }
		  });

		  if (formValues) {
		    //Swal.fire(JSON.stringify(formValues));
			  $.ajax({
	                type: "post",
	                data: {'Email': formValues[0],'Password':formValues[1],'href':window.location.pathname.split('/')[2] + window.location.search},
	                url: "FastLogin", 
	                success: function(data){ 
	                	//data=JSON.parse(data);
	                	alert(data);
	                	if(data==1)
                		{
                		window.location.reload();
                		}
	                	else
                		{
                			erroralert("kullanıcı adı veya şifre yanlış!");
                			SpeedLogin();
                		}
	                	
	                }
	            });
		  }
		})();
}
</script>
<script type="text/javascript">
	function AddBasket()
	{
		if($('#UserId').val()!=0)
		{
			var piece=$('#sst').val();
			$.ajax({
                type: "post",
                data: {'Piece': piece,'UserId':$('#UserId').val(),'ProductId':$('#ProductId').val(),'href':window.location.pathname.split('/')[2] + window.location.search},
                url: "Basket", 
                success: function(data){ 
                	//data=JSON.parse(data);
                	//alert(data);
                	if(data==1)
            		{
                		successbasket();
            		}
                	else
            		{
            			erroralert("Yetersiz stok miktarı");
            		}
                	
                }
            });
			
		}
		else
		{
			Swal.fire({
				  title: 'Giriş yapmak istiyormusun?',
				  text: "Ürünü Sepete eklemek için giriş yapmalısın!",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  cancelButtonText:'İptal',
				  confirmButtonText: 'Giriş Yap'
				}).then((result) => {
				  if (result.value) {
				     alert("se")
				    SpeedLogin();
				  }
				})
		}
	}
</script>

                      
            
            
<%
if(!Objects.isNull(request.getAttribute("State")))
{
if((int)request.getAttribute("State")==1)
{
	%>
	<script>
	$(document).ready(function(){
		successalert();
		});
	</script>
	<%
}
else
{
	%>
	<script>
	$(document).ready(function(){
		erroralert("hata");
		});
	</script>
	<%
}
}
%>           

</body>

</html>