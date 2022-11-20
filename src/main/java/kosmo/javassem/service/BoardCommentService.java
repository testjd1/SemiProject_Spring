package kosmo.javassem.service;

import java.util.List;

import kosmo.javassem.domain.BoardCommentVO;

public interface BoardCommentService {

   // 댓글 등록
   int insertReply(BoardCommentVO vo);

   // 댓글 목록
   List<BoardCommentVO> selectAllReply();

   // 댓글 삭제
   void deleteReply(Integer rno);
}