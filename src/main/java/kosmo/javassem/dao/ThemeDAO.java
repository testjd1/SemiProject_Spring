package kosmo.javassem.dao;

import java.util.List;

import kosmo.javassem.domain.ThemeVO;

public interface ThemeDAO {

	// 테마 전체보기
	public List<ThemeVO> themeAll(ThemeVO vo);

	// 테마 상세보기
	public ThemeVO themeSang(ThemeVO vo);

	// 테마 등록하기
	public void register(ThemeVO vo);

	// 테마 등록 수정하기
	public void update(ThemeVO vo);

	// 테마 등록 삭제하기
	public void delete(ThemeVO vo);

	// 테마 등록 목록 보기
	public List<ThemeVO> getthemelist(ThemeVO vo);

	// 테마 등록 목록 상세 보기
	public ThemeVO gettheme(ThemeVO vo);

}