package ripple.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ripple.bean.MemberDTO;
import ripple.repository.MemberRepository;

@Service
public class MemberService {
	
	@Autowired
	private MemberRepository memberRepository;
	
	public MemberDTO login(String id, String pwd) {
		return memberRepository.login(id, pwd);
	}
	
	public int join(String id, String pwd, String email) {
		return memberRepository.join(id, pwd, email);
	}
}
