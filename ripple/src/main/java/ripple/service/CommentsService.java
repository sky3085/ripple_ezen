package ripple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ripple.bean.CommentsDTO;
import ripple.repository.CommentsRepository;

@Service
public class CommentsService {

	@Autowired
	private CommentsRepository commentsRepository;
	
	public List<CommentsDTO> commentsSelect(Integer titleid) {
		return commentsRepository.commentsSelect(titleid);
	}
	
	
	public int commentsInsert(CommentsDTO dto) {
		return commentsRepository.commentsInsert(dto);
	}
	
	public List<CommentsDTO> commentsCheck(CommentsDTO dto) {
		return commentsRepository.commentsCheck(dto);
	}
}
