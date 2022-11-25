package kosmo.javassem.dao;

import java.util.List;

import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.domain.SearchCriteria;

public interface BoardDAO {
	//글 입력하기
	public void insertBoard(BoardVO vo);
	//글 수정하기
	public void updateBoard(BoardVO vo) ;
	//글 삭제하기
	public void deleteBoard(BoardVO vo);
	//관리자 글 삭제하기
	public void deleteBoardm(BoardVO vo);
	//글 상세보기
	public BoardVO getBoard(BoardVO vo) ;
	//글 목록보기+검색+게시글 목록 조회
	public List<BoardVO> getBoardList(SearchCriteria scri) ;
	//게시글 총 갯수
	public int listCount(SearchCriteria scri);
	//게시글 목록 mypage에 출력
	public List<BoardVO> listboard(BoardVO vo);
	
}
