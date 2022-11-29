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

	// 전체 목록 조회
	public List<ThemeVO> themeAll(ThemeVO vo) {
		return themeDAO.themeAll(vo);
	}

	// 상세 조회
	public ThemeVO themeSang(ThemeVO vo) {
		return themeDAO.themeSang(vo);
	}

    // 테마 등록
	public void register(ThemeVO vo) {
		themeDAO.register(vo);
	}

	//테마 등록2
	public void register2(ThemeVO vo) {
		themeDAO.register2(vo);
	}

	// 테마 등록 수정
	public void update(ThemeVO vo) {
		themeDAO.update(vo);
	}

	// 테마 등록 삭제
	public void delete(ThemeVO vo) {
		themeDAO.delete(vo);
	}
	// 테마 등록 삭제2
	public void delete2(ThemeVO vo) {
		themeDAO.delete2(vo);
	}

	// 테마 목록 보기
	public List<ThemeVO> getthemelist(ThemeVO vo) {
		return themeDAO.getthemelist(vo);
	}

	// 테마 목록 상세 보기
	public ThemeVO gettheme(ThemeVO vo) {
		return themeDAO.gettheme(vo);
	}

}
