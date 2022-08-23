package ripple.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ripple.bean.MemberDTO;

@Repository("adminRepository")
public class AdminRepositoryImpl implements AdminRepository {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	// SQL 문
	// admin_member insert
	@Override
	public int adminWrite(MemberDTO dto) {
		return sqlSession.insert("mybatis.adminMapper.adminWrite",dto);
	
	}
	
	// 데이터 목록 불러오기
	@Override
	public List<MemberDTO> adminList(int startNum, int endNum) {
		Map<String,Integer> map= new HashMap<String,Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sqlSession.selectList("mybatis.adminMapper.adminList",map);
	}
	
	// 총 회원 수
	@Override
	public int totalmember() {
		return sqlSession.selectOne("mybatis.adminMapper.totalmember");
	}
	
	// 총 신고수
	@Override
	public int totalAccusation() {
		return sqlSession.selectOne("mybatis.adminMapper.totalAccusation");
	}
}
