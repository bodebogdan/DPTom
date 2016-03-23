package backend;

import java.sql.*;

public class RegisterDAL {
	private String _firstName;
	private String _lastName;
	private String _email;
	private String _userName;
	private String _password;
	

	public RegisterDAL(String _firstName, String _lastName, String _email, String _userName, String _password) {
		super();
		this._firstName = _firstName;
		this._lastName = _lastName;
		this._email = _email;
		this._userName = _userName;
		this._password = _password;
	}
	
	public String RegisterUser(){
		Statement executor = new MySqlConnect().Connect();
		if (executor != null){
			ResultSet isAlready;
			try {
				isAlready = executor.executeQuery("select * from users where user_id='" + _userName + "'");
				if (isAlready.next()){
					return "Already registered";
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int returnCode;
				try {
					returnCode = executor.executeUpdate("insert into users(fname, lname, email, user_id, password) values ('" + _firstName + "','" + _lastName + "','" + _email + "','" + _userName + "','" + _password + "')");
				    if (returnCode > 0) {
				    	return "";
				    } else {
				        return "Something went wrong";
				    }
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		return "Connection refused to the database";
	}
}