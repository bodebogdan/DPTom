package backend;

import java.sql.*;

public class LoginDAL {
	private String _username;
	private String _password;
	public LoginDAL(String _username, String _password) {
		super();
		this._username = _username;
		this._password = _password;
	}
	
	public String LoginUser(){
		Statement executor = new MySqlConnect().Connect();
		if (executor != null){
			try {
				ResultSet rsCheckUser = executor.executeQuery(
						"select * from users where user_id='" + _username + "'");
				
				if (rsCheckUser.next()){
					try {
						ResultSet rsCheckPass = executor.
								executeQuery(
										"select * from users where user_id='" + _username + "' and password='" + _password + "'");
						if (rsCheckPass.next()){
							return "";
						}
						else{
							return "Incorrect password";
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				else{
					return "Register";
				}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		
		return "Connection refused to the database";
	}
}
