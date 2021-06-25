<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="title" required="true" rtexprvalue="true" %>
<%@attribute name="content" fragment="true" %>
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
    <style>
        .selectitem{
            background-color:#39A893;
        }
    </style>

</head>

<body id="page-top" class="bg-gradient-light">

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
            

            <li style="border-radius:20px;border-color:#57CEB7"><input type="text" class="form-control text-center" readonly style="border-radius:30px;background-color:#7D63DE;color:white;border-color:#57CEB7;cursor:pointer;width:85%;margin-left:15px" value="Merhaba Faruk" /></li>

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
	
        <jsp:invoke fragment="content"></jsp:invoke>
        

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
			    function sd(id) {
			        var s = id.toString();
			        var id = sayı;
			        Swal.fire({
			            title: 'Emin misiniz?',
			            text: " Bunu Sildiğinizde geri döndüremezsiniz!",
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
</body>

</html>
