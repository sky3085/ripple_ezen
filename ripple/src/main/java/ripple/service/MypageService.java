package ripple.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ripple.bean.MovieDTO;
import ripple.repository.MypageRepository;

@Service
public class MypageService {

	@Autowired
	private MypageRepository mypageRepository;
	
	public List<MovieDTO> mypageList(String startNum, String endNum, String userid){
		List<MovieDTO> list = mypageRepository.mypageList(startNum, endNum, userid);
		
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
	
	public int getTotalA(String userid) {
		return mypageRepository.getTotalA(userid);
	}
}