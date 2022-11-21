package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import kosmo.javassem.domain.QnaVO;

public interface QnaDAO {
	public void insertBoard(QnaVO vo);

	public void updateBoard(QnaVO vo) ;

	public void deleteBoard(QnaVO vo);

	public QnaVO getBoard(QnaVO vo) ;

	public List<QnaVO> getBoardList(HashMap map) ;
}
