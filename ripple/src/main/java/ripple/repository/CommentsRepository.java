package ripple.repository;

import java.util.List;

import ripple.bean.CommentsDTO;

public interface CommentsRepository {
	//해당 영화의 모든 댓글을 가져오는 메소드
	public List<CommentsDTO> commentsSelect(Integer titleid);
	
	//댓글 삽입 메소드
	public int commentsInsert(CommentsDTO dto);
	
	//해당 ID가 같은 영화에 중복해서 점수를 주지 못하게 하기 위한 메소드
	public List<CommentsDTO> commentsCheck(CommentsDTO dto);
}
