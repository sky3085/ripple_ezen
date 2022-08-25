package ripple.repository;

import ripple.bean.MemberDTO;

public interface MemberRepository {
	//로그인 하기위한 메소드
	public MemberDTO login(String id, String pwd);
	
	//회원가입을 위한 메소드
	public int join(String id, String pwd, String email);
	
}
