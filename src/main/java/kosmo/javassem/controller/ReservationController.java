package kosmo.javassem.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kosmo.javassem.domain.ReservationVO;
import kosmo.javassem.service.ReservationService;

@Controller
@RequestMapping(value = "reservation")
public class ReservationController {

	@Autowired
	private ReservationService reservationService;

	
	 
	// 날짜, 제목 받아서 중복 시간 계산
	
	@ResponseBody
	@GetMapping("reservedate.do")
	public List<String> checkDate(ReservationVO vo, Model m) throws Exception {
		System.out.println("date : " + vo.getRegdate());
		System.out.println("themename : " + vo.getThemename());
		List<String> result = reservationService.checkDate(vo);
		m.addAttribute("reservedate", result);
		for (String k : result) {
			System.out.println(k);
		}
		return reservationService.checkDate(vo);
	}

	// 상세페이지 -> 예약페이지
	@GetMapping("reservation.do")
	public void threv(ReservationVO vo, Model m) { // picture 파라미터 값 (사진번호) 넘겨받음
		System.out.println("picture :" + vo.getPicture());
		HashMap result = reservationService.threv(vo);
		m.addAttribute("reservation", result);
		System.out.println(" 경로: reservation");
	}

	// 예약 디비에 입력
	@RequestMapping(value = "insertReservation.do", method = RequestMethod.POST)
	public String insertReservation(ReservationVO vo, Model m) throws IOException {
		System.out.println("=>ReservationController.java::insertReservation.do : " + vo);
		int insertResult = reservationService.insertReservation(vo);
		System.out.println("  USER INSERTED::" + insertResult);
		return "customer/index";

	}

	@GetMapping("mypage.do")
	// 예약 디비 값 MYPAGE에 출력
	public void listRev(ReservationVO vo, Model m) {
		System.out.println("[/reservation/mypage.do 요청]" + vo);
		List<ReservationVO> list = reservationService.listRev(vo);
		System.out.println(list.size());
		m.addAttribute("listRev", list);
	}

}
