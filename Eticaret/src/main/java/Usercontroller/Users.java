package Usercontroller;

public class Users {

	private int UserId;
	private String UserName;
	private String Email;
	private String Password;
	private String Adressing;
	private String PhoneNumber;
	private String PasswordCreatedTime;
	public int getUserId() {
		return UserId;
	}
	public Users()
	{
		
	}
	public Users(int userId, String userName, String email, String password, String adressing, String phoneNumber,
			String passwordCreatedTime) {
		super();
		UserId = userId;
		UserName = userName;
		Email = email;
		Password = password;
		Adressing = adressing;
		PhoneNumber = phoneNumber;
		PasswordCreatedTime = passwordCreatedTime;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getAdressing() {
		return Adressing;
	}
	public void setAdressing(String adressing) {
		Adressing = adressing;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getPasswordCreatedTime() {
		return PasswordCreatedTime;
	}
	public void setPasswordCreatedTime(String passwordCreatedTime) {
		PasswordCreatedTime = passwordCreatedTime;
	}
}
