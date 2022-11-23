package kosmo.javassem.dao;

import java.util.List;

import kosmo.javassem.domain.QnaVO;
import kosmo.javassem.domain.SearchCriteria;

public interface QnaDAO {
	//글 입력하기
	public void insertBoard(QnaVO vo);
	//글 수정하기
	public void updateBoard(QnaVO vo) ;
	//글 삭제하기
	public void deleteBoard(QnaVO vo);
	//관리자 글 삭제하기
	public void deleteBoardm(QnaVO vo);
	//글 상세보기
	public QnaVO getBoard(QnaVO vo) ;
	//글 목록보기+검색+게시글 목록 조회
	public List<QnaVO> getBoardList(SearchCriteria scri) ;
	//게시글 총 갯수
	public int listCount(SearchCriteria scri);
}
