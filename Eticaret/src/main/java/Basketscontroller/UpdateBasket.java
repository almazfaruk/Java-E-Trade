package Basketscontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Productscontroller.Products;
import Productscontroller.ProductsCRUD;
import Usercontroller.Users;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class UpdateBasket
 */
@WebServlet("/UpdateBasket")
public class UpdateBasket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBasket() {
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
		int piece =Integer.parseInt(request.getParameter("Piece"));
		HttpSession session = request.getSession();
		Users u = (Users)session.getAttribute("User");
		int productid =Integer.parseInt(request.getParameter("ProductId"));
		int basketid =Integer.parseInt(request.getParameter("BasketId"));
		
		String url=request.getParameter("href");	
        Baskets prd= new Baskets();
        prd.setPiece(piece);
        prd.setProducts_ProductId(productid);
        prd.setBasketId(basketid);
        prd.setUserId(u.getUserId());

        
        int durum = new BasketsCRUD().UpdateBaskets(prd);
        System.out.print(durum);
        request.setAttribute("State", durum);

    	PrintWriter out = response.getWriter();
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		out.println(durum);
        RequestDispatcher rd = request.getRequestDispatcher(url);
	}

}
