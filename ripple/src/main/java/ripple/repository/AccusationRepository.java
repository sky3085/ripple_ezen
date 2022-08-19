package ripple.repository;

import java.util.List;

import ripple.bean.AccusationDTO;

public interface AccusationRepository {
	public List<AccusationDTO> accusationSelect();
	public int commentsInsert(AccusationDTO dto);
}
