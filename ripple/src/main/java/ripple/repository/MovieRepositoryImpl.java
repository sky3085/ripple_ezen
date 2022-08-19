package ripple.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ripple.bean.MovieDTO;
<<<<<<< HEAD
import ripple.bean.MoviePreDTO;
=======
import ripple.bean.NewScore;
>>>>>>> f06a17d4d697bcbc967212fddfd5ff0de74dd661

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
<<<<<<< HEAD
	public MoviePreDTO moviepredict(String titleid) {
		MoviePreDTO moviepreDTO = sqlSessionTemplate.selectOne("mybatis.movieMapper.moviepredict", titleid);
		return moviepreDTO;
	}
=======
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

>>>>>>> f06a17d4d697bcbc967212fddfd5ff0de74dd661
}
