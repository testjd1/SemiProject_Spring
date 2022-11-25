package kosmo.javassem.dao;

import java.util.List;

import kosmo.javassem.domain.UserMemberVO;

public interface UserMemberDAO {
   
	//회원 가입
   public int insertCustomer(UserMemberVO vo);
   
   //아이디 중복 체크
   public UserMemberVO checkId(UserMemberVO vo);
   
   //로그인
   public UserMemberVO loginCustomer(UserMemberVO vo);

   //회원정보 가져오기
   public UserMemberVO getCustomer(UserMemberVO vo);
   
   //회원정보 수정 
   public void customerUpdate(UserMemberVO vo);
   
}