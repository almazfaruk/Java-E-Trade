package Productscontroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Usercontroller.UserCRUD;
import Usercontroller.Users;

/**
 * Servlet implementation class Basket
 */
@WebServlet("/Basket")
public class Basket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Basket() {
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
		int userid =Integer.parseInt(request.getParameter("UserId"));
		int productid =Integer.parseInt(request.getParameter("ProductId"));
		
		String url=request.getParameter("href");	
        Products prd= new Products();
        prd.setPiece(piece);
        prd.setProductId(productid);

        
        int durum = new ProductsCRUD().AnyPiece(prd,userid);
        request.setAttribute("State", durum);

    	PrintWriter out = response.getWriter();
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		out.println(durum);
        RequestDispatcher rd = request.getRequestDispatcher(url);
        //rd.forward(request, response);
	}

}
