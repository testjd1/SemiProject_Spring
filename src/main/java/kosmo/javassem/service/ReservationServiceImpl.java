package kosmo.javassem.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.ReservationDAOImpl;
import kosmo.javassem.domain.ReservationVO;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationDAOImpl reservationDAO;

	// 예약 디비에 입력
	public int insertReservation(ReservationVO vo) {
		return reservationDAO.insertReservation(vo);
	}

	// 날짜, 제목 받아서 중복 시간 계산
	@Override
	public List<String> checkDate(ReservationVO vo) {
		return reservationDAO.checkDate(vo);
	}

	// 상세페이지> 예약페이지
	@Override
	public HashMap threv(ReservationVO vo) {
		return reservationDAO.threv(vo);
	}

	// 예약 디비값 mypage 출력
	public List<ReservationVO> listRev(ReservationVO vo) {
		return reservationDAO.listRev(vo);
	}

}
