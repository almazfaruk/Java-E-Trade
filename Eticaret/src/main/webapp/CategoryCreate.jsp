<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <%@page import="java.util.Objects"%>
    <mt:Layout title="CategoryCreate">
<jsp:attribute name="content">
 <div class="card border-0 md-2 justify-content-center" style="width:40%;height:fit-content;margin:30px">
    <div class="card-header bg-warning"><label><h4>Kategori Ekle</h4></label></div>
    <div class="card-body" >
            <div class="form-horizontal">
			    <form action="CrudServlet" method="post">
                <div class="form-group">
                    <label class = "row control-label col-md-10 mb-2">Kategori Ad</label>
                    <div class="row col-md-10">
                    <div class="div-two">
                    <input name="CategoryName" type="text">
                    </div>
                        <div class="div-two">
                         <input   type="submit" value="Kaydet" class="btn btn-primary" />
                        </div>
                       
                    </div>
                </div>
                </form>
            </div>

    </div>
</div>

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