package Productscontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import Productscontroller.ProductsCRUD;
import Productscontroller.Products;


import javax.servlet.annotation.*;
import java.util.Objects;

@WebServlet(name = "EditProduct", urlPatterns = { "/EditProduct" })
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class EditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int prdId=Integer.parseInt(request.getParameter("ProductId"));
		String PrdName = request.getParameter("ProductName");
		String Descp = request.getParameter("Description");
    	Part filePart = request.getPart("ImageFolder");
        String fileName = filePart.getSubmittedFileName();
		int CategoryId =Integer.parseInt(request.getParameter("CategoryId"));
		int Piece =Integer.parseInt(request.getParameter("Piece"));
		float Price =Float.parseFloat(request.getParameter("Price"));
		boolean Editing =Boolean.parseBoolean(request.getParameter("Editing"));
		System.out.print(prdId);
		System.out.print(fileName);
        Products prd= new Products();
        prd.setProductId(prdId);
        prd.setProductName(PrdName);
        prd.setDescription(Descp);
        prd.setİmageFolder(fileName);
        prd.setCategoryId(CategoryId);
        prd.setPiece(Piece);
        prd.setPrice(Price);
        prd.setEditing(Editing);
        
        int durum = new ProductsCRUD().UpdateProducts(prd);
        System.out.print(durum);
        if(durum==1&&!fileName.equals(""))
        {
            for (Part part : request.getParts()) {
              part.write("C:\\Users\\PC\\eclipse-workspace\\Eticaret\\src\\main\\webapp\\images\\" + fileName);
            }
        }
        request.setAttribute("State", durum);
        //response.sendRedirect("ProductCreate.jsp");
        String href="ProductEdit.jsp?ProductId="+prdId;
        RequestDispatcher rd = request.getRequestDispatcher(href);
        rd.forward(request, response);
	}

}
