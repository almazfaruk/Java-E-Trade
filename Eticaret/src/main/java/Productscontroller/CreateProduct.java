package Productscontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Productscontroller.ProductsCRUD;
import Productscontroller.Products;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "CreateProduct", urlPatterns = { "/CreateProduct" })
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class CreateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String PrdName = request.getParameter("ProductName");
		String Descp = request.getParameter("Description");
    	Part filePart = request.getPart("ImageFolder");
        String fileName = filePart.getSubmittedFileName();
		int CategoryId =Integer.parseInt(request.getParameter("CategoryId"));
		int Piece =Integer.parseInt(request.getParameter("Piece"));
		float Price =Float.parseFloat(request.getParameter("Price"));
		boolean Editing =Boolean.parseBoolean(request.getParameter("Editing"));
		
        Products prd= new Products();
        prd.setProductName(PrdName);
        prd.setDescription(Descp);
        prd.setİmageFolder(fileName);
        prd.setCategoryId(CategoryId);
        prd.setPiece(Piece);
        prd.setPrice(Price);
        prd.setEditing(Editing);
        
        int durum = new ProductsCRUD().CreateProducts(prd);
        if(durum==1)
        {
            for (Part part : request.getParts()) {
              part.write("C:\\Users\\PC\\eclipse-workspace\\Eticaret\\src\\main\\webapp\\images\\" + fileName);
              //part.write(String.format("C://Users//PC//eclipse-workspace//Eticaret//src//main//webapp//images//", fileName));
            }
            //response.getWriter().print("The file uploaded sucessfully.");
        }
        request.setAttribute("State", durum);
        //response.sendRedirect("ProductCreate.jsp");
        RequestDispatcher rd = request.getRequestDispatcher("CreateProduct.jsp");
        rd.forward(request, response);
	}

}
