package ripple.repository;

import java.util.List;

import ripple.bean.MovieDTO;

public interface MypageRepository {
	//해당 아이디가 '좋아요' 누른 영화 리스트
	public List<MovieDTO> mypageList(String startNum, String endNum, String userid);
	
	//좋아요 누른 영화의 총 개수
	public int getTotalA(String userid);
}
