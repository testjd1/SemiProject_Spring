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
		return mybatis.insert("BoardCommentVO.insertReply", vo);
	}

	public List<BoardCommentVO> selectAllReply(Integer seq) {
		System.out.println("===> Mybatis selectAllReply() 호출:" + seq);	
		return mybatis.selectList("BoardCommentVO.selectAllReply", seq);
	}

	@Override
	public int deleteReply(Integer rno) {
		System.out.println("===> Mybatis deleteReply() 호출");	
		return mybatis.delete("BoardCommentVO.deleteReply", rno);
	}

}
