package ripple.repository;

import java.util.List;

import ripple.bean.MovieDTO;

public interface MypageRepository {
	//
	public List<MovieDTO> mypageList(String startNum, String endNum, String userid);
	
	//
	public int getTotalA(String userid);
}
