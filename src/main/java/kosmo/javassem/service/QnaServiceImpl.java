package kosmo.javassem.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.QnaDAO;
import kosmo.javassem.domain.QnaVO;
import kosmo.javassem.domain.SearchCriteria;


@Service("QnaService")
public class QnaServiceImpl implements QnaService {
	@Autowired
	private QnaDAO qnaDAO;
	//글 입력하기
	public void insertBoard(QnaVO vo) {
		qnaDAO.insertBoard(vo);
	}
	//글 수정하기
	public void updateBoard(QnaVO vo) {
		qnaDAO.updateBoard(vo);
	}
	//글 삭제
	public void deleteBoard(QnaVO vo) {
		qnaDAO.deleteBoard(vo);
	}

	//관리자 글 삭제
	public void deleteBoardm(QnaVO vo) {
		qnaDAO.deleteBoardm(vo);
	}
	//글 상세보기
	public QnaVO getBoard(QnaVO vo) {
		return qnaDAO.getBoard(vo);
	}
	//글 상세보기(ADMIN)
	public QnaVO getBoardM(QnaVO vo) {
		return qnaDAO.getBoardM(vo);
	}
	//글 목록보기+검색+게시글 목록 조회
	public List<QnaVO> getBoardList(SearchCriteria scri) {
		return qnaDAO.getBoardList(scri);
	}
	//게시글 총 갯수
	public int listCount(SearchCriteria scri) {
		return qnaDAO.listCount(scri);
	}
	
	//게시글 목록 mypage에 출력
		public List<QnaVO> listqna(QnaVO vo) {
			return qnaDAO.listqna(vo);
		}
	
	
}