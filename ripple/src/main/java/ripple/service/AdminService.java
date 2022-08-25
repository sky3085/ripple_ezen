package ripple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ripple.bean.MemberDTO;
import ripple.bean.PremovieDTO;
import ripple.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;

	public List<MemberDTO> adminList(int startNum, int endNum) {
		
		return adminRepository.adminList(startNum, endNum);
	}

	public int adminWrite(MemberDTO dto) {
		
		return adminRepository.adminWrite(dto);
	}

	public int totalmember() {
		return adminRepository.totalmember();
		
	}

	public int totalAccusation() {
		return adminRepository.totalAccusation();
	}
	
	public List<PremovieDTO> movieList(int startNum, int endNum) {
		return adminRepository.movieList(startNum, endNum);
	}
	
	public int totalA() {
		return adminRepository.totalA();
	}
}
