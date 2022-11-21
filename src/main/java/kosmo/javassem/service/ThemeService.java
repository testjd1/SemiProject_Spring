package kosmo.javassem.service;

import java.util.List;

import kosmo.javassem.domain.ThemeVO;

public interface ThemeService {

	// 전체 목록 조회
	List<ThemeVO> themeAll(ThemeVO vo);
}
