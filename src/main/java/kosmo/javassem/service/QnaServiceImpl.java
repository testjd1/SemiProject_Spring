package kosmo.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.QnaDAO;
import kosmo.javassem.domain.QnaVO;


@Service("QnaService")
public class QnaServiceImpl implements QnaService {
	@Autowired
	private QnaDAO boardDAO;

	public void insertBoard(QnaVO vo) {
		boardDAO.insertBoard(vo);
	}

	public void updateBoard(QnaVO vo) {
		boardDAO.updateBoard(vo);
	}

	public void deleteBoard(QnaVO vo) {
		boardDAO.deleteBoard(vo);
	}

	public QnaVO getBoard(QnaVO vo) {
		return boardDAO.getBoard(vo);
	}

	public List<QnaVO> getBoardList(QnaVO vo) {
		return boardDAO.getBoardList(vo);
	}
}