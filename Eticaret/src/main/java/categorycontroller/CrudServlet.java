package categorycontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CrudServlet
 */
@WebServlet("/CrudServlet")
public class CrudServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doPost(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String KategoriAd = request.getParameter("CategoryName");
        Categories ctg= new Categories();
        ctg.setCategoryName(KategoriAd);
        
        int durum = new CRUD().SetCategory(ctg);
        request.setAttribute("State", durum);
        //response.sendRedirect("CategoryCreate.jsp");
        RequestDispatcher rd = request.getRequestDispatcher("CategoryCreate.jsp");
        rd.forward(request, response);
        
    }

}
