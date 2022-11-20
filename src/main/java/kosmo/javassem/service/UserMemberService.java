package kosmo.javassem.service;

import org.springframework.beans.factory.annotation.Autowired;

import kosmo.javassem.domain.UserMemberVO;



public interface UserMemberService {
   
   // user login
   // 회원가입
   public int insertCustomer(UserMemberVO vo);
   public UserMemberVO checkId(UserMemberVO vo);
   public UserMemberVO loginCustomer(UserMemberVO vo);
   
   /*
   // 글 수정
   void updateBoard(BoardVO vo);

   // 글 삭제
   void deleteBoard(BoardVO vo);

   // 글 상세 조회
   BoardVO getBoard(BoardVO vo);

   // 글 목록 조회
   List<BoardVO> getBoardList(BoardVO vo);
   */
}