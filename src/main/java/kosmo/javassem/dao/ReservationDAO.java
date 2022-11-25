package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import kosmo.javassem.domain.ReservationVO;
import kosmo.javassem.domain.ThemeVO;


public interface ReservationDAO {
	 
	// 예약 디비 입력
	public int insertReservation(ReservationVO vo);
	
	// 날짜, 제목 받아서 중복 시간 계산
	public List<String> checkDate(ReservationVO vo);
	
	
	// 상세페이지 -> 예약페이지 
	HashMap threv(ReservationVO vo);
	
	//예약 디비 값 MYPAGE에 출력
	public List<ReservationVO> listRev(ReservationVO vo);
	
	
	
	
	
}
