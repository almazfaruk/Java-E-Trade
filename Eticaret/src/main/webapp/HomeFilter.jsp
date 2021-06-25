<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="Productscontroller.Products"%>
<%@page import="Productscontroller.ProductsCRUD"%>
<%@page import="java.util.List"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.util.Objects"%>
<%@page import="Usercontroller.UserCRUD"%>
<%@page import="Usercontroller.Users"%>

<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
if (!Objects.isNull(session.getAttribute("User"))) {
    Users u = (Users)session.getAttribute("User");
    request.setAttribute("d", u);
}
List<Products> c = new ProductsCRUD().OrderByList(0);
request.setAttribute("c", c);
//List<kategoris> r = new ArrayList<kategoris>();
 int i=1;
 List<Categories> d = new CRUD().AllCategoryList();
 request.setAttribute("e", d);
%>
 <%@page import="categorycontroller.Categories"%>
<%@page import="categorycontroller.CRUD"%>
<%@page import="java.util.List"%>
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
	<link href="css/panel/Admin/sweetalert2.min.css" rel="stylesheet" />
    <link href="css/panel/Admin/sweetalert2.css" rel="stylesheet" />
	<style>
	.price{
		text-align:center;
	}
	</style>
</head>

<body id="category">

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
							
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<div class="d-flex justify-content-between">
					<input type="text" class="form-control" id="search_input" placeholder="Search Here">
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</div>
			</div>
		</div>
	</header>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Ürün Vitrini Sayfası</h1>
					<nav class="d-flex align-items-center">
						<a href="Home.jsp">Anasayfa<span class="lnr lnr-arrow-right"></span></a>
						<a href="HomeFilter">Ürün Kategorileri</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-lg-4 col-md-5">
				<div class="sidebar-categories">
					<div class="head">Kategoriler</div>
					<ul class="main-categories">
					<c:set var="Ct" value="${-1}" />
						<c:forEach items="${e}" var="x">
						<c:set var="Ct" value="${Ct+1}" />
						<li class="main-nav-list"><a   style="cursor:pointer" onclick="$('#SortByCategory').val(${x.getCategoryId()}).change();"><span
								 class="lnr lnr-arrow-right"></span>${x.getCategoryName()}</a>	
						</li>
                        </c:forEach>
					</ul>
				</div>
				<div class="sidebar-filter mt-50">
					<div class="top-filter-head">Product Filters</div>
					<div class="common-filter">
						<div class="head">Brands</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Gionee<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Micromax<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Samsung<span>(19)</span></label></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">Color</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">Black<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">Black
										Leather<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">Black
										with red<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">Spacegrey<span>(19)</span></label></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">Price</div>
						<div class="price-range-area">
							<div id="price-range"></div>
							<div class="value-wrapper d-flex">
								<div class="price">Price:</div>
								<span>$</span>
								<div id="lower-value"></div>
								<div class="to">to</div>
								<span>$</span>
								<div id="upper-value"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-9 col-lg-8 col-md-7">
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
				<label>Sırala: </label>
					<div class="sorting">
						<select id="SortByCategory">
						<option value="0">Tümü</option>
			<c:forEach items="${e}" var="x">
                <option value="${x.getCategoryId()}">
                    ${x.getCategoryName()}
                </option>
            </c:forEach>
						</select>
					</div>
					<label>Sırala: </label>
					<div class="pagination">
					
						<select id="sortableprice">
							<option value="0">Azalan Fiyat</option>
							<option value="1">Artan Fiyat</option>
						</select>
					</div>
				</div>
				<!-- End Filter Bar -->
				<!-- Start Best Seller -->				
				<section class="lattest-product-area pb-40 category-list">
					<div id="ProductList" class="row">
						<!-- single product -->
						<c:forEach items="${c}" var="x">
						<div class="col-lg-4 col-md-6">
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
						</c:forEach>
						<!-- single product -->
						
					</div>
				</section>
				<!-- End Best Seller -->
				<!-- Start Filter Bar -->
				<div style="height:30px" class="filter-bar d-flex flex-wrap align-items-center">

				</div>
				<!-- End Filter Bar -->
			</div>
		</div>
	</div>

	
      
	<!-- start footer Area -->
	<footer style="margin-top:10%"  class="footer-area section_gap">
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

	<!-- Modal Quick Product View -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="container relative">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="product-quick-view">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="quick-view-carousel">
								<div class="item" style="background: url(img/organic-food/q1.jpg);">

								</div>
								<div class="item" style="background: url(img/organic-food/q1.jpg);">

								</div>
								<div class="item" style="background: url(img/organic-food/q1.jpg);">

								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="quick-view-content">
								<div class="top">
									<h3 class="head">Mill Oil 1000W Heater, White</h3>
									<div class="price d-flex align-items-center"><span class="lnr lnr-tag"></span> <span class="ml-10">$149.99</span></div>
									<div class="category">Category: <span>Household</span></div>
									<div class="available">Availibility: <span>In Stock</span></div>
								</div>
								<div class="middle">
									<p class="content">Mill Oil is an innovative oil filled radiator with the most modern technology. If you are
										looking for something that can make your interior look awesome, and at the same time give you the pleasant
										warm feeling during the winter.</p>
									<a href="#" class="view-full">View full Details <span class="lnr lnr-arrow-right"></span></a>
								</div>
								<div class="bottom">
									<div class="color-picker d-flex align-items-center">Color:
										<span class="single-pick"></span>
										<span class="single-pick"></span>
										<span class="single-pick"></span>
										<span class="single-pick"></span>
										<span class="single-pick"></span>
									</div>
									<div class="quantity-container d-flex align-items-center mt-15">
										Quantity:
										<input type="text" class="quantity-amount ml-15" value="1" />
										<div class="arrow-btn d-inline-flex flex-column">
											<button class="increase arrow" type="button" title="Increase Quantity"><span class="lnr lnr-chevron-up"></span></button>
											<button class="decrease arrow" type="button" title="Decrease Quantity"><span class="lnr lnr-chevron-down"></span></button>
										</div>

									</div>
									<div class="d-flex mt-20">
										<a href="#" class="view-btn color-2"><span>Add to Cart</span></a>
										<a href="#" class="like-btn"><span class="lnr lnr-layers"></span></a>
										<a href="#" class="like-btn"><span class="lnr lnr-heart"></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


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
	<script>
	var input = document.getElementById("search_input");
	input.addEventListener("keyup", function(event) {
	  if (event.keyCode === 13) {
	   event.preventDefault();
	   Searchable($('#search_input').val())
	  }
	});
	function Searchable(key)
	{
		var href="HomeFilter.jsp";
		var htmlstring="";
		if(key!=null)
			{
			$("#ProductList").html("");
			$.ajax({
                type: "post",
                data: {'Word': key,'href':href},
                url: "Search", 
                success: function(data){ 
                	data=JSON.parse(data);
                	//alert(data)
                	for (var i = 0; i < data.length; i++) {        					
                		htmlstring+="<div class='col-lg-4 col-md-6'><div class='single-product'><img class='img-fluid' src='images/"+data[i].imageFolder+"' alt=''><div class='product-details'><h6>"+data[i].productName+"</h6><div class='price'><h6>"+data[i].price+" ₺</h6></div><div class='prd-bottom'><a href='' class='social-info'><span class='lnr lnr-heart'></span><p class='hover-text'>Wishlist</p></a><a href='' class='social-info'><span class='lnr lnr-sync'></span><p class='hover-text'>compare</p></a><a href='' class='social-info'><span class='ti-bag'></span><p class='hover-text'>Sepete Ekle</p></a><a href='Details.jsp?ProductId="+data[i].productId+"' class='social-info'><span class='lnr lnr-move'></span><p class='hover-text'>Ürün Detayı</p></a></div></div></div></div>";	        					
        				}
        			$("#ProductList").html(htmlstring);
        			if(htmlstring=="")
        				{
        				$("#ProductList").html("<h2 style='text-align:center;color:red'>Aranan kelimeyle ilgili bir sonuç bulunamadı!</h2>")
        				}
                }
            });
			}
	}
	</script>
	<script>
	function shortlist()
	{
		$("#ProductList").html("");
		var a=$("#SortByCategory").val();
		var b=$("#sortableprice").val();		
		//var data="${c}";
		var htmlstring="";
		//<c:set var="salary" scope="session" value="${a}"/>
		if(a!=0)
			{
			$.ajax({
                type: "post",
                url: "FilterProduct",
                data: {'id': b},
                success: function(data){
                	data=JSON.parse(data);
                	for (var i = 0; i < data.length; i++) {
        				if(a==data[i].categoryId)
        					{
        					htmlstring+="<div class='col-lg-4 col-md-6'><div class='single-product'><img class='img-fluid' src='images/"+data[i].imageFolder+"' alt=''><div class='product-details'><h6>"+data[i].productName+"</h6><div class='price'><h6>"+data[i].price+" ₺</h6></div><div class='prd-bottom'><a href='' class='social-info'><span class='lnr lnr-heart'></span><p class='hover-text'>Wishlist</p></a><a href='' class='social-info'><span class='lnr lnr-sync'></span><p class='hover-text'>compare</p></a><a href='' class='social-info'><span class='ti-bag'></span><p class='hover-text'>Sepete Ekle</p></a><a href='Details.jsp?ProductId="+data[i].productId+"' class='social-info'><span class='lnr lnr-move'></span><p class='hover-text'>Ürün Detayı</p></a></div></div></div></div>";	   	
        					}
        				}
        			$("#ProductList").html(htmlstring);
        			if(htmlstring=="")
    				{
    				$("#ProductList").html("<h2 style='text-align:center;color:red'>Aranan kelimeyle ilgili bir sonuç bulunamadı!</h2>")
    				}
                }
            });

			}
			else{
				$.ajax({
	                type: "post",
	                url: "FilterProduct",
	                data: {'id': b},
	                success: function(data){ 
	                	data=JSON.parse(data);
	                	for (var i = 0; i < data.length; i++) {        					
	                		htmlstring+="<div class='col-lg-4 col-md-6'><div class='single-product'><img class='img-fluid' src='images/"+data[i].imageFolder+"' alt=''><div class='product-details'><h6>"+data[i].productName+"</h6><div class='price'><h6>"+data[i].price+" ₺</h6></div><div class='prd-bottom'><a href='' class='social-info'><span class='lnr lnr-heart'></span><p class='hover-text'>Wishlist</p></a><a href='' class='social-info'><span class='lnr lnr-sync'></span><p class='hover-text'>compare</p></a><a href='' class='social-info'><span class='ti-bag'></span><p class='hover-text'>Sepete Ekle</p></a><a href='Details.jsp?ProductId="+data[i].productId+"' class='social-info'><span class='lnr lnr-move'></span><p class='hover-text'>Ürün Detayı</p></a></div></div></div></div>";	    	        					
	        				}
	        			$("#ProductList").html(htmlstring);
	        			if(htmlstring=="")
        				{
        				$("#ProductList").html("<h2 style='text-align:center;color:red'>Aranan kelimeyle ilgili bir sonuç bulunamadı!</h2>")
        				}
	                }
	            });
			}
	}
	$("#SortByCategory").change(function(){
		 shortlist();	
		});
	$("#sortableprice").change(function(){
		 shortlist();	
		});
	</script>
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