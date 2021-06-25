package Productscontroller;
import Connection.ConnectionString;
import Orderscontroller.Orders;
import Orderscontroller.OrdersCRUD;
import Orderscontroller.OrdersNumberGenerator;
import Productscontroller.Products;
import categorycontroller.Categories;

import java.util.ArrayList;
import java.util.List;

import Basketscontroller.Baskets;
import Basketscontroller.BasketsCRUD;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
public class ProductsCRUD {

	public static int CreateProducts(Products u){  
	    int status=0;  
	    try{  
	        Connection con=ConnectionString.getCon();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into products(ProductName,CategoryId,Piece,Price,Description,ImageFolder,Editing) values(?,?,?,?,?,?,?)");  
	        ps.setString(1,u.getProductName()); 
	        ps.setInt(2,u.getCategoryId());  
	        ps.setInt(3,u.getPiece());  
	        ps.setFloat(4,u.getPrice());  
	        ps.setString(5,u.getDescription());  
	        ps.setString(6,u.getİmageFolder());  
	        ps.setBoolean(7,u.isEditing());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	public List<Products> AllCategoryList() {
        List<Products> r = new ArrayList<Products>();
        try {
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn=ConnectionString.getCon();  
        String query = "Select * from products";
        PreparedStatement psmt = conn.prepareStatement(query);
        ResultSet rs = psmt.executeQuery();
        
       while (rs.next()) {
    	   Products reh = new Products(rs.getInt("ProductId"), rs.getString("ProductName"),rs.getInt("CategoryId"),rs.getInt("Piece"),rs.getFloat("Price"),rs.getString("Description"),rs.getString("ImageFolder"),rs.getBoolean("Editing"));

        r.add(reh);
        }
        
       } catch (Exception e) {
        e.printStackTrace();
        }
        return r;
        }
	public List<Products> OrderByList(int id) {
        List<Products> r = new ArrayList<Products>();
        try {
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn=ConnectionString.getCon();
        String query="";
        if(id==0)
        {
        	 query = "Select * from products where Editing=true ORDER BY Price DESC";
        	 //System.out.print("coktan");
        }
        else
        {
        	 query = "Select * from products where Editing=true ORDER BY Price ASC";
        	 //System.out.print("azalan");
        }
        
        PreparedStatement psmt = conn.prepareStatement(query);
        ResultSet rs = psmt.executeQuery();
        
       while (rs.next()) {
    	   Products reh = new Products(rs.getInt("ProductId"), rs.getString("ProductName"),rs.getInt("CategoryId"),rs.getInt("Piece"),rs.getFloat("Price"),rs.getString("Description"),rs.getString("ImageFolder"),rs.getBoolean("Editing"));

        r.add(reh);
        }
        
       } catch (Exception e) {
        e.printStackTrace();
        }
        return r;
        }
	 public Products GetById(int id) {
		 Products r = null;
		 try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn=ConnectionString.getCon();    	
		 
		String query = "Select * from products where ProductId=?";
		 PreparedStatement psmt = conn.prepareStatement(query);
		 psmt.setInt(1, id);
		 ResultSet rs = psmt.executeQuery();
		 
		while (rs.next()) {
		 r = new Products(rs.getInt("ProductId"), rs.getString("ProductName"),rs.getInt("CategoryId"),rs.getInt("Piece"),rs.getFloat("Price"),rs.getString("Description"),rs.getString("ImageFolder"),rs.getBoolean("Editing"));
		 }
		 
		} catch (Exception e) {
		 e.printStackTrace();
		 }
		 return r;
		 }
	 public static int UpdateProducts(Products u) {
         try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=ConnectionString.getCon(); 
         PreparedStatement ps=con.prepareStatement(  
                        "UPDATE products SET ProductName=?,Description=?,ImageFolder=?,Piece=?,Price=?,CategoryId=?,Editing=? where ProductId=?");
        
         
        
         	ps.setString(1,u.getProductName()); 
            ps.setString(2,u.getDescription()); 
            ps.setString(3,u.getİmageFolder()); 
         
            ps.setInt(4,u.getPiece());
            ps.setFloat(5,u.getPrice()); 
            ps.setInt(6,u.getCategoryId());
            ps.setBoolean(7,u.isEditing());
            ps.setInt(8, Integer.valueOf(u.getProductId()));
         return ps.executeUpdate();
         
         }catch (Exception e) {
         e.printStackTrace();
         }
         
         return 0;
         }
		public int OrderPrdControl(int id) {
	         List<Products> r = new ArrayList<Products>();
	         int c = 0;
	         try {
	         //Class.forName("com.mysql.jdbc.Driver");
	        	 Connection conn=ConnectionString.getCon();    
	         String query = "Select * from orders where ProductId="+id+"";
	         PreparedStatement psmt = conn.prepareStatement(query);
	         ResultSet rs = psmt.executeQuery();
	         if(rs.getRow()==0) c = 0;
	         else c = 1;
	         
	        } catch (Exception e) {
	         e.printStackTrace();
	         }
	         return c;
	         }
		public int ProductDelete(String CategoryId) {
	        try {
	        int c = OrderPrdControl(Integer.parseInt(CategoryId));    
	        if(c==0) {	
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection conn=ConnectionString.getCon();           
	       String query = "DELETE FROM products where ProductId=?";
	        
	        PreparedStatement psmt = conn.prepareStatement(query);
	        psmt.setString(1, CategoryId);
	        return psmt.executeUpdate();
	        }
	        else {
	             return 0;
	         }
	        }catch (Exception e) {
	        e.printStackTrace();
	        }
	        
	        return 0;
	        }
		public List<Products> SearchList(String Word) {
	        List<Products> r = new ArrayList<Products>();
	        try {
	        //Class.forName("com.mysql.jdbc.Driver");
	        Connection conn=ConnectionString.getCon();  
	        String query = "SELECT * FROM products WHERE ProductName LIKE ?";

            PreparedStatement psmt = conn.prepareStatement(query);
            psmt.setString(1, "%" + Word + "%");
	        ResultSet rs = psmt.executeQuery();
	        
	       while (rs.next()) {
	    	   Products reh = new Products(rs.getInt("ProductId"), rs.getString("ProductName"),rs.getInt("CategoryId"),rs.getInt("Piece"),rs.getFloat("Price"),rs.getString("Description"),rs.getString("ImageFolder"),rs.getBoolean("Editing"));

	        r.add(reh);
	        }
	        
	       } catch (Exception e) {
	        e.printStackTrace();
	        }
	        return r;
	        }
		 public int AnyPiece(Products prd,int UserId) {
			 Products r = null;
			 int state=0;
			 try {
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn=ConnectionString.getCon();    	
			 
			String query = "Select * from products where ProductId=? AND Piece>=?";
			 PreparedStatement psmt = conn.prepareStatement(query);
			 psmt.setInt(1, prd.getProductId());
			 psmt.setInt(2, prd.getPiece());
			 ResultSet rs = psmt.executeQuery();
			 
			while (rs.next()) {
		     state=1;
			 //r = new Products(rs.getInt("ProductId"), rs.getString("ProductName"),rs.getInt("CategoryId"),rs.getInt("Piece")-prd.getPiece(),rs.getFloat("Price"),rs.getString("Description"),rs.getString("ImageFolder"),rs.getBoolean("Editing"));
			 //UpdateProducts(r);
			 Baskets b= new Baskets();
			 b.setUserId(UserId);
			 b.setProducts_ProductId(prd.getProductId());
			 b.setPiece(prd.getPiece());
			 b.setIsBasketing(true);
			 state=BasketsCRUD.GetById(b);
			 }
			 
			} catch (Exception e) {
			 e.printStackTrace();
			 }
			 return state;
			 }
		 public static int ControlPiece(Products prd,int UserId,String ordnum) {
			 Products r = null;
			 int state=0;
			 try {
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection conn=ConnectionString.getCon();    	
			 
			String query = "Select * from products where ProductId=? AND Piece>=?";
			 PreparedStatement psmt = conn.prepareStatement(query);
			 psmt.setInt(1, prd.getProductId());
			 psmt.setInt(2, prd.getPiece());
			 ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
		     state=1;
			 r = new Products(rs.getInt("ProductId"), rs.getString("ProductName"),rs.getInt("CategoryId"),rs.getInt("Piece")-prd.getPiece(),rs.getFloat("Price"),rs.getString("Description"),rs.getString("ImageFolder"),rs.getBoolean("Editing"));
			 UpdateProducts(r);
			 Baskets b= new Baskets();
			 b.setUserId(UserId);
			 b.setProducts_ProductId(prd.getProductId());
			 b.setPiece(prd.getPiece());
			 b.setIsBasketing(true);
			 Baskets c=BasketsCRUD.GetBasket(b);
			 Orders ord = new Orders();
			 ord.setBasketId(c.getBasketId());
			 ord.setOrdersNumber(ordnum);
			 LocalDateTime time = LocalDateTime.now();
	         DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	         String tm = dtf.format(time);
			 ord.setOrdersDate(tm);
			 ord.setTotalPrice(c.getPiece()*rs.getFloat("Price"));
			 state= OrdersCRUD.CreateOrders(ord);
			 
			 }
			 
			} catch (Exception e) {
			 e.printStackTrace();
			 }
			 return state;
			 }

}
