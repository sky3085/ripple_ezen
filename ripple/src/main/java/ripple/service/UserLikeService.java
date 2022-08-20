package ripple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ripple.bean.UserLikeDTO;
import ripple.repository.UserLikeRepository;

@Service
public class UserLikeService {

	@Autowired
	private UserLikeRepository userLikeRepository;
	
	public int userLikeInsert(UserLikeDTO dto) {
		return userLikeRepository.userLikeInsert(dto);
	};
	
	public List<UserLikeDTO> userLikeMatch(int titleid){
		return userLikeRepository.userLikeMatch(titleid);
	}
	
	public List<UserLikeDTO> userLikeList(String userid) {
		return userLikeRepository.userLikeList(userid);
	}
	
	public int userLikeDelete(UserLikeDTO dto) {
		return userLikeRepository.userLikeDelete(dto);
	}
}
