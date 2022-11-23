package kosmo.javassem.service;

import java.util.List;

import kosmo.javassem.domain.ThemeVO;

public interface ThemeService {

	// 테마 전체보기
	List<ThemeVO> themeAll(ThemeVO vo);

	// 테마 상세보기
	ThemeVO themeSang(ThemeVO vo);

	// 테마 등록하기
	void register(ThemeVO vo);

	// 테마 등록 수정하기
	void update(ThemeVO vo);

	// 테마 등록 삭제하기
	void delete(ThemeVO vo);

	// 테마 등록 목록 보기
	List<ThemeVO> getthemelist(ThemeVO vo);

	// 테마 등록 목록 상세 보기
	ThemeVO gettheme(ThemeVO vo);

}