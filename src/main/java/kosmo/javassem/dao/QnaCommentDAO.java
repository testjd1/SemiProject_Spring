package kosmo.javassem.dao;

import java.util.List;

import kosmo.javassem.domain.QnaCommentVO;

public interface QnaCommentDAO {

	public Integer insertQnaReply(QnaCommentVO vo); 
	public List<QnaCommentVO> selectAllQnaReply(Integer seq);
	public int deleteQnaReply(Integer rno);
}
