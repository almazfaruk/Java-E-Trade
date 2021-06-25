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
    <%@page import="java.util.Objects"%>
    <%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <mt:Layout title="NewProduct">
<jsp:attribute name="content">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>
<script src="css/panel/Admin/jquery.maskMoney.js"></script>
    
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/jquery-ui.js" type="text/javascript"></script>
    <link href="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.10/themes/redmond/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="https://cdn.jsdelivr.net/npm/pretty-checkbox@3.0/dist/pretty-checkbox.min.css" rel="stylesheet">
 <div class="card border-0 md-2 justify-content-center" style="width:70%;height:fit-content;margin:30px">
    <div class="card-header bg-warning"><label><h4>Ürün Ekle</h4></label></div>
    <div class="card-body" >
            <div class="form-horizontal">

                <form action="CreateProduct" enctype="multipart/form-data" id="frmprdctid" method="post">
			  <div class="form-group">
			    <label for="exampleFormControlInput1">Ürün Adı</label>
			    <input type="text" name="ProductName" class="form-control" id="exampleFormControlInput1" placeholder="Ürün Adı">
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlSelect1">Kategori Ad</label>
			    <select class="form-control" name="CategoryId" id="exampleFormControlSelect1">
			      <c:forEach items="${c}" var="x">
                    <option value="${x.getCategoryId()}">${x.getCategoryName()}</option>
                    </c:forEach>
			    </select>
			  </div>
			  <div class="form-group">
			    <label for="exampleFormControlTextarea1">Ürün Detayı</label>
			    <textarea class="form-control" name="Description" id="exampleFormControlTextarea1" rows="3"></textarea>
			  </div>
			  <div class="form-group">
			  <label for="exampleFormControlTextarea1">Ürün Fiyatı</label>
			      <input type="text" id="TxtApply" onkeyup="$('#HidApply').val($('#TxtApply').val().replace('.', '.').replace('₺','').trim());" class="money form-control" />
                  <input type="hidden" id="HidApply" name="Price" />
			  </div>
			  <div class="form-group">
			  <label for="exampleFormControlTextarea1">Stok Miktarı</label>
			      <input type="number" name="Piece"  class="form-control"/>
			  </div>
			   <div class="form-group">			      
                <div class="row" style="display:flex;justify-content:center;align-content:center">
                        <a id="upfile" onclick="GetFile()" class="btn btn-success btnlink" style="font-size:24px"><span style="color:white;font-size:30px;float:left" class="material-icons">description</span>Ürün Resmi</a>
                        <input type="file" id="Foto" style="display:none" accept='image/png,image/jpeg,image/jpg' name="ImageFolder" onchange="document.getElementById('choosefile').innerHTML='('+$('#Foto').val()+')';$('#resimm').toggle('slow');$('#resimm')[0].src = window.URL.createObjectURL(this.files[0]);" />                           
                        <p id="choosefile"></p>
                        <img id="resimm" onclick="$('#resimm').toggle('slow');" width="240" height="180" style="background-color:lightgrey;border-radius:5px;display:none" alt="" />
                                            
                </div>
			  </div>
			  <div class="form-group">             
				     <div class="pretty p-switch p-fill " style="margin:50px;transform:scale(1.2);display:flex;justify-content:center">
                       <input type="checkbox" name="Editing" value="true"   class="form-control"/>
                        <div class="state p-warning">
                            <label style="color:orange">Aktif/Pasif</label>
                        </div>
                    </div>
                <br><br>
                <a href="javascript:$('#frmprdctid').submit();" style="float:right;font-size:24px"   class="btn btn-primary btnlink" ><span style="color:white;display:flex;justify-content:right;float:left;font-size:30px" class="material-icons">check_circle</span>Kaydet</a>
			  </div>
			</form>
            </div>

    </div>
</div>

<script>
    function GetFile()
    {
        $("#Foto").trigger('click');
    }
</script>
<script>
    $(".money").maskMoney({thousands:'', decimal:'.', allowZero:true, suffix: '₺'});
</script>
 </jsp:attribute>
   </mt:Layout>
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
%>