<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Objects"%>
<%@page import="Usercontroller.UserCRUD"%>
<%@page import="Usercontroller.Users"%>
<%@page import="Productscontroller.Products"%>
<%@page import="Productscontroller.ProductsCRUD"%>
<%@page import="java.util.List"%>
<%@page import="org.json.JSONArray"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="categorycontroller.Categories"%>
<%@page import="categorycontroller.CRUD"%>
<%@page import="java.util.List"%>
<%
if (!Objects.isNull(session.getAttribute("User"))) {
    Users u = (Users)session.getAttribute("User");
    request.setAttribute("d", u);
}
List<Products> c = new ProductsCRUD().OrderByList(1);
request.setAttribute("c", c);

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
	<link rel="stylesheet" href="karma-master/css/magnific-popup.css">
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
							<li class="nav-item active"><a class="nav-link" href="Home.jsp">Anasayfa</a></li>
							<li class="nav-item"><a class="nav-link" href="HomeFilter.jsp">Ürünler</a></li>							
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

	<!-- start banner Area -->
	<section class="banner-area">
		<div class="container">
			<div class="row fullscreen align-items-center justify-content-start">
				<div class="col-lg-12">
					<div class="active-banner-slider owl-carousel">
						<!-- single-slide -->
						<div class="row single-slide align-items-center d-flex">
							<div class="col-lg-5 col-md-6">
								<div class="banner-content">
									<h1>Karma  K24 Yaz <br>Sezonu açıldı</h1>
									<p>Yepyeni ürünlerle yaz sezonunu yakala fırsatları kap avantajları kaçırma
										</p>
									<div class="add-bag d-flex align-items-center">
										<a class="add-btn" href="HomeFilter.jsp"><span class="lnr lnr-cross"></span></a>
										<span class="add-text text-uppercase">Ürünlere Git</span>
									</div>
								</div>
							</div>
							<div class="col-lg-7">
								<div class="banner-img">
									<img class="img-fluid" src="img/banner/banner-img.png" alt="">
								</div>
							</div>
						</div>
						<!-- single-slide -->
						<div class="row single-slide align-items-center d-flex">
							<div class="col-lg-5 col-md-6">
								<div class="banner-content">
									<h1>Karma K24 Yaz <br>Sezonu açıldı</h1>
									<p>Yepyeni ürünlerle yaz sezonunu yakala fırsatları kap avantajları kaçırma
										</p>
									<div class="add-bag d-flex align-items-center">
										<a class="add-btn" href="HomeFilter.jsp"><span class="lnr lnr-cross"></span></a>
										<span class="add-text text-uppercase">Ürünlere Git</span>
									</div>
								</div>
							</div>
							<div class="col-lg-7">
								<div class="banner-img">
									<img class="img-fluid" src="img/banner/banner-img.png" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- start features Area -->
	<section class="features-area section_gap">
		<div class="container">
			<div class="row features-inner">
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="karma-master/img/features/f-icon1.png" alt="">
						</div>
						<h6>Ücretsiz Kargo</h6>
						<p>ürünleriniz  hızlı kargo sistemiyle ücretsiz teslimat</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="karma-master/img/features/f-icon2.png" alt="">
						</div>
						<h6>Geri Ödeme Sistemi</h6>
						<p>15 gün içinde kolay iade imkanı</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="karma-master/img/features/f-icon3.png" alt="">
						</div>
						<h6>7/24 Canlı Destek ve Müsteri hizmetleri desteği</h6>
						<p>Sorunlarınıza hızlı çözümler bulan ekiplerle iletişim imkanı</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="karma-master/img/features/f-icon4.png" alt="">
						</div>
						<h6>Güvenli Ödeme Sistemi</h6>
						<p>3D Secure ve bir çok güvenlik sistemleriyle güvendesiniz </p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end features Area -->



	

	<!-- Start exclusive deal Area -->
	<section class="exclusive-deal-area">
		<div class="container-fluid">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-6 no-padding exclusive-left">
					<div class="row clock_sec clockdiv" id="clockdiv">
						<div class="col-lg-12">
							<h1>Karma KR24'de Yaz  Sezonu!</h1>
							<p>Zaman bitmeden fırsatları yakala </p>
						</div>
						<div class="col-lg-12">
							<div class="row clock-wrap">
								<div class="col clockinner1 clockinner">
									<h1 class="days">7</h1>
									<span class="smalltext">Gün</span>
								</div>
								<div class="col clockinner clockinner1">
									<h1 class="hours">23</h1>
									<span class="smalltext">Saat</span>
								</div>
								<div class="col clockinner clockinner1">
									<h1 class="minutes">47</h1>
									<span class="smalltext">Dakika</span>
								</div>
								<div class="col clockinner clockinner1">
									<h1 class="seconds">59</h1>
									<span class="smalltext">Saniye</span>
								</div>
							</div>
						</div>
					</div>
					<a href="HomeFilter.jsp" class="primary-btn">Alışveriş Yap</a>
				</div>
				<div class="col-lg-6 no-padding exclusive-right">
					<div class="active-exclusive-product-slider">
						<!-- single exclusive carousel -->
						<div class="single-exclusive-slider">
							<img class="img-fluid" src="images/key3.jpg" alt="">
							<div class="product-details">
								<div class="price">
									<h6>45.5 ₺</h6>
								</div>
								<h4>Ceket
									</h4>
								<div class="add-bag d-flex align-items-center justify-content-center">
									<a class="add-btn" href=""><span class="ti-bag"></span></a>
									<span class="add-text text-uppercase">Sepete Ekle</span>
								</div>
							</div>
						</div>
						<!-- single exclusive carousel -->
						<div class="single-exclusive-slider">
							<img class="img-fluid" src="images/key2.jpg" alt="">
							<div class="product-details">
								<div class="price">
									<h6>45.5 ₺ </h6>
								</div>
								<h4>Ceket
									</h4>
								<div class="add-bag d-flex align-items-center justify-content-center">
									<a class="add-btn" href=""><span class="ti-bag"></span></a>
									<span class="add-text text-uppercase">Sepete Ekle</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End exclusive deal Area -->

	<!-- Start brand Area -->
	<section class="brand-area section_gap">
		<div class="container">
			<div class="row">
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="karma-master/img/brand/1.png" alt="">
				</a>
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="karma-master/img/brand/2.png" alt="">
				</a>
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="karma-master/img/brand/3.png" alt="">
				</a>
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="karma-master/img/brand/4.png" alt="">
				</a>
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="karma-master/img/brand/5.png" alt="">
				</a>
			</div>
		</div>
	</section>
	<!-- End brand Area -->
	<!-- start product Area -->
	<section class="owl-carousel active-product-area section_gap">
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>Bazı Ürünler</h1>
							<p>Çok Beğenilen Ürünler
								</p>
						</div>
					</div>
				</div>
							<div  class="row">
						<!-- single product -->
						<c:set var="Count" value="${0}" />
						<c:forEach items="${c}" var="x">
						<c:if test="${Count<4}">
						<div class="col-lg-3 col-md-6">
							<div class="single-product">
								<img class="img-fluid" src="images/${x.getİmageFolder()}" alt="">
								<div class="product-details">
									<h6>${x.getProductName()}</h6>
									<div class="price">
										<h6>${x.getPrice()} ₺</h6>
									</div>
									<div class="prd-bottom">
									    <a href=""  class="social-info">
											<span class="lnr lnr-heart"></span>
											<p class="hover-text">Wishlist</p>
										</a>
										<a href=""  class="social-info">
											<span class="lnr lnr-sync"></span>
											<p class="hover-text">compare</p>
										</a>
										<a href="" class="social-info">
											<span class="ti-bag"></span>
											<p class="hover-text">Sepete Ekle</p>
										</a>
										<a href="Details.jsp?ProductId=${x.getProductId()}" class="social-info">
											<span class="lnr lnr-move"></span>
											<p class="hover-text">Ürün Detayı</p>
										</a>
									</div>
								</div>
							</div>
						</div>
						<c:set var="Count" value="${Count+1}" />
						</c:if>
						</c:forEach>
						<!-- single product -->
						
					</div>
			</div>
		</div>
			<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>Bazı Ürünler</h1>
							<p>Çok Beğenilen Ürünler
								</p>
						</div>
					</div>
				</div>
							<div  class="row">
						<!-- single product -->
						<c:set var="Count" value="${0}" />
						<c:forEach items="${c}" var="x">
						<c:if test="${Count>=4}">
						<div class="col-lg-3 col-md-6">
							<div class="single-product">
								<img class="img-fluid" src="images/${x.getİmageFolder()}" alt="">
								<div class="product-details">
									<h6>${x.getProductName()}</h6>
									<div class="price">
										<h6>${x.getPrice()} ₺</h6>
									</div>
									<div class="prd-bottom">
									    <a href=""  class="social-info">
											<span class="lnr lnr-heart"></span>
											<p class="hover-text">Wishlist</p>
										</a>
										<a href=""  class="social-info">
											<span class="lnr lnr-sync"></span>
											<p class="hover-text">compare</p>
										</a>
										<a href="" class="social-info">
											<span class="ti-bag"></span>
											<p class="hover-text">Sepete Ekle</p>
										</a>
										<a href="Details.jsp?ProductId=${x.getProductId()}" class="social-info">
											<span class="lnr lnr-move"></span>
											<p class="hover-text">Ürün Detayı</p>
										</a>
									</div>
								</div>
							</div>
						</div>
						</c:if>
						<c:set var="Count" value="${Count+1}" />
						</c:forEach>
						<!-- single product -->
						
					</div>
			</div>
		</div>
	</section>
	<!-- end product Area -->
		


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

	<script src="karma-master/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="css/panel/Admin/sweetalert2.min.js"></script>
	<script src="css/panel/Admin/sweetalert2.js"></script>
	<script src="css/panel/Admin/jquery-3.3.1.min.js"></script>
	<script src="karma-master/js/vendor/bootstrap.min.js"></script>
	<script src="karma-master/js/jquery.ajaxchimp.min.js"></script>
	<script src="karma-master/js/jquery.nice-select.min.js"></script>
	<script src="karma-master/js/jquery.sticky.js"></script>
	<script src="karma-master/js/nouislider.min.js"></script>
	<script src="karma-master/js/countdown.js"></script>
	<script src="karma-master/js/jquery.magnific-popup.min.js"></script>
	<script src="karma-master/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="karma-master/js/gmaps.min.js"></script>
	<script src="karma-master/js/main.js"></script>
                <script type="text/javascript">
            function erroralert(msg) {
                Swal.fire({
				  icon: 'error',
				  title: 'hata...',
				  text: msg,
				})
                };
            </script>
	<%
if (!Objects.isNull(session.getAttribute("User"))) {

    Boolean pw =(Boolean)session.getAttribute("Pwct");
    if(pw==true)
    {
    	response.sendRedirect("Profil.jsp");
    }
}
%>
</body>

</html>