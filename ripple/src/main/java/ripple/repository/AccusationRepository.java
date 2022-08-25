package ripple.repository;

import java.util.List;

import ripple.bean.AccusationDTO;

//신고테이블과 관련 있는 저장소
public interface AccusationRepository {
	//한 ID로 같은 댓글을 신고했을때 체크하기위한 메소드
	public List<AccusationDTO> accusationSelectCK(AccusationDTO dto);
	
	//신고 댓글 삽입 
	public int accusationInsert(AccusationDTO dto);
}
