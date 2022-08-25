package ripple.repository;

import java.util.List;

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

	@Override
	public List<UserLikeDTO> userLikeMatch(int titleid) {
		return sqlSessionTemplate.selectList("mybatis.userLikeMapper.userLikeMatch", titleid);
	}

	@Override
	public List<UserLikeDTO> userLikeList(String userid) {
		return sqlSessionTemplate.selectList("mybatis.userLikeMapper.userLikeList", userid);
	}

	@Override
	public int userLikeDelete(UserLikeDTO dto) {
		return sqlSessionTemplate.insert("mybatis.userLikeMapper.userLikeDelete", dto);
	}
	
	
	

}
