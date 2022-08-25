package ripple.repository;

import java.util.List;

import ripple.bean.UserLikeDTO;

public interface UserLikeRepository {
	//좋아요 버튼 작동을 위한 메소드
	public int userLikeInsert(UserLikeDTO dto);
	
	//좋아요(취소) 버튼 작동을 위한 메소드
	public int userLikeDelete(UserLikeDTO dto);
	
	//해당 영화를 좋아요한 모든 유저 리스트를 가져옵니다.-detail.jsp
	public List<UserLikeDTO> userLikeMatch(int titleid);
	
	//list.jsp - 로그인 유저의 좋아요 목록 가져오기
	public List<UserLikeDTO> userLikeList(String userid);
}
