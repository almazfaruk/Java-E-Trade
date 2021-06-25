<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Objects"%>
<%@page import="java.util.List"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="Productscontroller.Products"%>
<%@page import="Productscontroller.ProductsCRUD"%>
<%@page import="categorycontroller.Categories"%>
<%@page import="categorycontroller.CRUD"%>
<%@page import="Usercontroller.UserCRUD"%>
<%@page import="Usercontroller.Users"%>
<%@page import="Basketscontroller.Baskets"%>
<%@page import="Basketscontroller.BasketsCRUD"%>

<%
if (!Objects.isNull(session.getAttribute("User"))) {
    Users u = (Users)session.getAttribute("User");
    request.setAttribute("d", u);
    List<Baskets> b= new BasketsCRUD().AllBasketList(u.getUserId());
    request.setAttribute("u", b);
    List<Products> c = new ProductsCRUD().AllCategoryList();
    request.setAttribute("c", c);
}
else
{
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
    <link rel="stylesheet" href="karma-master/css/font-awesome.min.css">
    <link rel="stylesheet" href="karma-master/css/themify-icons.css">
    <link rel="stylesheet" href="karma-master/css/nice-select.css">
    <link rel="stylesheet" href="karma-master/css/nouislider.min.css">
    <link rel="stylesheet" href="karma-master/css/bootstrap.css">
    <link rel="stylesheet" href="karma-master/css/main.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
								<a href="#"  class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
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
							<li class="nav-item active"><a href="MeBaskets.jsp" class="cart"><span class="ti-bag"></span> Sepetim</a></li>
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
                    <h1>Alışveriş Sepetim</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="category.html">Sepetim</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Cart Area =================-->
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                            	<th scope="col">No</th>
                                <th scope="col">Ürün</th>
                                <th scope="col">Fiyatı</th>
                                <th scope="col">Adet</th>
                                <th scope="col">Toplam Fiyat</th>
                                <th scope="col"> </th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:set var="SumPrice" value="${0}" />
                            <c:forEach items="${u}" var="x">
                            <c:if test="${x.isIsBasketing() eq true}">
		                    <tr>                   
		                      <td>${x.getBasketId()}</td>
		                      
		                      <c:forEach items="${c}" var="y">
		                      <c:if test="${y.getProductId() eq x.getProducts_ProductId()}">
		                       <td>
		                      <div class="media">
                                     <div class="d-flex">
                                         <img src="images/${y.getİmageFolder()}" alt="">
                                     </div>
                                     <div class="media-body">
                                         <p>${y.getProductName()}</p>
                                     </div>
                                 </div>
                                  </td>
                                <td>
                                    <h5>${y.getPrice()} ₺</h5>
                                </td>
                                <td>
                                    <div class="product_count">
                                        <input type="text" onchange="UpdateBasket(${x.getBasketId()},${x.getPiece()},${y.getPrice()},${y.getProductId()})" name="qty-${y.getProductId()}" id="sst-${y.getProductId()}" value="${x.getPiece()}" maxlength="50"  title="Quantity:"
                                            class="input-text qty">
                                        <button onclick="var result = document.getElementById('sst-${y.getProductId()}'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                            class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
                                        <button onclick="var result = document.getElementById('sst-${y.getProductId()}'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                            class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
                                    </div>
                                </td>
                                 <td>
                                    <h5 id="prtotal-${y.getProductId()}">${x.getPiece()*y.getPrice()} ₺</h5>
                                </td>
                                <td><a href="DeleteBasket?BasketId=" id='${x.getBasketId()}' onclick="return dl(${x.getBasketId()})==true;"><svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-bag-dash-fill" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zM6 9.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1H6z"/></svg></a></td>
		                      	<c:set var="SumPrice" value="${SumPrice+x.getPiece()*y.getPrice()}" />
		                      </c:if>
		                     
		                       </c:forEach>
                                 
                               
		                    </tr>
                   			 </c:if>
                           </c:forEach>


                        
                            <tr class="shipping_area">
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                                <td>
								<h2 id="ttsum">${SumPrice}  ₺</h2>
                                </td>
                                <td>

                                </td>

                           
                            </tr>
                            <tr class="out_button_area">
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>
                                    <div class="checkout_btn_inner d-flex align-items-center">
                                        <button onclick="CreateOrders(${d.getUserId()})"  class="gray_btn" value="Satın Al">Satın Al</button>
                                        <a class="primary-btn" href="#">Proceed to checkout</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->

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
	<script src="karma-master/js/jquery.magnific-popup.min.js"></script>
	<script src="karma-master/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="karma-master/js/gmaps.min.js"></script>
	<script src="karma-master/js/main.js"></script>
	        <script type="text/javascript">
               function successalert() {                                    
                    
                    swal.fire({ title: "Başarılı!",
                    	 text: " Satın alma başarılı. Siparişlerim Sayfasına yonlendireceksiniz!",
                    	 type: "success"}).then(okay => {
                    	   if (okay) {
                    	    window.location.href = "http://localhost:4088/Eticaret/MeOrders.jsp";
                    	  }
                    	});
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
	            <script type="text/javascript">
			    function dl(Id) {
			        var s = Id.toString();
			        var id = Id;
			        Swal.fire({
			            title: 'Emin misiniz?',
			            text: " Bu ürünü silmek istiyormusunuz? Sildiğinizde geri döndüremezsiniz!",
			            icon: 'warning',
			            showCancelButton: true,
			            confirmButtonColor: '#3085d6',
			            cancelButtonColor: '#d33',
			            confirmButtonText: 'Sil!'
			        }).then((result) => {
			            if (result.value) {
			                var x = document.getElementById(s).href;
			                x+=id;
			                $.ajax({
			                    url: x,
			                    type: 'POST',
			                    dataType: 'json',
			                    data: { 'id': id },
			                    success: function (data) {
			                        if (data != "") {
			                            Swal.fire(
			                                'Silindi!',
			                                'Silmek istenilen başarıyla silindi.',
			                                'success'
			                            )
			                            $('#' + s).parent('td').parent('tr').remove();
			                        }
			                        else {
			                            Swal.fire({
			                                icon: 'error',
			                                title: 'hata...',
			                                text: data,
			                            })
			                        }
			
			                    }
			                });
			
			            }
			        })
			    }
			</script>
			<script>
				function UpdateBasket(BasketId,BPiece,Price,ProductId)
				{
					var Piece=$('#sst-'+ProductId).val();
					var totalprice=parseFloat($('#prtotal-'+ProductId).text());
					$.ajax({
		                type: "post",
		                data: {'BasketId': BasketId,'Piece':Piece,'ProductId':ProductId,'href':window.location.pathname.split('/')[2]},
		                url: "UpdateBasket", 
		                success: function(data){ 
		                	data=JSON.parse(data);
		                	//alert(data)
		                	if(data==1)
		                		{
		                		//successalert();
		                		$('#ttsum').text(parseFloat($('#ttsum').text())-totalprice+(Piece*Price)+' ₺');
		                		$('#prtotal-'+ProductId).text(Piece*Price +' ₺');
		                		}
		                	else{
		                		erroralert("Bir Hata Meydana Geldi!");
		                	}
		                	
		                }
		            });
				}
			</script>
			<script>
				function CreateOrders(UserId)
				{
					//alert(UserId)
					$.ajax({
		                type: "post",
		                data: {'UserId': UserId},
		                url: "CreateOrders", 
		                success: function(data){ 
		                	//data=JSON.parse(data);
		                	//alert(data)
		                	if(data==1)
		                		{
		                		successalert();
		                		}
		                	else{
		                		erroralert("Bir Hata Meydana Geldi!");
		                	}
		                	
		                	
		                }
		            });
				}
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