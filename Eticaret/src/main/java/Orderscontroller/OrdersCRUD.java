package Orderscontroller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Basketscontroller.Baskets;
import Connection.ConnectionString;
import Productscontroller.Products;

public class OrdersCRUD {
		
	public static int CreateOrders(Orders u){  
	    int status=0;  
	    try{  
	        Connection con=ConnectionString.getCon();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into orders(BasketId,OrdersNumber,OrdersDate,TotalPrice) values(?,?,?,?)");  
	        ps.setInt(1,u.getBasketId());  
	        ps.setString(2,u.getOrdersNumber());  
	        ps.setString(3,u.getOrdersDate());  
	        ps.setFloat(4,u.getTotalPrice());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	public static  List<Orders> AllOrderList() {
        List<Orders> r = new ArrayList<Orders>();
        try {
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn=ConnectionString.getCon();  
        String query = "Select * from orders";
        PreparedStatement psmt = conn.prepareStatement(query);
        ResultSet rs = psmt.executeQuery();
        
       while (rs.next()) {
    	   Orders reh = new Orders(rs.getInt("OrdersId"),rs.getInt("BasketId"), rs.getString("OrdersNumber"),rs.getString("OrdersDate"),rs.getFloat("TotalPrice"));

        r.add(reh);
        }
        
       } catch (Exception e) {
        e.printStackTrace();
        }
        return r;
        }
}
