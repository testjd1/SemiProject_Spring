package kosmo.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosmo.javassem.domain.BoardCommentVO;

@Repository("boardCommentDAO")
public class BoardCommentDAOImpl implements BoardCommentDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public Integer insertReply(BoardCommentVO vo) {
		System.out.println("===> Mybatis insertReply() 호출");	
		return mybatis.insert("ReplyDAO.insertReply", vo);
	}

	public List<BoardCommentVO> selectAllReply() {
		System.out.println("===> Mybatis selectAllReply() 호출");	
		return mybatis.selectList("ReplyDAO.selectAllReply");
	}

	@Override
	public int deleteReply(Integer rno) {
		System.out.println("===> Mybatis deleteReply() 호출");	
		return mybatis.delete("ReplyDAO.deleteReply", rno);
	}

}
