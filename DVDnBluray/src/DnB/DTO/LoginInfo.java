package DnB.DTO;

// 4,5,6
// 7,8,9
// 10,11,12

public class LoginInfo {
	
	public boolean isLogin = false;
	public String id = "";
	public String pw = "";
	public boolean isLogin() {
		return isLogin;
	}
	public void setLogin(boolean isLogin) {
		this.isLogin = isLogin;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	
}