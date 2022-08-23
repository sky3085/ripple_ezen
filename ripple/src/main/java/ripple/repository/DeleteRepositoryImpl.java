package ripple.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ripple.bean.AccusationDTO;
import ripple.bean.AccusationListDTO;
import ripple.bean.DeleteDTO;

@Repository("deleteRepository")
public class DeleteRepositoryImpl implements DeleteRepository {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//sql문
	//reply_delete insert
	public int replyWrite(DeleteDTO dto) {
		return sqlSession.insert("mybatis.deleteMapper.deleteWrite",dto);
	}
	// 신고 댓글 추가
	public int accusationWrite(AccusationDTO dto) {
		return sqlSession.insert("mybatis.deleteMapper.accusationWrite", dto);
		
	}

	// (추가) 신고 댓글 리스트 불러오기
	public List<AccusationListDTO> accusationList(int startNum, int endNum) {
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("startNum", startNum);
		map.put("endNum",endNum);
		return sqlSession.selectList("mybatis.deleteMapper.accusationList",map);
	}
	// (추가) 총 신고 댓글 갯수
	public int totalAccusation() {
		return sqlSession.selectOne("mybatis.deleteMapper.totalAccusation");
	}
	
	// 댓글 신고 (accusation = 1로 )
	public int updateAccusation(int seq) {
		return sqlSession.update("mybatis.deleteMapper.updateAccusation");
	}
	// 데이터 목록 불러오기
	public List<DeleteDTO> deleteList(int startNum, int endNum) {
		Map<String,Integer> map = new HashMap<String,Integer>();
		map.put("startNum", startNum);
		map.put("endNum",endNum);
		return sqlSession.selectList("mybatis.deleteMapper.deleteList",map);
	}
	
	// 총 신고 댓글 갯수
	public int totalmember() {
		return sqlSession.selectOne("mybatis.deleteMapper.totaldelete");
	}
		
	// 신고 댓글 삭제
	public int replyDelete(int seq) {
		return sqlSession.delete("mybatis.deleteMapper.replyDelete",seq);
				
	}
		
}
