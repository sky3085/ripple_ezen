package ripple.bean;

//회원을 위한 DTO
public class MemberDTO {
	private int seq;//회원 고유 번호
	private String id;//회원 ID
	private String pwd;//회원 비밀번호
	private String email;//회원 이메일
	private String manager;//관리자 여부(1은 관리자, 0은 일반 사용자)
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pwd=" + pwd + ", email=" + email + "]";
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
