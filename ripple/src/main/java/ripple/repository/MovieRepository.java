package ripple.repository;

import java.util.List;
import ripple.bean.MovieDTO;
import ripple.bean.MoviePreDTO;

public interface MovieRepository {
	public MovieDTO movieView(String titleid);
	public List<MovieDTO> movieList(int startNum, int endNum);
	public List<MovieDTO> movieListBoxOffice(int startNum, int endNum);
	public List<MovieDTO> movieFind(String movieSearch);
	public int getTotalA();
	public MoviePreDTO moviepredict(String titleid);
	public int voteCountUpdate(int titleid);
	public int voteScoreUpdate(double newScore, int titleid);
}
