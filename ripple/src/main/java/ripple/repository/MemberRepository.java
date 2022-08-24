package ripple.repository;

import ripple.bean.MemberDTO;

public interface MemberRepository {
	
	public MemberDTO login(String id, String pwd);
	public int join(String id, String pwd, String email);
	
}
