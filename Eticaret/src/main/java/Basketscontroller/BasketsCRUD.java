package Basketscontroller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectionString;
import Productscontroller.Products;



public class BasketsCRUD {
	
	 public static int UpdateBaskets(Baskets u) {
         try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=ConnectionString.getCon(); 
         PreparedStatement ps=con.prepareStatement(  
          "UPDATE baskets SET Piece=?  where Products_ProductId=? and UserId=?");                        
         	ps.setInt(1,u.getPiece()); 
            ps.setInt(2,u.getProducts_ProductId());  
            ps.setInt(3,u.getUserId()); 
         return ps.executeUpdate();
         
         }catch (Exception e) {
         e.printStackTrace();
         }
         return 0;
	 }
         
    	 public static int BasketsInOrder(Baskets u) {
             try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=ConnectionString.getCon(); 
             PreparedStatement ps=con.prepareStatement(  
              "UPDATE baskets SET IsBasketing=?  where Products_ProductId=? and UserId=?");                        
             	ps.setBoolean(1,false); 
                ps.setInt(2,u.getProducts_ProductId());  
                ps.setInt(3,u.getUserId()); 
             return ps.executeUpdate();
             
             }catch (Exception e) {
             e.printStackTrace();
             }      
         return 0;
         }
    	 
		public static int AddBaskets(Baskets u){  
		    int status=0;  
		    try{  
		        Connection con=ConnectionString.getCon();  
		        PreparedStatement ps=con.prepareStatement(  
		"insert into baskets(UserId,ProductsId,Products_ProductId,Piece,IsBasketing) values(?,?,?,?,?)");  
		        ps.setInt(1,u.getUserId());  
		        ps.setInt(2,0);  
		        ps.setInt(3,u.getProducts_ProductId());  
		        ps.setInt(4,u.getPiece());  
		        ps.setBoolean(5,u.isIsBasketing());  
		        status=ps.executeUpdate();  
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}
	 public static int GetById(Baskets u) {
		 Baskets r = null;
		 int st=0;
		 try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn=ConnectionString.getCon();    	
		 
		String query = "Select * from baskets where Products_ProductId=? and UserId=? and IsBasketing=?";
		 PreparedStatement psmt = conn.prepareStatement(query);
		 psmt.setInt(1, u.getProducts_ProductId());
		 psmt.setInt(2, u.getUserId());
		 psmt.setBoolean(3, true);
		 ResultSet rs = psmt.executeQuery();
		 
		while (rs.next()) {
	     st=1;
		 r = new Baskets(rs.getInt("BasketId"), rs.getInt("UserId"), rs.getInt("Products_ProductId"),rs.getInt("Piece")+u.getPiece(),rs.getBoolean("IsBasketing"));
		 UpdateBaskets(r);
		 }
		 
		} catch (Exception e) {
		 e.printStackTrace();
		 }
		 if(st==0)
		 {
			 AddBaskets(u);
			 st=1;
		 }
		 return st;
		 }
	 	
	 public static Baskets  GetBasket(Baskets u) {
		 Baskets r = null;
		 int st=0;
		 try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn=ConnectionString.getCon();    	
		 
		String query = "Select * from baskets where Products_ProductId=? and UserId=?";
		 PreparedStatement psmt = conn.prepareStatement(query);
		 psmt.setInt(1, u.getProducts_ProductId());
		 psmt.setInt(2, u.getUserId());
		 ResultSet rs = psmt.executeQuery();
		 
		while (rs.next()) {
	     st=1;
		 r = new Baskets(rs.getInt("BasketId"), rs.getInt("UserId"), rs.getInt("Products_ProductId"),rs.getInt("Piece"),rs.getBoolean("IsBasketing"));
		 BasketsInOrder(r);
		 }
		 
		} catch (Exception e) {
		 e.printStackTrace();
		 }		
		 return r;
		 }
	 
		public int BasketDelete(String BasketId) {
	        try {

	        Class.forName("com.mysql.jdbc.Driver");
	        Connection conn=ConnectionString.getCon();           
	       String query = "DELETE FROM baskets where BasketId=?";
	        
	        PreparedStatement psmt = conn.prepareStatement(query);
	        psmt.setString(1, BasketId);
	        return psmt.executeUpdate();	        	        
	        }catch (Exception e) {
	        e.printStackTrace();
	        }
	        
	        return 0;
	        }	
		
	public static List<Baskets> AllBasketList(int id) {
        List<Baskets> r = new ArrayList<Baskets>();
        try {
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn=ConnectionString.getCon();  
        String query = "Select * from baskets where UserId=?";
        PreparedStatement psmt = conn.prepareStatement(query);
        psmt.setInt(1,id);
        ResultSet rs = psmt.executeQuery();
        
       while (rs.next()) {
    	   Baskets reh = new Baskets(rs.getInt("BasketId"), rs.getInt("ProductsId"),rs.getInt("Products_ProductId"),rs.getInt("Piece"),rs.getBoolean("IsBasketing"));

        r.add(reh);
        }
        
       } catch (Exception e) {
        e.printStackTrace();
        }
        return r;
        }
}
