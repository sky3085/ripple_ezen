package ripple.repository;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ripple.bean.MemberDTO;

@Repository("memberRepository")
public class MemberRepositoryImpl implements MemberRepository {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int login(String id, String pwd) {
		int result = 0;
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		
		MemberDTO dto = sqlSession.selectOne("mybatis.memberMapper.login", map);
		
		if(dto.getId() != null) {
			result = 1;
		}
		
		return result;
	}

	@Override
	public int join(String id, String pwd, String email) {
		int result = 0;
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pwd", pwd);
		map.put("email", email);
		
		result = sqlSession.insert("mybatis.memberMapper.join", map);
		
		return result;
	}
	
}
