package kosmo.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.ThemeDAO;
import kosmo.javassem.domain.ThemeVO;

@Service("themeService")
public class ThemeServiceImpl implements ThemeService {
	
	@Autowired
	private ThemeDAO themeDAO;
	
	
	public List<ThemeVO> themeAll(ThemeVO vo) {
		return themeDAO.themeAll(vo);
	}

}
