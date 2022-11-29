package kosmo.javassem.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.ReservationDAOImpl;
import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.domain.ReservationVO;
import kosmo.javassem.domain.SearchCriteria;

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

	// 예약 디비값 mypage 매니저 모드로 모두 출력
	public List<ReservationVO> listRevM(ReservationVO vo) {
		return reservationDAO.listRevM(vo);
	}
	
	//예약 취소
	public void deleteReservation(ReservationVO vo) {
		reservationDAO.deleteReservation(vo);		
	}

	//글 목록보기+검색+게시글 목록 조회
		public List<ReservationVO> getReservationList(SearchCriteria scri) {
			return reservationDAO.getReservationList(scri);
	}

	//게시글 총 갯수
	public int listCount(SearchCriteria scri) {
		return reservationDAO.listCount(scri);
	}

}
