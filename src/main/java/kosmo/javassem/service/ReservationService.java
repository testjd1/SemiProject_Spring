package kosmo.javassem.service;

import java.util.HashMap;
import java.util.List;

import kosmo.javassem.domain.ReservationVO;

public interface ReservationService {

	// 예약 값 디비 연결
	public int insertReservation(ReservationVO vo); 
	/*
	public List<HashMap> threv(ReservationVO vo);
	*/
	public HashMap threv(ReservationVO vo);
}
