package dto;

public class Account {
	private int id;
	private String name;
	private String mail;
	private String salt;
	private String hashedPw;
	public Account(int id, String name, String mail, String salt, String hashedPw) {
		super();
		this.id = id;
		this.name = name;
		this.mail = mail;
		this.salt = salt;
		this.hashedPw = hashedPw;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getHashedPw() {
		return hashedPw;
	}
	public void setHashedPw(String hashedPw) {
		this.hashedPw = hashedPw;
	}
	
}
