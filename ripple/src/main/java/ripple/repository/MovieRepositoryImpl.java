package ripple.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ripple.bean.MovieDTO;
import ripple.bean.MoviePreDTO;
import ripple.bean.NewScore;

@Repository("movieRepository")
public class MovieRepositoryImpl implements MovieRepository {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public MovieDTO movieView(String titleid) {
		MovieDTO movieDTO = sqlSessionTemplate.selectOne("mybatis.movieMapper.movieView", titleid);
		return movieDTO;
	}

	@Override
	public List<MovieDTO> movieList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<MovieDTO> list =sqlSessionTemplate.selectList("mybatis.movieMapper.movieList", map);
		
		return list;
	}

	@Override
	public int getTotalA() {
		int result = sqlSessionTemplate.selectOne("mybatis.movieMapper.getTotalA");
		
		return result;
	}

	@Override
	public MoviePreDTO moviepredict(String titleid) {
		MoviePreDTO moviepreDTO = sqlSessionTemplate.selectOne("mybatis.movieMapper.moviepredict", titleid);
		return moviepreDTO;
	}

	@Override
	public int voteCountUpdate(int titleid) {
		return sqlSessionTemplate.update("mybatis.movieMapper.voteCountUpdate", titleid);
	}

	@Override
	public int voteScoreUpdate(double newScore, int titleid) {
		NewScore scoreUpdate = new NewScore();
		scoreUpdate.setNewScore(newScore);
		scoreUpdate.setTitleid(titleid);

		return sqlSessionTemplate.update("mybatis.movieMapper.voteScoreUpdate", scoreUpdate);
	}

}
