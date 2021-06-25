package Usercontroller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import Connection.ConnectionString;
import Productscontroller.Products;



public class UserCRUD {

	
	public static int EmailControl(String id) {
        int c = 0;
        try {
        //Class.forName("com.mysql.jdbc.Driver");
       	 Connection conn=ConnectionString.getCon();    
        String query = "Select * from users where Email=?";
        PreparedStatement psmt = conn.prepareStatement(query);
        psmt.setString(1, id);
        ResultSet rs = psmt.executeQuery();
        
        while (rs.next()) 
        {
        	c+=1;
        }       	
        
       } catch (Exception e) {
        e.printStackTrace();
        }
        return c;
        }
	public static int CreateUsers(Users u){  
	    int status=0;  
	    try{
	        int d = EmailControl(u.getEmail());    
	        if(d==0) {	
	        Connection con=ConnectionString.getCon();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into users(Email,Password,PasswordCreatedTime) values(?,?,?)");  
	        ps.setString(1,u.getEmail()); 
	        ps.setString(2,MD5Generator.Generator(u.getPassword()));
	        LocalDateTime time = LocalDateTime.now();
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            String tm = dtf.format(time);
            ps.setString(3, tm);
	        status=ps.executeUpdate(); 
	        }
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	public static int UserControl(Users u) {
        int c = 0;
        try {
        //Class.forName("com.mysql.jdbc.Driver");
       	 Connection conn=ConnectionString.getCon();    
        String query = "Select * from users where Email=? and Password=?";
        PreparedStatement psmt = conn.prepareStatement(query);
        psmt.setString(1, u.getEmail());
        psmt.setString(2, MD5Generator.Generator(u.getPassword()));
        ResultSet rs = psmt.executeQuery();
        
        while (rs.next()) 
        {
        	c=1;
        }       	
        
       } catch (Exception e) {
        e.printStackTrace();
        }
        return c;
        }
	 public static Users GetById(String id) {
		 Users r = null;
		 try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn=ConnectionString.getCon();    	
		 
		String query = "Select * from users where Email=?";
		 PreparedStatement psmt = conn.prepareStatement(query);
		 psmt.setString(1, id);
		 ResultSet rs = psmt.executeQuery();
		 
		while (rs.next()) {
		 r = new Users(rs.getInt("UserId"), rs.getString("UserName"),rs.getString("Email"),rs.getString("Password"),rs.getString("Adressing"),rs.getString("PhoneNumber"),rs.getString("PasswordCreatedTime"));
		 }
		 
		} catch (Exception e) {
		 e.printStackTrace();
		 }
		 return r;
		 }
	 
	 public static Users GetByUserId(int id) {
		 Users r = null;
		 try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn=ConnectionString.getCon();    	
		 
		String query = "Select * from users where UserId=?";
		 PreparedStatement psmt = conn.prepareStatement(query);
		 psmt.setInt(1, id);
		 ResultSet rs = psmt.executeQuery();
		 
		while (rs.next()) {
		 r = new Users(rs.getInt("UserId"), rs.getString("UserName"),rs.getString("Email"),rs.getString("Password"),rs.getString("Adressing"),rs.getString("PhoneNumber"),rs.getString("PasswordCreatedTime"));
		 }
		 
		} catch (Exception e) {
		 e.printStackTrace();
		 }
		 return r;
		 }
	 
	 public static int UpdateUsers(Users u) {
         try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=ConnectionString.getCon(); 
         PreparedStatement ps=con.prepareStatement(  
                        "UPDATE users SET Email=?,Password=?,Adressing=?,PhoneNumber=?,PasswordCreatedTime=? where UserId=?");
                       
         	ps.setString(1,u.getEmail()); 
            ps.setString(2,MD5Generator.Generator(u.getPassword())); 
            ps.setString(3,u.getAdressing());          
            ps.setString(4,u.getPhoneNumber());
	        LocalDateTime time = LocalDateTime.now();
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            String tm = dtf.format(time);
            ps.setString(5, tm);
            ps.setInt(6, Integer.valueOf(u.getUserId()));
         return ps.executeUpdate();
         
         }catch (Exception e) {
         e.printStackTrace();
         }
         
         return 0;
         }
	 
		public static int AdminControl(String Name,String Pw) {
	        int c = 0;
	        try {
	        //Class.forName("com.mysql.jdbc.Driver");
	       	 Connection conn=ConnectionString.getCon();    
	        String query = "Select * from admins where AdminName=? and Password=?";
	        PreparedStatement psmt = conn.prepareStatement(query);
	        psmt.setString(1, Name);
	        psmt.setString(2, MD5Generator.Generator(Pw));
	        ResultSet rs = psmt.executeQuery();
	        
	        while (rs.next()) 
	        {
	        	c=1;
	        }       	
	        
	       } catch (Exception e) {
	        e.printStackTrace();
	        }
	        return c;
	        }
}
