package kosmo.javassem.service;

import java.util.List;

import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.domain.QnaVO;



public interface QnaService {
	// CRUD 기능의 메소드 구현
	// 글 등록
	void insertBoard(QnaVO vo);

	// 글 수정
	void updateBoard(QnaVO vo);

	// 글 삭제
	void deleteBoard(QnaVO vo);

	// 글 상세 조회
	QnaVO getBoard(QnaVO vo);

	// 글 목록 조회
	List<QnaVO> getBoardList(QnaVO vo);
}
