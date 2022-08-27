package ripple.bean;

//개봉예정 영화 - 관리자 페이지의 영화 흥행 예측페이지
public class PremovieDTO {
	private String poster_path;//포스터 링크
	private String genres;//장르
	private String director;//감독
	private String maincharactor;//출연진
	private String introduction;//설명
	private int maincharactorID;//출연진 ID - 머신러닝에서 사용하기 위한 값
	private int directorID;//감독 ID - 머신러닝에서 사용하기 위한 값
	private double predict;//머신러닝으로 예상한 영화 흥행 예측 값
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
