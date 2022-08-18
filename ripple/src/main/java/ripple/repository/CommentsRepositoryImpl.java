package ripple.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ripple.bean.CommentsDTO;

@Repository
public class CommentsRepositoryImpl implements CommentsRepository {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<CommentsDTO> commentsSelect(Integer titleid) {
		return sqlSession.selectList("mybatis.commentsMapper.commentsSelect", titleid);
	}

	@Override
	public int commentsInsert(CommentsDTO dto) {
		int result = sqlSession.insert("mybatis.commentsMapper.commentsInsert", dto);
		return result;
	}
	
	
	
}
