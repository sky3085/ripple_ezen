package ripple.bean;

//영화 좋아요에 필요한 DTO
public class UserLikeDTO {
	private int titleid;//영화 고유 번호
	private String userid;//사용자
	
	public int getTitleid() {
		return titleid;
	}
	public void setTitleid(int titleid) {
		this.titleid = titleid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
}
