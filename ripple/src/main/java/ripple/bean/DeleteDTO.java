package ripple.bean;

public class DeleteDTO {
	private int seq;		//글번호
	private String id;		//아이디
	private int titleid;	//영화 타이틀값	
	private String contents;//댓글 내용
	private int score;		//영화 점수
	private int level;		//댓글 레벨
	private int original_seq;//
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getTitleid() {
		return titleid;
	}
	public void setTitleid(int titleid) {
		this.titleid = titleid;
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
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getOriginal_seq() {
		return original_seq;
	}
	public void setOriginal_seq(int original_seq) {
		this.original_seq = original_seq;
	}
	
}
