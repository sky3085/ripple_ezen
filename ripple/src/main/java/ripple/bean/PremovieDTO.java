package ripple.bean;

public class PremovieDTO {
	private String poster_path;
	private String genres;
	private String director;
	private String maincharactor;
	private String introduction;
	private int maincharactorID;
	private int directorID;
	private double predict;
	@Override
	public String toString() {
		return "premovieDTO [poster_path=" + poster_path + ", genres=" + genres + ", director=" + director
				+ ", maincharactor=" + maincharactor + ", introduction=" + introduction + ", maincharactorID="
				+ maincharactorID + ", directorID=" + directorID + ", predict=" + predict + "]";
	}
	public String getPoster_path() {
		return poster_path;
	}
	public void setPoster_path(String poster_path) {
		this.poster_path = poster_path;
	}
	public String getGenres() {
		return genres;
	}
	public void setGenres(String genres) {
		this.genres = genres;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getMaincharactor() {
		return maincharactor;
	}
	public void setMaincharactor(String maincharactor) {
		this.maincharactor = maincharactor;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public int getMaincharactorID() {
		return maincharactorID;
	}
	public void setMaincharactorID(int maincharactorID) {
		this.maincharactorID = maincharactorID;
	}
	public int getDirectorID() {
		return directorID;
	}
	public void setDirectorID(int directorID) {
		this.directorID = directorID;
	}
	public double getPredict() {
		return predict;
	}
	public void setPredict(double predict) {
		this.predict = predict;
	}
}
