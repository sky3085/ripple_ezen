package ripple.repository;

import java.util.List;

import ripple.bean.AccusationDTO;
import ripple.bean.AccusationListDTO;
import ripple.bean.DeleteDTO;

public interface DeleteRepository {
	
	public int replyWrite(DeleteDTO dto);
	public int accusationWrite(AccusationDTO dto);
	public List<AccusationListDTO> accusationList(int startNum, int endNum);
	public int totalAccusation();
	public int updateAccusation(int seq);
	public List<DeleteDTO> deleteList(int startNum, int endNum);
	public int totalmember();
	public int replyDelete(int seq);
}
