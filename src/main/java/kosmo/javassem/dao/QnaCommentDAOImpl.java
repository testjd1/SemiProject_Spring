package kosmo.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import kosmo.javassem.domain.QnaCommentVO;

@Repository("qnaCommentDAO")
public class QnaCommentDAOImpl implements QnaCommentDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public Integer insertQnaReply(QnaCommentVO vo) {
		System.out.println("===> Mybatis insertQnaReply() 호출");	
		return mybatis.insert("QnaCommentVO.insertReply2", vo);
	}

	public List<QnaCommentVO> selectAllQnaReply(Integer seq) {
		System.out.println("===> Mybatis selectAllQnaReply() 호출:" + seq);	
		return mybatis.selectList("QnaCommentVO.selectAllReply2", seq);
	}

	@Override
	public int deleteQnaReply(Integer rno) {
		System.out.println("===> Mybatis deleteQnaReply() 호출");	
		return mybatis.delete("QnaCommentVO.deleteReply2", rno); 
	}

}
