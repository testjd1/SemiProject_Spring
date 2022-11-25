package kosmo.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.BoardDAO;
import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.domain.SearchCriteria;


@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDAO boardDAO;

	//글 입력하기
	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);
	}
	//글 수정하기
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}
	//글 삭제
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}
	//관리자 글 삭제
	public void deleteBoardm(BoardVO vo) {
		boardDAO.deleteBoardm(vo);
	}
	//글 상세보기
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}
	//글 목록보기+검색+게시글 목록 조회
	public List<BoardVO> getBoardList(SearchCriteria scri) {
		return boardDAO.getBoardList(scri);
	}

	//게시글 총 갯수
	@Override
	public int listCount(SearchCriteria scri) {
		return boardDAO.listCount(scri);
	}

	
	//게시글 목록 mypage에 출력
	public List<BoardVO> listboard(BoardVO vo){
		return boardDAO.listboard(vo);
	}
	
	
}