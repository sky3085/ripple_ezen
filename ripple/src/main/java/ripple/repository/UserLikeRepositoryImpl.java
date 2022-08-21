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

	//해당 영화를 좋아요한 모든 유저 리스트를 가져옵니다.-detail.jsp
	@Override
	public List<UserLikeDTO> userLikeMatch(int titleid) {
		return sqlSessionTemplate.selectList("mybatis.userLikeMapper.userLikeMatch", titleid);
	}

	//list.jsp - 로그인 유저의 좋아요 목록 가져오기
	@Override
	public List<UserLikeDTO> userLikeList(String userid) {
		return sqlSessionTemplate.selectList("mybatis.userLikeMapper.userLikeList", userid);
	}

	@Override
	public int userLikeDelete(UserLikeDTO dto) {
		return sqlSessionTemplate.insert("mybatis.userLikeMapper.userLikeDelete", dto);
	}
	
	
	

}
