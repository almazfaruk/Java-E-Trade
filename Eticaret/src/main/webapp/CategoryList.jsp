<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@page import="categorycontroller.Categories"%>
<%@page import="categorycontroller.CRUD"%>
<%@page import="java.util.List"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
List<Categories> c = new CRUD().AllCategoryList();
request.setAttribute("c", c);
//List<kategoris> r = new ArrayList<kategoris>();
 int i=1;
%>
    <%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <mt:Layout title="CategoryList">
<jsp:attribute name="content">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap4.min.css">
 <div class="card border-0 md-2 justify-content-center" style="width:100%;height:fit-content;margin:30px">
    <div class="card-header bg-warning"><label><h4>Kategori Sayfası</h4></label></div>
    <br><br>
    <div style="width:100%"><a href="CategoryCreate.jsp" style="background-color:blue" class="btn btn success">Yeni Kategori Ekle</a></div>
    <br><br>
        <table id="example" class="table table-striped table-bordered dt-responsive nowrap">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kategori Ad</th>
                    <th>Sil</th>
                    <th>Güncelle</th>
                </tr>
            </thead>
            <tbody>
             <c:forEach items="${c}" var="x">
                    <tr>                   
                      <td>${x.getCategoryId()}</td>
                      <td>${x.getCategoryName()}</td>
                        <td><a href="DeleteServlet?CategoryId=" id='${x.getCategoryId()}' onclick="return sd(${x.getCategoryId()})==true;"  ><svg width="25" height="25" viewBox="0 0 16 16" class="bi bi-file-earmark-minus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">  <path d="M9 1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h5v-1H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h5v2.5A1.5 1.5 0 0 0 10.5 6H13v2h1V6L9 1z" />  <path fill-rule="evenodd" d="M11 11.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z" /></svg></a></td>
                        <td><a href=CategoryEdit.jsp?CategoryId=${x.getCategoryId()}  ><svg width="25" height="25" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" /><path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z" /></svg></a></td>
                    </tr>
                   
                     </c:forEach>
            </tbody>

        </table>
        <br><br>
    </div>

 </jsp:attribute>
   </mt:Layout>
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