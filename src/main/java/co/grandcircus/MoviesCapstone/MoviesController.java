package co.grandcircus.MoviesCapstone;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MoviesController {
	
	@Autowired
	private MoviesApi api;

	@RequestMapping("/")
	public String home() {

		return "homepage";
	}
	
@RequestMapping("/searchSubmit")
public String searchMovie(Model model,@RequestParam("original_title") String title) {
	List<Movie> movie=api.searchMovie(title);
	model.addAttribute("movie",movie);
	return "homepage";
	
}
}

