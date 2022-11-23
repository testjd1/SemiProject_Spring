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

	public void insertBoard(BoardVO vo) {
		boardDAO.insertBoard(vo);
	}

	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}
	
	public void deleteBoardm(BoardVO vo) {
		boardDAO.deleteBoardm(vo);
	}

	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	public List<BoardVO> getBoardList(SearchCriteria scri) {
		return boardDAO.getBoardList(scri);
	}

	@Override
	public int listCount(SearchCriteria scri) {
		return boardDAO.listCount(scri);
	}

}