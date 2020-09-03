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

@RequestMapping("/show-details")
public String showMovieDetails(Model model, @RequestParam("id") Long id) {
	Movie movie=api.searchId(id);
	model.addAttribute("movie",movie);
	return "movie-details";
}
@RequestMapping("/save-favorites")
public String saveFav(Model model,@RequestParam("id") Long id) {
	Movie movie=api.searchId(id);
	MovieFavorites mf=new MovieFavorites();
	Long favId= movie.getId();
	mf.setId(favId);
	String favTitle=movie.getTitle();
	mf.setTitle(favTitle);
	String image=movie.getPoster_path();
	mf.setPoster_path(image);
	Double rating=movie.getVote_average();
	mf.setVote_average(rating);
	dao.save(mf);
	return "redirect:/show-favorites";
}

@RequestMapping("/show-favorites")
public String showFavorites(Model model) {
	List<MovieFavorites> fav=dao.findAll();
	model.addAttribute("favorite",fav);
	return "favorites";
}

@RequestMapping("/delete-favorites")
public String deleteFavorites(@RequestParam("id") Long id) {
	dao.deleteById(id);
	return "redirect:/show-favorites";
}


}
