package ripple.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ripple.bean.AccusationDTO;

@Repository
public class AccusationRepositoryImpl implements AccusationRepository{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int accusationInsert(AccusationDTO dto) {
		return sqlSession.insert("mybatis.accusationMapper.accusationInsert", dto);
	}

	@Override
	public List<AccusationDTO> accusationSelectCK(AccusationDTO dto) {
		return sqlSession.selectList("mybatis.accusationMapper.accusationSelectCK", dto);
	}
	

}
