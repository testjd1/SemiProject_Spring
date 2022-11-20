package kosmo.javassem.dao;

import java.util.List;

import kosmo.javassem.domain.UserMemberVO;

public interface UserMemberDAO {
   
   public int insertCustomer(UserMemberVO vo);
   public UserMemberVO checkId(UserMemberVO vo);
   public UserMemberVO loginCustomer(UserMemberVO vo);
/*
   public void updateBoard(BoardVO vo) ;

   public void deleteBoard(BoardVO vo);

   public BoardVO getBoard(BoardVO vo) ;

   public List<BoardVO> getBoardList(BoardVO vo) ;
   */
}