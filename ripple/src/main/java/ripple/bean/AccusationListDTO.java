package ripple.bean;

//신고댓글 테이블과 댓글 테이블을 조인하여 관리자페이지에서 볼 수 있는 신고댓글리스트
public class AccusationListDTO {
	private int accusation_seq; // 신고댓글번호
	private String writer; // 작성자
	private String accuser; // 신고자
	private String id; // 아이디
	private String contents;// 댓글 내용
	private int score; // 영화 점수
	private int seq; // 원글 번호
	
	public int getAccusation_seq() {
		return accusation_seq;
	}
	public void setAccusation_seq(int accusation_seq) {
		this.accusation_seq = accusation_seq;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getAccuser() {
		return accuser;
	}
	public void setAccuser(String accuser) {
		this.accuser = accuser;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
}
