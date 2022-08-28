package ripple.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ripple.bean.MemberDTO;
import ripple.bean.PremovieDTO;

//관리자페이지
public interface AdminRepository {
	
	//회원가입 - 임의로 작성 -삭제가능
	public int adminWrite(MemberDTO dto);
	
	//회원 리스트를 가져오기 위한 메소드
	public List<MemberDTO> adminList(int startNum, int endNum);
	
	//전체 회원수
	public int totalmember();
	
	//전체 신고수
	public int totalAccusation();
	
	//개봉예정 영화 리스트 가져오기
	public List<PremovieDTO> movieList(int startNum, int endNum);
	
	//개봉예정 영화 전체 개수
	public int totalA();
}
