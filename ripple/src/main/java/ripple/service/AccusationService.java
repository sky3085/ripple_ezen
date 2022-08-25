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

	public int accusationInsert(AccusationDTO dto) {
		return accusationRepository.accusationInsert(dto);
	}
	
	public List<AccusationDTO> accusationSelectCK(AccusationDTO dto) {
		return accusationRepository.accusationSelectCK(dto);
	}
	
}
