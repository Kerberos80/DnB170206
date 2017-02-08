package member.service;

// 회원가입 정보 DTO
public class MemberJoinDTO {	
	
	private String name; // 이름
	private String id; // 아이디
	private String password; // 비밀번호
	private int firstSSN; // 주민등록번호(Social Security Number) 앞 6자리
	private int secondSSN; // 주민등록번호(Social Security Number) 뒤 8자리
	private String phone; // 연락처
	private String email; // 이메일
	private String address; // 주소
	
	// 생성자
	public MemberJoinDTO() { }
	
	public MemberJoinDTO(String name, String id, String password, int firstSSN, int secondSSN, String phone,
			String email, String address) {
		super();
		this.name = name;
		this.id = id;
		this.password = password;
		this.firstSSN = firstSSN;
		this.secondSSN = secondSSN;
		this.phone = phone;
		this.email = email;
		this.address = address;
	}

	// 게터, 세터
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }

	public String getId() { return id; }
	public void setId(String id) { this.id = id; }

	public String getPassword() { return password; }
	public void setPassword(String password) { this.password = password; 	}

	public int getFirstSSN() { return firstSSN; }
	public void setFirstSSN(int firstSSN) { this.firstSSN = firstSSN; }

	public int getSecondSSN() { return secondSSN; }
	public void setSecondSSN(int secondSSN) { this.secondSSN = secondSSN; }

	public String getPhone() { return phone; }
	public void setPhone(String phone) { this.phone = phone; }

	public String getEmail() { return email; }
	public void setEmail(String email) { this.email = email; }

	public String getAddress() { return address; }
	public void setAddress(String address) { this.address = address; }	

}