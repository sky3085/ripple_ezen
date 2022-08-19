package ripple.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ripple.bean.UserLikeDTO;

@Repository
public class UserLikeRepositoryImpl implements UserLikeRepository{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public int userLikeInsert(UserLikeDTO dto) {
		return sqlSessionTemplate.insert("mybatis.userLikeMapper.userLikeInsert", dto);
	}

}
