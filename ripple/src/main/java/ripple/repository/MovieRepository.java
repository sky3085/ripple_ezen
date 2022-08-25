package ripple.repository;

import java.util.List;
import ripple.bean.MovieDTO;
import ripple.bean.MoviePreDTO;

public interface MovieRepository {
	//영화 상세 정보를 보기 위한 메소드
	public MovieDTO movieView(String titleid);
	
	//영화 최순으로 가져오기 위한 메소드
	public List<MovieDTO> movieList(int startNum, int endNum);
	
	//영화 흥행 예측 순으로 정렬하기 위한 메소드
	public List<MovieDTO> movieListBoxOffice(int startNum, int endNum);
	
	//영화 검색시 필요한 메소드
	public List<MovieDTO> movieFind(String movieSearch);
	
	//영화 전체수를 알기위한 메소드
	public int getTotalA();
	
	//??
	public MoviePreDTO moviepredict(String titleid);
	
	//영화 점수에 참여자수 업데이트
	public int voteCountUpdate(int titleid);
	
	//영화 점수를 업데이트하기 위한 메소드
	public int voteScoreUpdate(double newScore, int titleid);
}
