package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosmo.javassem.domain.QnaVO;
import kosmo.javassem.domain.SearchCriteria;



@Repository("QnaDAO") 
public class QnaDAOImpl implements QnaDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	//글 입력하기
	public void insertBoard(QnaVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");	
		mybatis.insert("QnaDAO.insertBoard", vo);
	}
	//글 수정하기
	public void updateBoard(QnaVO vo) {
		System.out.println("===> Mybatis updateBoard() 호출");
		mybatis.update("QnaDAO.updateBoard", vo);
	}
	//글 삭제하기
	public void deleteBoard(QnaVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		mybatis.delete("QnaDAO.deleteBoard", vo);
	}
	
	//관리자 글 삭제하기
	public void deleteBoardm(QnaVO vo) {
		System.out.println("===> Mybatis deleteBoardm() 호출");
		mybatis.delete("QnaDAO.deleteBoardm", vo);
	}
	//글 상세보기
	public QnaVO getBoard(QnaVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return (QnaVO) mybatis.selectOne("QnaDAO.getBoard", vo);
	}
	//글 상세보기(ADMIN)
	public QnaVO getBoardM(QnaVO vo) {
		System.out.println("===> Mybatis getBoardM() 호출");
		return (QnaVO) mybatis.selectOne("QnaDAO.getBoardM", vo);
	}
	//글 목록보기+검색+게시글 목록 조회
	public List<QnaVO> getBoardList(SearchCriteria scri) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("QnaDAO.getBoardList", scri);
	}
	//게시글 총 갯수
	public int listCount(SearchCriteria scri) {
		System.out.println("===> Mybatis listCount() 호출");
		return mybatis.selectOne("QnaDAO.listCount",scri);	
	}
		
	//게시글 목록 mypage에 출력
	public List<QnaVO> listqna(QnaVO vo) {
		System.out.println("===> Mybatis listqna() 호출");
		return mybatis.selectList("QnaDAO.listqna", vo);
		
	}
	
	
}