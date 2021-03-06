
package co.grandcircus.MoviesCapstone;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class MovieFavorites {

	@Id
    private Long id;
	private String title;
	private String poster_path;
	private Double vote_average;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public Double getVote_average() {
		return vote_average;
	}
	public void setVote_average(Double vote_average) {
		this.vote_average = vote_average;
	}
	
	public MovieFavorites() {
		super();
	}
	@Override
	public String toString() {
		return "MovieFavorites [id=" + id + ", title=" + title + ", poster_path=" + poster_path + ", vote_average="
				+ vote_average + "]";
	}
	
		
}
