package ripple.service;

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
}
