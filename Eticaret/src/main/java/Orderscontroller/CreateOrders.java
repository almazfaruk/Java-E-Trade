package Orderscontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import Basketscontroller.Baskets;
import Basketscontroller.BasketsCRUD;
import Productscontroller.Products;
import Productscontroller.ProductsCRUD;

/**
 * Servlet implementation class CreateOrders
 */
@WebServlet("/CreateOrders")
public class CreateOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateOrders() {
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
		 int id =Integer.parseInt(request.getParameter("UserId"));
		 List<Baskets> b= BasketsCRUD.AllBasketList(id);
		 int a=1;
		 String ordnum= OrdersNumberGenerator.Generator(OrdersCRUD.AllOrderList());
		 for(Baskets num:b)
		 {
			 if(num.isIsBasketing()==true)
			 {
			 try {			 			 
			 Products p = new Products();
			 p.setProductId(num.getProducts_ProductId());
			 p.setPiece(num.getPiece());
			 a= ProductsCRUD.ControlPiece(p,id,ordnum);
			 }
			 catch (Exception e) {
				 e.printStackTrace();
				 a=0;
			  }
			 }
		 }
		 PrintWriter out = response.getWriter();
		 request.setCharacterEncoding("UTF-8");
		 response.setContentType("text/html; charset=utf-8");
		 out.println(a);
	     RequestDispatcher rd = request.getRequestDispatcher("MeOrders.jsp");
	}

}
