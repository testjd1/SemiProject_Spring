package kosmo.javassem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.UserMemberDAOImpl;
import kosmo.javassem.domain.UserMemberVO;



@Service
public class UserMemberServiceImpl implements UserMemberService {
   
   @Autowired
   private UserMemberDAOImpl UserMemberDAO;

   public int insertCustomer(UserMemberVO vo) {
      return UserMemberDAO.insertCustomer(vo);
   }
   public UserMemberVO checkId(UserMemberVO vo) {
      return UserMemberDAO.checkId(vo);
   }
   public UserMemberVO loginCustomer(UserMemberVO vo) {
      return UserMemberDAO.loginCustomer(vo); 
   }

   
/*
   public void updateBoard(BoardVO vo) {
      boardDAO.updateBoard(vo);
   }

   public void deleteBoard(BoardVO vo) {
      boardDAO.deleteBoard(vo);
   }

   public BoardVO getBoard(BoardVO vo) {
      return boardDAO.getBoard(vo);
   }

   public List<BoardVO> getBoardList(BoardVO vo) {
      return boardDAO.getBoardList(vo);
   }
   */
}