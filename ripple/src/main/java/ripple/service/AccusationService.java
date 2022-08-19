package ripple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ripple.bean.AccusationDTO;
import ripple.repository.AccusationRepository;

@Service
public class AccusationService {

	@Autowired
	private AccusationRepository accusationRepository;
	
	public List<AccusationDTO> accusationSelect() {
		return null;
	}

	public int commentsInsert(AccusationDTO dto) {
		return accusationRepository.commentsInsert(dto);
	}
	
}
