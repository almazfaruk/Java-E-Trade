package Productscontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import java.util.List;

/**
 * Servlet implementation class FilterProduct
 */
@WebServlet("/FilterProduct")

public class FilterProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int id =Integer.parseInt(request.getParameter("id"));
		 System.out.print(id);
		 List<Products> c = new ProductsCRUD().OrderByList(id);
		 JSONArray json = new JSONArray(c);
		 PrintWriter out = response.getWriter();
		 System.out.print(json);
		 request.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html; charset=utf-8");
		 out.println(json);
	     RequestDispatcher rd = request.getRequestDispatcher("HomeFilter.jsp");
	}

}
