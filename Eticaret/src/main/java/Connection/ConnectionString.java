package Connection;

import java.sql.*;

public class ConnectionString {
	public static Connection getCon() {
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/mycontext?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","1234");
            
            return con;
            
        } catch (Exception e) {
            System.out.print(e);
            System.out.print("Baglanamadi");
            return null;
        }
        
    }

}
