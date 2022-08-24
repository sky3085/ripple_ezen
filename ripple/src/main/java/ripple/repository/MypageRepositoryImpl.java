package ripple.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ripple.bean.MovieDTO;

@Repository("mypageRepository")
public class MypageRepositoryImpl implements MypageRepository{
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<MovieDTO> mypageList(String startNum, String endNum, String userid) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("userid", userid);
		return sqlSessionTemplate.selectList("mybatis.mypageMapper.mypageList", map);
	}
	
	@Override
	public int getTotalA(String userid) {
		return sqlSessionTemplate.selectOne("mybatis.mypageMapper.getTotalA", userid);
	}
}
