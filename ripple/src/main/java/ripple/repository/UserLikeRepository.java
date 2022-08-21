package ripple.repository;

import java.util.List;

import ripple.bean.UserLikeDTO;

public interface UserLikeRepository {
	public int userLikeInsert(UserLikeDTO dto);
	public int userLikeDelete(UserLikeDTO dto);
	public List<UserLikeDTO> userLikeMatch(int titleid);
	public List<UserLikeDTO> userLikeList(String userid);
}
