package ripple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ripple.bean.AccusationDTO;
import ripple.bean.AccusationListDTO;
import ripple.bean.DeleteDTO;
import ripple.repository.DeleteRepository;

@Service
public class DeleteService {
	@Autowired
	private DeleteRepository deleteRepository;
	
	public int replyWrite(DeleteDTO dto) {
		return deleteRepository.replyWrite(dto);
	}
	
	public List<DeleteDTO> deleteList(int startNum, int endNum) {
	
		return deleteRepository.deleteList(startNum, endNum);
	}

	public int totalmember() {
		return deleteRepository.totalmember();
	}

	public int replyDelete(int seq) {
		return deleteRepository.replyDelete(seq);
	}

	public int updateAccusation(int seq) {
		return deleteRepository.updateAccusation(seq);
	}

	public int accusationWrite(AccusationDTO dto) {
		return deleteRepository.accusationWrite(dto);
	}

	public List<AccusationListDTO> accusationList(int startNum, int endNum) {
	
		return deleteRepository.accusationList(startNum, endNum);
	}

	public int totalAccusaton() {
		return deleteRepository.totalAccusation();
	}
}
