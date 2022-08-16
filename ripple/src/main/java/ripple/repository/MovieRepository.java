package ripple.repository;

import java.util.List;
import ripple.bean.MovieDTO;

public interface MovieRepository {
	public MovieDTO movieView(String titleid);
	public List<MovieDTO> movieList(int startNum, int endNum);
	public int getTotalA();
}
