
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${title}</title>

    <!-- Custom fonts for this template-->
    <link href="css/panel/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/panel/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/panel/css/page.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/panel/Admin/sweetalert2.min.css" rel="stylesheet" />
    <link href="css/panel/Admin/sweetalert2.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
    <style>
        .selectitem{
            background-color:#39A893;
        }
    </style>

</head>

<body id="page-top" class="bg-gradient-light">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="Productscontroller.Products"%>
<%@page import="Productscontroller.ProductsCRUD"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Objects"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
List<Products> c = new ProductsCRUD().AllCategoryList();
request.setAttribute("c", c);
//List<kategoris> r = new ArrayList<kategoris>();
 if (!Objects.isNull(session.getAttribute("Admin"))) {
    String u = (String)session.getAttribute("Admin");
    request.setAttribute("d", u);
}
 else{
		
	    response.sendRedirect("AdminLogin.jsp");
	}
%>
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav sidebar sidebar-dark accordion" style="background-color:#7D63DE" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <li>
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-icon rotate-n-15">
                    </div>
                    <div style="color:#5C4AD3;font-family:sans-serif" class="sidebar-brand-text mx-3"></div>
                </a>
            </li>

            <!-- Divider -->
            

            <li style="border-radius:20px;border-color:#57CEB7"><input type="text" class="form-control text-center" readonly style="border-radius:30px;background-color:#7D63DE;color:white;border-color:#57CEB7;cursor:pointer;width:85%;margin-left:15px" value="${d}" /></li>

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="CategoryList.jsp">
                    <span>Kategori Sayfası</span>
                </a>
            </li>
	        <li class="nav-item active">
                <a class="nav-link" href="ProductList.jsp">
                    <span>Ürünler Sayfası</span>
                </a>
            </li>
            <li class="nav-item active">
               <a class="nav-link" href="Login.jsp?IsLogout=1"><span>Çıkış Yap</span></a>
            </li>
            <!-- Divider -->


            <li class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </li>


        </ul>
	

 <div class="card border-0 md-2 justify-content-center" style="width:100%;height:fit-content;margin:30px">
    <div class="card-header bg-warning"><label><h4>Urun Sayfası</h4></label></div>
    <br><br>
    <div style="width:100%"><a href="NewProduct.jsp" style="background-color:blue" class="btn btn success">Yeni Ürün Ekle</a></div>
    <br><br>
        <table id="example" class="table table-striped table-bordered dt-responsive nowrap">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Urun Adı</th>
                    <th>Urun Durumu</th>
                    <th>Kategorisi</th>
                    <th>Fiyat(₺)</th>
                    <th>Stok Miktarı(Adet)</th>
                    <th>Ürün Detayı</th>
                    <th>Ürün Resmi</th>
                    <th>Sil</th>
                    <th>Güncelle</th>
                </tr>
            </thead>
            <tbody>
				             <c:forEach items="${c}" var="x">
                    <tr>                   
                      <td>${x.getProductId()}</td>
                      <td>${x.getProductName()}</td>
                      <td>${x.isEditing()}</td>
                      <td>${x.getCategoryId()}</td>
                      <td>${x.getPrice()}</td>
                      <td>${x.getPiece()}</td>
                      <td>${x.getDescription()}</td>
                      <td><a href="images/${x.getİmageFolder()}" onclick="return image(${x.getProductId()+100}) == true;" id="${x.getProductId()+100}">resim</a></td>
                        <td><a href="DeleteProduct?CategoryId=" id='${x.getProductId()}' onclick="return sd(${x.getProductId()})==true;"  ><svg width="25" height="25" viewBox="0 0 16 16" class="bi bi-file-earmark-minus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">  <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z" />  <path fill-rule="evenodd" d="M11 11.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z" /></svg></a></td>
                        <td><a href=ProductEdit.jsp?ProductId=${x.getProductId()}  ><svg width="25" height="25" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" /><path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" /></svg></a></td>
                    </tr>
                   
                     </c:forEach>                
            </tbody>

        </table>
        <br><br>
    </div>

    

    </div>
    

    <!-- Bootstrap core JavaScript-->
    <script src="css/panel/vendor/jquery/jquery.min.js"></script>
    <script src="css/panel/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="css/panel/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="css/panel/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="css/panel/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="css/panel/js/demo/chart-area-demo.js"></script>
    <script src="css/panel/js/demo/chart-pie-demo.js"></script>
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
            function erroralert() {
                Swal.fire({
				  icon: 'error',
				  title: 'hata...',
				  text: '@TempData["Message"]',
				})
                };
            </script>
            <script type="text/javascript">
			    function sd(sayı) {
			        var s = sayı.toString();
			        var id = sayı;
			        Swal.fire({
			            title: 'Emin misiniz?',
			            text: " Bu ürünü Sildiğinizde geri döndüremezsiniz!",
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
			<script type="text/javascript">
			    function image(sayı) {
			        var s = sayı.toString();
			        var x = document.getElementById(s).href;
			        Swal.fire({
			            title: 'Muhteşem!',
			            text: ' Model olarak Ürün Resmi.',
			            imageUrl: x,
			            imageWidth: 400,
			            imageHeight: 200,
			            imageAlt: 'Custom image',
			        })
			    }
			</script>
			  <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.bootstrap4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap4.min.js"></script>

    <script>
		$(document).ready(function() {
		    var table = $('#example').DataTable( {
		        lengthChange: false,
		        //buttons: ['copy', 'excel', 'csv', 'pdf', 'colvis']
		         buttons: ['copy', 'excel', 'pdf']
		    });
		    table.buttons().container()
		        .appendTo( '#example_wrapper .col-md-6:eq(0)' );
		});
    </script>
			
</body>

</html>
