package kosmo.javassem.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosmo.javassem.domain.ReservationVO;
import kosmo.javassem.service.ReservationService;

@Controller
@RequestMapping(value = "reservation")
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	
	/*
	// 예약페이지 출력 ( 장소, 테마명 가져옴 ) 
	
	 @GetMapping("reservation.do")
	 public void threv(ReservationVO vo, Model m) { // picture 파라미터 값 (사진번호) 넘겨받음
		 System.out.println("picture :" + vo.getPicture());	 
		   List<HashMap> result = reservationService.threv(vo);	 
		   m.addAttribute("reservation",result);
		   System.out.println(" 경로: reservation" );
		   for(HashMap map : result) {
			   System.out.println(map);
		   }
	   }
	 */
	 @GetMapping("reservation.do")
	 public void threv(ReservationVO vo, Model m) { // picture 파라미터 값 (사진번호) 넘겨받음
		 System.out.println("picture :" + vo.getPicture());	 
		   HashMap result = reservationService.threv(vo);	 
		   m.addAttribute("reservation",result);
		   System.out.println(" 경로: reservation" );
		
	   }
	 
	 
	 
	 
	 
	 @RequestMapping(value = "insertReservation.do", method = RequestMethod.POST)
	   public String insertReservation(ReservationVO vo, HttpSession session, HttpServletRequest request,  Model m) throws IOException {
         System.out.println("=>ReservationController.java::insertReservation.do : " +vo);
        /*
         if (reservationService.checkDate(vo) != null) {
           // id exists in DB. Make customer input different date
           //session.setAttribute("sok", 9);
        	m.addAttribute("sok", 9);
           return "/reservation/index"; 
        }
        */
        int insertResult = reservationService.insertReservation(vo);
        System.out.println("  USER INSERTED::" + insertResult);
        request.setAttribute("ok", insertResult);
        
        return "/customer/mypage";
      }
	
}
