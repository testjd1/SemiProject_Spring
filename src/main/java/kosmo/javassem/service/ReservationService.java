package kosmo.javassem.service;

import java.util.HashMap;
import java.util.List;

import kosmo.javassem.domain.ReservationVO;

public interface ReservationService {

	// 예약 값 디비 연결
	public int insertReservation(ReservationVO vo); 
	
	// 날짜, 제목 받아서 중복 시간 계산
	public List<String> checkDate(ReservationVO vo);
	
	// 상세페이지 > 예약페이지
	public HashMap threv(ReservationVO vo);
	
	// 예약 값 디비 mypage 출력
	List<ReservationVO> listRev(ReservationVO vo);
	
}
