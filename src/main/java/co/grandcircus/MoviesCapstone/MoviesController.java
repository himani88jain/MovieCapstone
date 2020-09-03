package co.grandcircus.MoviesCapstone;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MoviesController {
	
	@Autowired
	private MoviesApi api;
	
	@Autowired
	private MovieFavoritesDao dao;

	@RequestMapping("/")
	public String home() {

		return "homepage";
	}
	
@RequestMapping("/searchSubmit")
public String searchMovie(Model model,@RequestParam("results") String title) {
	List<Movie> movie=api.searchMovie(title);
	
	model.addAttribute("movie",movie);
	return "homepage";	
}

@RequestMapping("/topRated")
public String topRatedMovies(Model model) {
	List<Movie> movie=api.searchByTopRatedMovies();
	model.addAttribute("movie",movie);
	return "homepage";
}

@RequestMapping("/searchByGenre")
public String searchByGenre(Model model,@RequestParam("genres") Long genre) {  
	List<Movie> movie=api.searchByGenre(genre);
	 model.addAttribute("movie",movie);
	  return "homepage";
}

@RequestMapping("/save-favorites/{id}")
public String saveFav(Model model,@PathVariable("id") Long id) {
	
}
}
