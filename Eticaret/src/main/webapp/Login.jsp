<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
    <%@page import="java.util.Objects"%>
    <%@page import="Usercontroller.UserCRUD"%>
    <%@page import="Usercontroller.Users"%>
    <%
if (!Objects.isNull(session.getAttribute("User"))) {
    if (!Objects.isNull(request.getParameter("IsLogout"))) {
    int id =Integer.parseInt(request.getParameter("IsLogout"));
    if(id==1)
    {
    	session.setAttribute("User",null);
    }
    }
    else
    {
        response.sendRedirect("Home.jsp");
    }
}
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
	<link rel="stylesheet" href="karma-master/css/owl.carousel.css">
	<link rel="stylesheet" href="karma-master/css/themify-icons.css">
	<link rel="stylesheet" href="karma-master/css/font-awesome.min.css">
	<link rel="stylesheet" href="karma-master/css/nice-select.css">
	<link rel="stylesheet" href="karma-master/css/nouislider.min.css">
	<link rel="stylesheet" href="karma-master/css/bootstrap.css">
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
							<li class="nav-item"><a class="nav-link" href="HomeFilter.jsp">Ürünler</a></li>							
							<%
						if (!Objects.isNull(session.getAttribute("User"))) {
							%>
						     <li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">${d.getUserName()}</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="Profil.jsp">Profil Ayarları</a></li>
									<li class="nav-item"><a class="nav-link" href="MeOrders.jsp">Siparişlerim</a></li>
								</ul>
							</li>
							<%
						}
						else{
							%>
						     <li class="nav-item active"><a class="nav-link" href="Login.jsp">Giriş Yap</a></li>
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
					<h1>Login/Register</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="category.html">Login/Register</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="img/login.jpg" alt="">
						<div class="hover">
							<h4>New to our website?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
							<a class="primary-btn" href="Register.jsp">Hesap Oluştur</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Giriş Ekranı</h3>
						<form class="row login_form" action="Login" method="post" id="contactForm" novalidate="novalidate">
							<div class="col-md-12 form-group">
								<input type="email" class="form-control" id="Email" name="Email" placeholder="Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="Password" name="Password" placeholder="Şifre" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
							</div>
							
							<div class="col-md-12 form-group">
								<a onclick="formkontrol()" class="primary-btn">Giriş Yap</a>
								<a href="ForgotPassword.jsp">Şifremi Unuttum</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->

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
          
    	<script src="css/panel/Admin/sweetalert2.min.js"></script>
	<script src="css/panel/Admin/sweetalert2.js"></script>
	<script src="css/panel/Admin/jquery-3.3.1.min.js"></script>
	
	    <script type="text/javascript">
               function successalert() {
                    Swal.fire(
                        'Başarılı!',
                        'İşlem Tamamlandı!',
                        'success'
                    );
                    };
            </script>
            <script type="text/javascript">
            function erroralert(msg) {
                Swal.fire({
				  icon: 'error',
				  title: 'hata...',
				  html: msg,
				})
                };
            </script>
            
		<script type="text/javascript">

        function formkontrol(){
           
            var Pw= document.getElementById('Password').value;
            var email= document.getElementById('Email').value;
            var Error= new Array();
            var Symbol = '*|,:<>[]{};()@&$#%!+-"/';

            var Symbolcontrol=false;
            for (var i = 0; i < Pw.length; i++) {
                if (Symbol.indexOf(Pw.charAt(i))!=-1){
                    Symbolcontrol=true;
                }
                }


            if (Pw=='')
        	{
            Error.push("<p style='width:100%'>Şifre alanını boş geçmeyiniz</p>");
        	}
        
	        if (Pw.length<6)
	        Error.push("<p style='width:100%'>Şifre 6 karekter veya daha büyük olmalıdır.</p>");
	
	        if (Pw.search(/[a-z]/) < 0)
	        Error.push("<p style='width:100%'>Şifre en az bir Küçük harf içermelidir.</p>");
	
	        if (Pw.search(/[A-Z]/) < 0)
	        Error.push("<p style='width:100%'>Şifre en az bir Büyük harf içermelidir.</p>");
	
	        if (Pw.search(/[0-9]/) < 0)
	          Error.push("<p style='width:100%'>Şifre en az bir rakam içermelidir.</p>");
	
	        if (Symbolcontrol==false)
	          Error.push("<p style='width:100%'>Şifre en az bir sembol içermelidir.</p>");
	        
	        if (email.includes("@")==false||email.includes(".com")==false)
		          Error.push("<p style='width:100%'>Email uzantısı içermemektedir.</p>");
	            
	            
	
	        if (Error.length > 0)
	         {
	        	erroralert(Error.join("\n"));
	
	                 return false;
	         }
	        else{ $('#contactForm').submit(); }

        }
    </script>  

<%
if(!Objects.isNull(request.getAttribute("State1")))
{
if((int)request.getAttribute("State1")==0)
{
	%>
	<script>
	$(document).ready(function(){
		erroralert("Kullanıcı Adı veya şifre yanlış!!");
		});
	</script>
	<%
}
}
%>
</body>

</html>