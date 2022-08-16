package ripple.repository;

public interface MemberRepository {
	
	public int login(String id, String pwd);
	public int join(String id, String pwd, String email);
	
}
