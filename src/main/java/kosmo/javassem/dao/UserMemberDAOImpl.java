package kosmo.javassem.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.domain.UserMemberVO;




@Service
public class UserMemberDAOImpl implements UserMemberDAO{
   
   @Autowired
   private SqlSessionTemplate mybatis;
   // ---user login
   public int insertCustomer(UserMemberVO vo) {
      System.out.println("=>UserDAOImpl.java::UserMapper::insertCustomer");
      return mybatis.insert("UserMemberDAO.insertCustomer", vo);
   }
   
   public UserMemberVO checkId(UserMemberVO vo) {
      System.out.println("=>UserDAOImpl.java::UserMapper::checkId");
      return mybatis.selectOne("UserMemberDAO.checkId",vo);
   }

   public UserMemberVO loginCustomer(UserMemberVO vo) {
      System.out.println("=>UserDAOImpl.java::UserMapper::loginCustomer");
      return mybatis.selectOne("UserMemberDAO.loginCustomer", vo);
   }


   
      // ---user login end

      
   
/*
   public void updateBoard(BoardVO vo) {
      System.out.println("===> Mybatis updateBoard() 호출");
      mybatis.update("BoardDAO.updateBoard", vo);
   }

   public void deleteBoard(BoardVO vo) {
      System.out.println("===> Mybatis deleteBoard() 호출");
      mybatis.delete("BoardDAO.deleteBoard", vo);
   }

   public BoardVO getBoard(BoardVO vo) {
      System.out.println("===> Mybatis getBoard() 호출");
      return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
   }

   public List<BoardVO> getBoardList(BoardVO vo) {
      System.out.println("===> Mybatis getBoardList() 호출");
      return mybatis.selectList("BoardDAO.getBoardList", vo);
   }
   */
}