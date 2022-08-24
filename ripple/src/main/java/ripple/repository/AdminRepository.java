package ripple.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ripple.bean.MemberDTO;

public interface AdminRepository {
	public int adminWrite(MemberDTO dto);
	public List<MemberDTO> adminList(int startNum, int endNum);
	public int totalmember();
	public int totalAccusation();
}
