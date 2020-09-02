package co.grandcircus.MoviesCapstone;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class MovieList {


	private Long id;
	private List<Movie> results;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public List<Movie> getResults() {
		return results;
	}
	public void setResults(List<Movie> results) {
		this.results = results;
	}
	@Override
	public String toString() {
		return "MovieList [id=" + id + ", results=" + results + "]";
	}
	
	
	
	
}
