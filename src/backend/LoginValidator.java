package backend;

public class LoginValidator {
	private String _userName;
	private String _password;
	
	public LoginValidator(String _userName, String _password) {
		super();
		this._userName = _userName;
		this._password = _password;
	}
	
	public String Validate(){
		StringBuilder sb = new StringBuilder();
		
		if (_userName.length() <= 2){
			sb.append("User name too short" + "\n");
		}
		if (_password.length() <= 5){
			sb.append("Password too short" + "\n");
		}
		
		return sb.toString();
	}
}
