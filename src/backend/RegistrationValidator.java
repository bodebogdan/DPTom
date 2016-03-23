package backend;

public class RegistrationValidator {
	private String _firstName;
	private String _lastName;
	private String _userName;
	private String _password;
	private String _email;
	
	public RegistrationValidator(String _firstName, String _lastName,
								 String _email, String _userName,
								 String _password){
		this._firstName = _firstName;
		this._lastName = _lastName;
		this._userName = _userName;
		this._password = _password;
		this._email = _email;
	}
	/*
	 * Returns a string with errors on all fields on post method
	 * If there is no error string is empty;
	 */
	public String ValidateFields(){
		
		StringBuilder errorMessages = new StringBuilder();
		if (_firstName.length() <= 1){
			errorMessages.append("First name is too short" + "\n");
		}
		if (_lastName.length() <= 1){
			errorMessages.append("{Last name is too short" + "\n");
		}
		if (_email.contains("@") == false){
			errorMessages.append("Invalid email format" + "\n");
		}
		if (_userName.length() <= 2){
			errorMessages.append("User name is too short" + "\n");
		}
		if (_password.length() <= 5){
			errorMessages.append("Password must have at least 6 characters" + "\n");
		}
		
		return errorMessages.toString();
	}
}
