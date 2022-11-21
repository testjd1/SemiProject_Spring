package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import kosmo.javassem.domain.BoardVO;

public interface BoardDAO {
	//글 입력하기
	public void insertBoard(BoardVO vo);
	//글 수정하기
	public void updateBoard(BoardVO vo) ;
	//글 삭제하기
	public void deleteBoard(BoardVO vo);
	//글 상세보기
	public BoardVO getBoard(BoardVO vo) ;
	//글 목록보기+검색
	public List<BoardVO> getBoardList(HashMap map) ;
}
