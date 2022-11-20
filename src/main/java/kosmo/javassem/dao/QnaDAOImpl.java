package kosmo.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosmo.javassem.domain.QnaVO;



@Repository("QnaDAO") 
public class QnaDAOImpl implements QnaDAO{
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertBoard(QnaVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");	
		mybatis.insert("BoardDAO.insertBoard", vo);
	}

	public void updateBoard(QnaVO vo) {
		System.out.println("===> Mybatis updateBoard() 호출");
		mybatis.update("BoardDAO.updateBoard", vo);
	}

	public void deleteBoard(QnaVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		mybatis.delete("BoardDAO.deleteBoard", vo);
	}

	public QnaVO getBoard(QnaVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return (QnaVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}

	public List<QnaVO> getBoardList(QnaVO vo) {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("BoardDAO.getBoardList", vo);
	}
}