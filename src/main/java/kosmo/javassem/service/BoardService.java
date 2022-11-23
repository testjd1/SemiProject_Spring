package kosmo.javassem.service;

import java.util.List;

import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.domain.SearchCriteria;



public interface BoardService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertBoard(BoardVO vo);

	// 글 수정
	void updateBoard(BoardVO vo);

	// 글 삭제
	void deleteBoard(BoardVO vo);

	// 관리자 글 삭제
	void deleteBoardm(BoardVO vo);

	// 글 상세 조회
	BoardVO getBoard(BoardVO vo);

	// 글 목록 조회+게시글 목록 조회
	List<BoardVO> getBoardList(SearchCriteria scri);

	//게시글 총 갯수
	public int listCount(SearchCriteria scri);

}
