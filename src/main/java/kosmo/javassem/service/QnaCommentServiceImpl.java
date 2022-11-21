package kosmo.javassem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.QnaCommentDAO;
import kosmo.javassem.domain.QnaCommentVO;

@Service("QnaReplyService")
public class QnaCommentServiceImpl implements QnaCommentService {

   @Autowired
   private QnaCommentDAO qnaCommentDAO;
     
   // 댓글 등록 
   public int insertQnaReply(QnaCommentVO vo) {
      return qnaCommentDAO.insertQnaReply(vo);
   }   

   // 댓글 목록
   public List<QnaCommentVO> selectAllQnaReply(Integer seq) {
      return qnaCommentDAO.selectAllQnaReply(seq);
   }

   // 댓글 삭제
   public void deleteQnaReply(Integer rno) {
	   qnaCommentDAO.deleteQnaReply(rno);
   }

}