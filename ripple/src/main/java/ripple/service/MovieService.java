package ripple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ripple.bean.MovieDTO;
import ripple.bean.MoviePreDTO;
import ripple.repository.MovieRepository;

@Service
public class MovieService {
	
	@Autowired
	private MovieRepository movieRepository;
	
	public MovieDTO movieView(String titleid) {
		MovieDTO dto = movieRepository.movieView(titleid);
		
		String date = dto.getRelease_date().substring(0, 10);
		dto.setRelease_date(date);
		String[] genre = dto.getGenres().substring(1, dto.getGenres().length()-1).split(",");
		String genres = "";
		
		for(String g : genre) {
			g = g.substring(g.indexOf("'")+1, g.length()-1);
			genres = genres + "&nbsp;&nbsp;" + g;
		}
		dto.setGenres(genres);
		
		return dto;
	}
	
	public List<MovieDTO> movieList(int startNum, int endNum) {
		List<MovieDTO> list = movieRepository.movieList(startNum, endNum);
		
		for(MovieDTO dto : list) {
			String[] genre = dto.getGenres().substring(1, dto.getGenres().length()-1).split(",");
			String genres = "";
			
			if(genre.length>2) {
				for(int i = 0; i < 2; i++) {
					String g = genre[i];
					g = g.substring(g.indexOf("'")+1, g.length()-1);
					genres = genres + "&nbsp;&nbsp;" + g;
				}
			}else {
				for(String g : genre) {
					g = g.substring(g.indexOf("'")+1, g.length()-1);
					genres = genres + "&nbsp;&nbsp;" + g;
				}
			}
			dto.setGenres(genres);
			
			int score = (int) dto.getVote_score();
			dto.setVote_score(score);
		}
		
		return list;
	}
	
	public int getTotalA() {
		return movieRepository.getTotalA();
	}
	
	public MoviePreDTO moviepredict(String titleid) {
		MoviePreDTO dto = movieRepository.moviepredict(titleid);

		return dto;
	}
}
