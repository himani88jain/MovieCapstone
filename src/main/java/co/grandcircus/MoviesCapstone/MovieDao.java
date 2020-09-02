package co.grandcircus.MoviesCapstone;

import org.springframework.data.jpa.repository.JpaRepository;


public interface MovieDao extends  JpaRepository<Movie, Long> {

}
