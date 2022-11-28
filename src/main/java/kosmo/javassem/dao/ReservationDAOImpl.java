package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import kosmo.javassem.domain.ReservationVO;
import kosmo.javassem.domain.UserMemberVO;


@Repository("reservationDAO")
public class ReservationDAOImpl implements ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//예약 디비에 입력
	 public int insertReservation(ReservationVO vo) {
	      System.out.println("=>ReservationDAOImpl.java::UserMapper::insertReservation");
	      return mybatis.insert("ReservationDAO.insertReservation", vo);
	   }
	
	// 날짜, 제목 받아서 중복 시간 계산
	 public List<String> checkDate(ReservationVO vo) {
         System.out.println("=>ReservationDAOImpl.java::UserMapper::checkDate");
         return mybatis.selectList("ReservationDAO.checkDate", vo);
      }
	 
	 //상세페이지 > 예약페이지
	 public HashMap threv(ReservationVO vo){
		 System.out.println("=>ReservationDAOImpl.java::UserMapper::threv");
		 return mybatis.selectOne("ReservationDAO.threv", vo);
	 }
	 
	
	 //예약 디비 값 MYPAGE에 출력
	 public List<ReservationVO> listRev(ReservationVO vo) {
		 System.out.println("=>ReservationDAOImpl.java::UserMapper::listRev");
		 return mybatis.selectList("ReservationDAO.listRev", vo);
	 }

	 //예약 디비 값 MYPAGE에 매니저 모드로 모두 출력
	 public List<ReservationVO> listRevM(ReservationVO vo) {
		 System.out.println("=>ReservationDAOImpl.java::UserMapper::listRevM");
		 return mybatis.selectList("ReservationDAO.listRevM", vo);
	 }

	//예약 취소
	public void deleteReservation(ReservationVO vo) {
		System.out.println("=>ReservationDAOImpl.java::UserMapper::예약취소");		
		mybatis.delete("ReservationDAO.deleteReservation", vo);
	}
	 
	 
}
