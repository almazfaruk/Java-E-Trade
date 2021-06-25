<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="categorycontroller.Categories"%>
<%@page import="categorycontroller.CRUD"%>
<%@page import="java.util.List"%>
<%
 String userId = request.getParameter("CategoryId");
 Categories user = new CRUD().GetById(Integer.valueOf(userId));
 request.setAttribute("user", user);
%>
    <%@ taglib prefix="mt" tagdir="/WEB-INF/tags" %>
    <mt:Layout title="CategoryCreate">
<jsp:attribute name="content">
 <div class="card border-0 md-2 justify-content-center" style="width:40%;height:fit-content;margin:30px">
    <div class="card-header bg-warning"><label><h4>Kategori Güncelle</h4></label></div>
    <div class="card-body" >
            <div class="form-horizontal">

                <div class="form-group">
                <form action="EditServlet" method="post">
                 <input type="hidden" id="CategoryId" name="CategoryId" value="${user.getCategoryId()}" />
                    <label class = "row control-label col-md-10 mb-2">Kategori Ad</label>
                    <div class="row col-md-10">
                    <div class="div-two">
                    <input id="CategoryName"  name="CategoryName" type="text" value="${user.getCategoryName()}">
                    </div>
                        <div class="div-two">
                         <input  type="submit" value="Güncelle" class="btn btn-primary" />
                        </div>
                       
                    </div>
                    </form>
                </div>
            </div>

    </div>
</div>
 </jsp:attribute>
   </mt:Layout>