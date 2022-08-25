package ripple.bean;

//영화 상세정보를 볼 수 있는 DTO
public class MovieDTO {
	private String titleid;//영화 고유 번호
	private String title;//영화 제목
	private String poster_path;//영화 포스터 경로
	private String release_date;//개봉일
	private String budget;//예산
	private String genres;//장르
	private String director;//감독
	private String runtime;//영화길이
	private String overview;//영화 설명
	private double vote_score;//영화 점수
	private int vote_count;//영화 점수를 준 참여자 수
	
	@Override
	public String toString() {
		return "MovieDTO [title=" + title + ", poster_path=" + poster_path + ", release_date=" + release_date
				+ ", budget=" + budget + ", genres=" + genres + ", director=" + director + ", runtime=" + runtime
				+ ", overview=" + overview + ", vote_score=" + vote_score + ", vote_count=" + vote_count + "]";
	}
	
	public String getTitleid() {
		return titleid;
	}
	public void setTitleid(String titleid) {
		this.titleid = titleid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPoster_path() {
		return poster_path;
	}
	public void setPoster_path(String poster_path) {
		this.poster_path = poster_path;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public String getBudget() {
		return budget;
	}
	public void setBudget(String budget) {
		this.budget = budget;
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
	public String getRuntime() {
		return runtime;
	}
	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}
	public String getOverview() {
		return overview;
	}
	public void setOverview(String overview) {
		this.overview = overview;
	}
	public double getVote_score() {
		return vote_score;
	}
	public void setVote_score(double vote_score) {
		this.vote_score = vote_score;
	}
	public int getVote_count() {
		return vote_count;
	}
	public void setVote_count(int vote_count) {
		this.vote_count = vote_count;
	}
	
}
