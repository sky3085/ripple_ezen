package ripple.bean;

//댓글 테이블
public class CommentsDTO {
    private int seq;//고유 번호
    private String id;//로그인 된 ID
    private int titleid;//영화 고유번호
    private String contents;//댓글 내용
    private int score;//점수
    private int level;//레벨 1이면 점수를 포함한 원댓글, 2이면 원댓글의 댓글
    private int original_seq;//level2이면 원댓글의 고유 번호
    
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
