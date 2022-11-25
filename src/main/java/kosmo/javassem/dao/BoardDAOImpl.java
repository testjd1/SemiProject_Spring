package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import javax.swing.plaf.synth.SynthOptionPaneUI;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.domain.SearchCriteria;



@Repository("boardDAO") 
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	//글 입력하기
	public void insertBoard(BoardVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");	
		mybatis.insert("BoardDAO.insertBoard", vo);
	}
	//글 수정하기
	public void updateBoard(BoardVO vo) {
		System.out.println("===> Mybatis updateBoard() 호출");
		mybatis.update("BoardDAO.updateBoard", vo);
	}
	//글 삭제하기
	public void deleteBoard(BoardVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		mybatis.delete("BoardDAO.deleteBoard", vo);
	}
	//관리자 글 삭제하기
	public void deleteBoardm(BoardVO vo) {
		System.out.println("===> Mybatis deleteBoardm() 호출");
		mybatis.delete("BoardDAO.deleteBoardm", vo);
	}
	//글 상세보기
	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}
   
	//글 목록보기+ 검색+ 게시글 목록  조회
	public List<BoardVO> getBoardList(SearchCriteria scri) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("BoardDAO.getBoardList", scri);
	}
   
	//보드 게시글 총 갯수
	@Override
	public int listCount(SearchCriteria scri) {
		System.out.println("===> Mybatis listCount() 호출");
		return mybatis.selectOne("BoardDAO.listCount",scri);
	}

	//게시글 목록 mypage에 출력
	public List<BoardVO> listboard(BoardVO vo) {
		System.out.println("===> Mybatis listboard() 호출");
		return mybatis.selectList("BoardDAO.listboard", vo);
	}
	
	
	

}