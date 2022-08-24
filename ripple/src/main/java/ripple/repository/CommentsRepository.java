package ripple.repository;

import java.util.List;

import ripple.bean.CommentsDTO;

public interface CommentsRepository {
	public List<CommentsDTO> commentsSelect(Integer titleid);
	public int commentsInsert(CommentsDTO dto);
	public List<CommentsDTO> commentsCheck(CommentsDTO dto);
}
