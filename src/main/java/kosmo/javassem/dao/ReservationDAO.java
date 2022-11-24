package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import kosmo.javassem.domain.ReservationVO;
import kosmo.javassem.domain.ThemeVO;


public interface ReservationDAO {
	
	public int insertReservation(ReservationVO vo);
	public List<HashMap> checkDate(ReservationVO vo);
	//List<HashMap> threv(ReservationVO vo);
	HashMap threv(ReservationVO vo);
	
}
