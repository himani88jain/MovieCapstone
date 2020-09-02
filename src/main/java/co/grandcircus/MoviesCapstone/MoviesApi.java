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
	
	public List<Movie> searchMovie(String original_title) {
	String url="https://api.themoviedb.org/3/search/movie?{apiKey}&query={original_title}";
	List<Movie> movie=rt.getForObject(url,MovieList.class,apiKey,original_title).getResults();
	return movie;
	
}
}
