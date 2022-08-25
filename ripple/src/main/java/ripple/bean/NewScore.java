package ripple.bean;

//영화의 평점을 새로 업데이트하기 위한 DTO
public class NewScore {
	private double newScore;//새로운 점수
	private int titleid;//영화 고유 번호
	
	public double getNewScore() {
		return newScore;
	}
	public void setNewScore(double newScore) {
		this.newScore = newScore;
	}
	public int getTitleid() {
		return titleid;
	}
	public void setTitleid(int titleid) {
		this.titleid = titleid;
	}
	
}
