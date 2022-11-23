package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.domain.ReservationVO;


@Service
public class ReservationDAOImpl implements ReservationDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	 public int insertReservation(ReservationVO vo) {
	      System.out.println("=>ReservationDAOImpl.java::UserMapper::insertReservation");
	      return mybatis.insert("ReservationDAO.insertReservation", vo);
	   }
	 /*
	 public List<HashMap> threv(ReservationVO vo){
		 System.out.println("=>ReservationDAOImpl.java::UserMapper::threv");
		 return mybatis.selectList("ReservationDAO.threv", vo);
	 }
	 */
	 public HashMap threv(ReservationVO vo){
		 System.out.println("=>ReservationDAOImpl.java::UserMapper::threv");
		 return mybatis.selectOne("ReservationDAO.threv", vo);
	 }
}
