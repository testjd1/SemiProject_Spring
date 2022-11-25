package kosmo.javassem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.UserMemberDAOImpl;
import kosmo.javassem.domain.UserMemberVO;



@Service
public class UserMemberServiceImpl implements UserMemberService {
   
   @Autowired
   private UserMemberDAOImpl UserMemberDAO;

   //회원 가입
   public int insertCustomer(UserMemberVO vo) {
      return UserMemberDAO.insertCustomer(vo);
   }
   //아이디 중복 체크
   public UserMemberVO checkId(UserMemberVO vo) {
      return UserMemberDAO.checkId(vo);
   }
   //로그인
   public UserMemberVO loginCustomer(UserMemberVO vo) {
      return UserMemberDAO.loginCustomer(vo); 
   }
   //회원정보 가져오기
   public UserMemberVO getCustomer(UserMemberVO vo) {
	   return UserMemberDAO.getCustomer(vo); 	   
   }
	//회원정보 수정
	public void customerUpdate(UserMemberVO vo) {
		UserMemberDAO.customerUpdate(vo);
	}

 
}