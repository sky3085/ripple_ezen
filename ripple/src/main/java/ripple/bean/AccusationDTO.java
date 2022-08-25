package ripple.bean;

//신고댓글 테이블
public class AccusationDTO {
	private int seq;//고유번호
	private String writer;//댓글 작성자
	private String accuser;//댓글 신고자
	private String contents;//댓글 내용
	private int score;//댓글에 있는 영화 점수
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
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
	
}
