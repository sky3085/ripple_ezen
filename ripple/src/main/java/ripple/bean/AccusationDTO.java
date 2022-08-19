package ripple.bean;

public class AccusationDTO {
	private int seq;
	private String writer;
	private String accuser;
	private String contents;
	private int score;
	
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
