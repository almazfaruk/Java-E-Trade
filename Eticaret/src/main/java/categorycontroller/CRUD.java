package categorycontroller;
import Connection.ConnectionString;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;
public class CRUD {

	public static int SetCategory(Categories u){  
	    int status=0;  
	    try{  
	        Connection con=ConnectionString.getCon();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into categories(CategoryName) values(?)");  
	        ps.setString(1,u.getCategoryName());  
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	public List<Categories> AllCategoryList() {
        List<Categories> r = new ArrayList<Categories>();
        try {
        //Class.forName("com.mysql.jdbc.Driver");
        Connection conn=ConnectionString.getCon();  
        String query = "Select * from categories";
        PreparedStatement psmt = conn.prepareStatement(query);
        ResultSet rs = psmt.executeQuery();
        
       while (rs.next()) {
    	   Categories reh = new Categories(rs.getInt("CategoryId"), rs.getString("CategoryName"));

        r.add(reh);
        }
        
       } catch (Exception e) {
        e.printStackTrace();
        }
        return r;
        }
	
	public int CategoryDelete(String CategoryId) {
        try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=ConnectionString.getCon();           
       String query = "DELETE FROM categories where CategoryId=?";
        
        PreparedStatement psmt = conn.prepareStatement(query);
        psmt.setString(1, CategoryId);
        return psmt.executeUpdate();
        
        }catch (Exception e) {
        e.printStackTrace();
        }
        
        return 0;
        }
	
	 public int CategoryEdit(String CategoryId, String CategoryName) {
	 try {
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn=ConnectionString.getCon();  		 
	 String query = "UPDATE categories SET CategoryName=? where CategoryId=?";
	 
	 PreparedStatement psmt = conn.prepareStatement(query);
	 psmt.setString(2,CategoryId);
	 psmt.setString(1, CategoryName);
	 return psmt.executeUpdate();
	 
	 }catch (Exception e) {
	 e.printStackTrace();
	 }
	 
	 return 0;
	 }
	 public Categories GetById(int id) {
		 Categories r = null;
		 try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection conn=ConnectionString.getCon();    	
		 
		String query = "Select * from categories where CategoryId=?";
		 PreparedStatement psmt = conn.prepareStatement(query);
		 psmt.setInt(1, id);
		 ResultSet rs = psmt.executeQuery();
		 
		while (rs.next()) {
		 r = new Categories(rs.getInt("CategoryId"), rs.getString("CategoryName"));
		 }
		 
		} catch (Exception e) {
		 e.printStackTrace();
		 }
		 return r;
		 }
}