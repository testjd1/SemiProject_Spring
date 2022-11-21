package kosmo.javassem.service;

import java.util.List;

import kosmo.javassem.domain.QnaCommentVO;

public interface QnaCommentService {

   // 댓글 등록
   int insertQnaReply(QnaCommentVO vo);

   // 댓글 목록
   List<QnaCommentVO> selectAllQnaReply(Integer seq);

   // 댓글 삭제
   void deleteQnaReply(Integer rno);
}