package backend;

import java.sql.*;
public class MySqlConnect {
	public Statement Connect(){
		Statement st = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection con;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root123");
			st = con.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return st;
	}
}
