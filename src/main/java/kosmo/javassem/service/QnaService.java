package kosmo.javassem.service;

import java.util.List;

import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.domain.QnaVO;
import kosmo.javassem.domain.SearchCriteria;



public interface QnaService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertBoard(QnaVO vo);

	// 글 수정
	void updateBoard(QnaVO vo);

	// 글 삭제
	void deleteBoard(QnaVO vo);

	//관리자 글 삭제
	void deleteBoardm(QnaVO vo);

	// 글 상세 조회
	QnaVO getBoard(QnaVO vo);

	// 글 상세 조회
	QnaVO getBoardM(QnaVO vo);

	// 글 목록 조회+게시글 목록 조회
	List<QnaVO> getBoardList(SearchCriteria scri);
	
	//게시글 총 갯수
	public int listCount(SearchCriteria scri);
	
	//게시글 목록 mypage에 출력
	List<QnaVO> listqna(QnaVO vo);
	
}
