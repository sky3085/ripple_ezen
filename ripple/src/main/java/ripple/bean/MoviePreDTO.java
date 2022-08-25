package ripple.bean;

//
public class MoviePreDTO {
	private String titleid;
	private int vote_weight;
	private double predict;
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
