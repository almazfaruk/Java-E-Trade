
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
    <%@page import="java.util.Objects"%>
    <%@page import="Usercontroller.UserCRUD"%>
<%@page import="Usercontroller.Users"%>
<%
if (!Objects.isNull(session.getAttribute("User"))) {
    Users u = (Users)session.getAttribute("User");
    request.setAttribute("d", u);
    
}
else{
	//RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
    //rd.forward(request, response);
    response.sendRedirect("Login.jsp");
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <style>
  
	.row{
		width:100%;
		margin:12px;
	}
    label {
        font-size: 15px;
        font-family: Arial, Helvetica, sans-serif;
    }

    .field-icon {
        float: right;
        margin-left: -25px;
        margin-top: 15px;
        position: relative;
        z-index: 2;
    }
    #cart{
        width:70%;
        margin-left:10%;
        margin-bottom:10%;
    }
    #back{
        margin-left:60%;
    }
    #tot{
        margin-left:9%;
    }
    @media only screen and (max-width:600px) { 
      #cart{
        width:100%;
        margin-left:0px;
    } 
      #back{
          margin-left:10%;
      }
      #tot{
          margin-left:9%;
      }
      .btn-primary
      {
         
      }
        
    }
</style>
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
								 aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
								  <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
								</svg>${d.getUserName()}</a>
								<ul class="dropdown-menu">
									<li class="nav-item active"><a class="nav-link" href="Profil.jsp">Profil Ayarları</a></li>
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
	
		
	<div id="cart" class="card" style="margin-top:100px;border-radius:10px">
    <div class="card-header badge-success" style="background-color: #ffd800; height: 80px; width: 100%; font-size: 24px">Profil Güncelle</div>
    <div class="card-body shadow-lg">
       <form class="row login_form" action="ProfilUpdate" method="post" id="contactForm" novalidate="novalidate">
            <input type="hidden" id="Bpws" name="Bpws" value="${d.getPassword()}" />    
            <input type="hidden" name="UserId" value="${d.getUserId()}" />
            <div class="row"><label>Şifre</label></div>
            <div class="row"><input type="password" class="form-control" id="password-field" name="Password" onchange="GetCbox()" /><span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span></div>
            <div class="row" id="CbActive" style="display:none"><label><input type="checkbox" id="Cbox" onclick="SetPw()" />Şifre Değiştir</label></div>
            <div id="ChangePw" style=" display:none;width:100%;margin:12px">
                <div class="row"><label>Yeni Şifre</label></div>
                <div class="row"><input type="password" class="form-control" id="password-field1" name="Pw1" onchange="NewPass()" /><span toggle="#password-field1" class="fa fa-fw fa-eye field-icon toggle-password"></span></div>
                <div class="row"><label>Yeni Şifre Tekrar</label></div>
                <div class="row"><input type="password" class="form-control" id="password-field2" onchange="NewPass()" name="Pw2" /><span toggle="#password-field2" class="fa fa-fw fa-eye field-icon toggle-password"></span></div>
                <span style="font-size:24px;color:green;display:none;text-align:center" id="Check" class="material-icons">check</span>
                <span style="font-size:24px;display:none;text-align:center" id="UnCheck" class="material-icons">error_outline</span>
            </div>
            <div class="row"><label>E-mail</label></div>
            <div class="row"><input class="form-control" class="form-control" id="Email" type="email" value="${d.getEmail()}" name="Email" /></div>
            <div class="row"><label>Tel No</label></div>
            <div class="row"><input class="form-control" id="PhoneNumber" type="tel" value="${d.getPhoneNumber()}" name="PhoneNumber" /></div>
            <div class="row"><label>Adres</label></div>
            <div class="row"><textarea type="text" class="form-control" id="Adressing"  name="Adressing" >${d.getAdressing()}</textarea></div>
            <br />
            <div class="row">
                <div id="tot">
                    <button id="acbtn" style="margin-left:6%;display:none" type="submit" class="btn btn-primary form-control"><span style="font-size:35px" class="material-icons">update</span></button>
                    <button disabled id="dsbtn" style="margin-left:6%;" class="btn btn-primary form-control"><span style="font-size:35px" class="material-icons">update_disabled</span></button>
                </div>
            </div>
        </form>

    </div>
</div>

	

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
				  text: msg,
				})
                };
            </script>

<script>
    function phoneMask() {
        var num = $(this).val().replace(/\D/g, '');
        $(this).val(num.substring(0, 1) + '(' + num.substring(1, 4) + ')' + num.substring(4, 7) + '-' + num.substring(7, 11));
    }
    $('[type="tel"]').keyup(phoneMask);
</script>

<script>
    $(".toggle-password").click(function() {

  $(this).toggleClass("fa-eye fa-eye-slash");
  var input = $($(this).attr("toggle"));
  if (input.attr("type") == "password") {
    input.attr("type", "text");
  } else {
    input.attr("type", "password");
  }
});
</script>

	<script type="text/javascript">

        function formkontrol(){
           
            var Pw= document.getElementById('password-field2').value;
            var Error= new Array();
            var Symbol = '*|,:<>[]{};()@&$#%!+-"/';

            var Symbolcontrol=false;
            for (var i = 0; i < Pw.length; i++) {
                if (Symbol.indexOf(Pw.charAt(i))!=-1){
                    Symbolcontrol=true;
                }
                }


            if (Pw=='')
                Error.push('Şifre alanını boş geçmeyiniz');
                         

            if (Pw.length<6)
           	Error.push('Şifre 6 karekter veya daha büyük olmalıdır.');

            if (Pw.search(/[a-z]/) < 0)
           	Error.push("Şifre en az bir Küçük harf içermelidir.");

            if (Pw.search(/[A-Z]/) < 0)
        	   Error.push("Şifre en az bir Büyük harf içermelidir.");

            if (Pw.search(/[0-9]/) < 0)
           	Error.push("Şifre en az bir rakam içermelidir.");

            if (Symbolcontrol==false)
           	Error.push("Şifre en az bir sembol içermelidir.");


            

         if (Error.length > 0) {
                    alert(Error.join("\n"));

                    return false;
        }
           else{ return true; }

        }
    </script>


<script>
    function SetPw() {
        if (document.getElementById("Cbox").checked == true) {
            //var elements = document.getElementsByName("fname").val();
            $('#ChangePw').toggle();
            $('#dsbtn').hide();
            $('#dsbtn').toggle();
            $('#acbtn').hide();
        }
        else {
            $('#ChangePw').hide();
            $('#acbtn').hide();
            $('#acbtn').toggle();
            $('#dsbtn').hide();
            $('#Pw1').val("");
            $('#Pw2').val("");
        }
    }
    function GetCbox() {
		var npw="";
    	$.ajax({
            type: "post",
            data: {Password: $("#password-field").val()},
            url: "GetMd5Pw",
            success: function(data){
            npw=data;
            var np=$('#Bpws').val();
		    npw=npw.trim(npw);
		    np=np.trim(np);
            if (np==npw) {           
            document.getElementById("password-field").readOnly = true;
            $('#acbtn').toggle();
            $('#dsbtn').hide();
            $('#CbActive').toggle();
        }
        else{
        	alert("Yanlış Şifre girildi!")
        }
            }
        });
        
    }
    function NewPass() {
        if ($('#password-field1').val() == $('#password-field2').val() && formkontrol()==true) {
            $('#UnCheck').hide();
            $('#Check').hide();
            $('#Check').toggle();
            $('#acbtn').hide();
            $('#acbtn').toggle();
            $('#dsbtn').hide();
        }
        else {
            $('#Check').hide();
            $('#UnCheck').hide();
            $('#UnCheck').toggle();
            $('#dsbtn').hide();
            $('#dsbtn').toggle();
            $('#acbtn').hide();
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
}
if (!Objects.isNull(session.getAttribute("User"))) {

    Users u = (Users)session.getAttribute("User");
    request.setAttribute("d", u);
    Boolean pw =(Boolean)session.getAttribute("Pwct");
    if(pw==true)
    {
    	%>
    	<script>
    	$(document).ready(function(){
    		erroralert("Şifrenizin süresi doldu lütfen yeni şifre oluşturunuz!!");
    		});
    	</script>
    	<%
    }
}
%>

</body>

</html>