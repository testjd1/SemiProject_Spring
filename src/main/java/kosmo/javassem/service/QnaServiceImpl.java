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

	public void insertBoard(QnaVO vo) {
		qnaDAO.insertBoard(vo);
	}

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

	public QnaVO getBoard(QnaVO vo) {
		return qnaDAO.getBoard(vo);
	}

	public List<QnaVO> getBoardList(SearchCriteria scri) {
		return qnaDAO.getBoardList(scri);
	}
	
	public int listCount(SearchCriteria scri) {
		return qnaDAO.listCount(scri);
	}
}