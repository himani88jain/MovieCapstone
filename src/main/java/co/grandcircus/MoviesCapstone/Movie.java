package co.grandcircus.MoviesCapstone;

import java.util.List;

public class Movie {

	
	
	private Long id;
	private List<Genre> genres;
	private String original_language;
	private String title;
	private String overview;
	private String release_date;
	private Double vote_average;
	private String poster_path;
	
	
	public List<Genre> getGenres() {
		return genres;
	}
	public void setGenres(List<Genre> genres) {
		this.genres = genres;
	}
	public String getPoster_path() {
		return poster_path;
	}
	public void setPoster_path(String poster_path) {
		this.poster_path = poster_path;
	}
	public List<Genre> getGenre() {
		return genres;
	}
	public void setGenre(List<Genre> genres) {
		this.genres = genres;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getOriginal_language() {
		return original_language;
	}
	public void setOriginal_language(String original_language) {
		this.original_language = original_language;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title =title;
	}
	public String getOverview() {
		return overview;
	}
	public void setOverview(String overview) {
		this.overview = overview;
	}
	public String getRelease_date() {
		return release_date;
	}
	public void setRelease_date(String release_date) {
		this.release_date = release_date;
	}
	public Double getVote_average() {
		return vote_average;
	}
	public void setVote_average(Double vote_average) {
		this.vote_average = vote_average;
	}
	@Override
	public String toString() {
		return "Movie [id=" + id + ", genres=" + genres + ", original_language=" + original_language + ", title="
				+ title + ", overview=" + overview + ", release_date=" + release_date + ", vote_average=" + vote_average
				+ ", poster_path=" + poster_path + "]";
	}
	
	
	
	
}
