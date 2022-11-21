package kosmo.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.BoardCommentDAO;
import kosmo.javassem.domain.BoardCommentVO;

@Service("ReplyService")
public class BoardCommentServiceImpl implements BoardCommentService {

   @Autowired
   private BoardCommentDAO boardCommentDAO;
     
   // 댓글 등록
   public int insertReply(BoardCommentVO vo) {
      
      return boardCommentDAO.insertReply(vo);
   }   

   // 댓글 목록
   public List<BoardCommentVO> selectAllReply(Integer seq) {
      return boardCommentDAO.selectAllReply(seq);
   }

   // 댓글 삭제
   public void deleteReply(Integer rno) {
	   boardCommentDAO.deleteReply(rno);
   }

}