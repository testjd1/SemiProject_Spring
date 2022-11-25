package kosmo.javassem.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.domain.UserMemberVO;




@Service
public class UserMemberDAOImpl implements UserMemberDAO{
   
   @Autowired
   private SqlSessionTemplate mybatis;
   
   //회원 가입
   public int insertCustomer(UserMemberVO vo) {
      System.out.println("=>UserDAOImpl.java::UserMapper::insertCustomer");
      return mybatis.insert("UserMemberDAO.insertCustomer", vo);
   }
   
   //아이디 중복체크
   public UserMemberVO checkId(UserMemberVO vo) {
      System.out.println("=>UserDAOImpl.java::UserMapper::checkId");
      return mybatis.selectOne("UserMemberDAO.checkId",vo);
   }

   // ---로그인
   public UserMemberVO loginCustomer(UserMemberVO vo) {
      System.out.println("=>UserDAOImpl.java::UserMapper::loginCustomer");
      return mybatis.selectOne("UserMemberDAO.loginCustomer", vo);
   } // ---user login end

   //회원정보 가져오기
   public UserMemberVO getCustomer(UserMemberVO vo) {
	   System.out.println("=>UserDAOImpl.java::UserMapper::getCustomer");
	   return mybatis.selectOne("UserMemberDAO.getCustomer",vo);
   }
   
	//회원정보 수정
   //서비스에서 보낸 파라미터들을 customerUpdate()에 담기
	public void customerUpdate(UserMemberVO vo) {
		//vo에 담긴 파라미터들은 유저멤버mapper.xml에 UserMemberDAO라는 namespace에
		//아이디가 customerUpdate인 쿼리에 파라미터들을 넣어줌.
		System.out.println("=>UserDAOImpl.java::UserMapper::customerUpdate");
		mybatis.update("UserMemberDAO.customerUpdate",vo);
	}

   
      
  
}