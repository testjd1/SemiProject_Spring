package kosmo.javassem.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.ReservationDAOImpl;
import kosmo.javassem.domain.ReservationVO;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDAOImpl reservationDAO;
	
	public int insertReservation(ReservationVO vo) {
		return reservationDAO.insertReservation(vo);
	}
	/*
	@Override
	public List<HashMap> threv(ReservationVO vo){
		return reservationDAO.threv(vo);
	}
	*/
	@Override
	public HashMap threv(ReservationVO vo){
		return reservationDAO.threv(vo);
	}

}
