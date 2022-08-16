package ripple.bean;

public class MovieDTO {
	private String titleid;
	private String title;
	private String poster_path;
	private String release_date;
	private String budget;
	private String genres;
	private String director;
	private String runtime;
	private String overview;
	private double vote_score;
	private int vote_count;
	
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
