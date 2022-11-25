package kosmo.javassem.service;

import org.springframework.beans.factory.annotation.Autowired;

import kosmo.javassem.domain.UserMemberVO;



public interface UserMemberService {
   
   // user login
   // 회원가입
   public int insertCustomer(UserMemberVO vo);
   //id 중복 체크
   public UserMemberVO checkId(UserMemberVO vo);
   //로그인
   public UserMemberVO loginCustomer(UserMemberVO vo);
   //회원정보 가져오기
   public UserMemberVO getCustomer(UserMemberVO vo);
   //회원정보 수정
   public void customerUpdate(UserMemberVO vo);
   

}