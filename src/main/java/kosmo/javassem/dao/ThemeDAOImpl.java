package kosmo.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosmo.javassem.domain.ThemeVO;

@Repository("themeDAO")
public class ThemeDAOImpl implements ThemeDAO {
	@Autowired
	private SqlSessionTemplate mybatis;

	// 테마 전체보기
	public List<ThemeVO> themeAll(ThemeVO vo) {
		System.out.println("===> Mybatis themeAll() 호출");
		return mybatis.selectList("ThemeDAO.themeAll", vo);
	}

	// 테마 상세보기
	public ThemeVO themeSang(ThemeVO vo) {
		System.out.println("===> Mybatis themeSang() 호출");
		return mybatis.selectOne("ThemeDAO.themeSang", vo);
	}

	// 테마 등록하기
	public void register(ThemeVO vo) {
		System.out.println("===> Mybatis register() 호출");
		mybatis.insert("ThemeDAO.register", vo);
	}
	//테마 등록하기2
	public void register2(ThemeVO vo) {
		System.out.println("===> Mybatis register2() 호출");
		mybatis.insert("ThemeDAO.register2", vo);
	}

	// 테마 등록 수정하기
	public void update(ThemeVO vo) {
		System.out.println("===> Mybatis update() 호출");
		mybatis.update("ThemeDAO.update", vo);
	}

	// 테마 등록 삭제하기
	public void delete(ThemeVO vo) {
		System.out.println("===> Mybatis delete() 호출");
		mybatis.delete("ThemeDAO.delete", vo);
	}
	// 테마 등록 삭제하기2
	public void delete2(ThemeVO vo) {
		System.out.println("===> Mybatis delete2() 호출");
		mybatis.delete("ThemeDAO.delete2", vo);
	}
	
	

	// 테마 등록 목록 보기
	public List<ThemeVO> getthemelist(ThemeVO vo) {
		System.out.println("===> Mybatis getthemelist() 호출");
		return mybatis.selectList("ThemeDAO.getthemelist", vo);
	}

	// 테마 등록 목록 상세 보기
	public ThemeVO gettheme(ThemeVO vo) {
		System.out.println("===> Mybatis gettheme() 호출");
		return (ThemeVO) mybatis.selectOne("ThemeDAO.gettheme", vo);
	}

}