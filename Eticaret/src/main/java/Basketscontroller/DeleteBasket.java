package Basketscontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Productscontroller.ProductsCRUD;

/**
 * Servlet implementation class DeleteBasket
 */
@WebServlet("/DeleteBasket")
public class DeleteBasket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBasket() {
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
		 String BasketId = request.getParameter("BasketId");
		 int durum = new BasketsCRUD().BasketDelete(BasketId);
		 System.out.print(durum);
		 PrintWriter out = response.getWriter();
		 out.println(durum);
	     RequestDispatcher rd = request.getRequestDispatcher("MeBaskets.jsp");
	}

}
