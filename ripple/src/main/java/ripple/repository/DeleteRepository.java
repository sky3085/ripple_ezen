package ripple.repository;

import java.util.List;

import ripple.bean.AccusationDTO;
import ripple.bean.AccusationListDTO;
import ripple.bean.DeleteDTO;

public interface DeleteRepository {
	//리뷰 댓글 작성 - 임의작성 - 삭제가능
	public int replyWrite(DeleteDTO dto);
	
	//댓글 신고 - 임의작성 - 삭제가능
	public int accusationWrite(AccusationDTO dto);
	
	//신고 댓글 리스트 불러오기
	public List<AccusationListDTO> accusationList(int startNum, int endNum);
	
	//총 신고된 댓글 수
	public int totalAccusation();
	
	//댓글 신고 업데이트 - 임의 작성 - 삭제가능
	public int updateAccusation(int seq);
	
	//accusationList랑 같은 기능 - 삭제 가능
	public List<DeleteDTO> deleteList(int startNum, int endNum);
	
	//총 회원 수
	public int totalmember();
	
	//신고된 댓글 삭제
	public int replyDelete(int seq);
}
