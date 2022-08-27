package ripple.bean;

//MoviePre Table - 
public class MoviePreDTO {
	private String titleid;//영화 id값
	private int vote_weight;//투표 가중치 - 영화정보로 흥행 예측에 쓰이는 값
	private double predict;//머신러닝으로 예상한 영화 흥행 예측 값
	
	@Override
	public String toString() {
		return "MoviePreDTO [titleid=" + titleid + ", vote_weight=" + vote_weight + ", predict=" + predict + "]";
	}
	public String getTitleid() {
		return titleid;
	}
	public void setTitleid(String titleid) {
		this.titleid = titleid;
	}
	public int getVote_weight() {
		return vote_weight;
	}
	public void setVote_weight(int vote_weight) {
		this.vote_weight = vote_weight;
	}
	public double getPredict() {
		return predict;
	}
	public void setPredict(double predict) {
		this.predict = predict;
	}
}
