package ripple.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ripple.bean.MemberDTO;
import ripple.bean.PremovieDTO;

public interface AdminRepository {
	//
	public int adminWrite(MemberDTO dto);
	
	//
	public List<MemberDTO> adminList(int startNum, int endNum);
	
	//전체 회원수
	public int totalmember();
	
	//전체 신고수
	public int totalAccusation();
	
	//
	public List<PremovieDTO> movieList(int startNum, int endNum);
	
	//
	public int totalA();
}
