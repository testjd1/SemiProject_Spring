package kosmo.javassem.dao;

import java.util.List;

import kosmo.javassem.domain.BoardCommentVO;

public interface BoardCommentDAO {

	public Integer insertReply(BoardCommentVO vo); 
	public List<BoardCommentVO> selectAllReply(Integer seq);
	public int deleteReply(Integer rno);
}
