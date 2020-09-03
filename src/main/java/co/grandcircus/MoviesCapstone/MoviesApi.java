package co.grandcircus.MoviesCapstone;

import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.client.ClientHttpRequestInterceptor;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class MoviesApi {

	private RestTemplate rt;

	@Value("${api-key}")
	private String apiKey;

	// initialization block that runs when a new instance of the class is created
	// loaded before the constructor
	{
		ClientHttpRequestInterceptor interceptor = (request, body, execution) -> {
			request.getHeaders().add(HttpHeaders.USER_AGENT, "MoviesCapstone");
			return execution.execute(request, body);
		};
		rt = new RestTemplateBuilder().additionalInterceptors(interceptor).build();
	}
	
	public List<Movie> searchMovie(String title) {
	String url="https://api.themoviedb.org/3/search/movie?api_key={apiKey}&query={results}";
	List<Movie> movie=rt.getForObject(url,MovieList.class,apiKey,title).getResults();

	return movie;
	
}
	public List<Movie> searchByTopRatedMovies(){
		String url="https://api.themoviedb.org/3/movie/top_rated?api_key={apiKey}";
		List<Movie> movie =rt.getForObject(url,MovieList.class,apiKey).getResults();
		return movie;
	}
	
	public List<Movie> searchByGenre(Long id)
	{
		String url="https://api.themoviedb.org/3/discover/movie?api_key={apiKey}&language=en-US&with_genres={id}";
	   List<Movie> movie=rt.getForObject(url,MovieList.class,apiKey,id).getResults();
	   System.out.println("movie"+movie);
	   return movie;
	}
	
	public Movie searchId(Long id) {
		String url="https://api.themoviedb.org/3/movie/{id}?api_key={apiKey}";
		Movie movie=rt.getForObject(url,Movie.class,id,apiKey);
		return movie;
	}
	

	
}
