package kosmo.javassem.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kosmo.javassem.domain.ThemeVO;
import kosmo.javassem.service.ThemeService;

@Controller
@RequestMapping("/theme")
public class ThemeController {
	@Autowired
	private ThemeService themeService;

	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/theme/" + step;
	}

// 전체 목록 출력
	@RequestMapping("/theme.do")
	public void theme(ThemeVO vo, Model model) {
		System.out.println("theme.do 요청 : themegenre =" + vo);
		model.addAttribute("themeList", themeService.themeAll(vo));
		// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
		// return "views/getBoardList.jsp"; // View 이름 리턴
	}

// 테마 상세페이지
	@RequestMapping("/theme_sangse.do")
	public void themesang(ThemeVO vo, Model model) {
		System.out.println("theme_sangse.do 요청 : themepicture =" + vo);
		model.addAttribute("theme", themeService.themeSang(vo));
		// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
		// return "views/getBoardList.jsp"; // View 이름 리턴
	}

// 테마 등록
	@RequestMapping("/savetheme.do")
	public void register(ThemeVO vo) throws IOException {
		System.out.println("save_theme 요청 :" + vo);
		themeService.register(vo);
		//테마 예약
		themeService.register2(vo);
	}

// 테마 등록 수정
	@RequestMapping("/updatetheme.do")
	public void update(ThemeVO vo) {
		System.out.println("update_theme 요청 :" + vo);
		themeService.update(vo);
	}

//테마 등록 삭제   
	@RequestMapping("/deletetheme.do")
	public void delete(ThemeVO vo) {
		System.out.println("delete_theme 요청 :" + vo);
		themeService.delete2(vo);
		themeService.delete(vo);
				
	}

//테마 목록 검색     
	@RequestMapping("/getthemelist.do")
	public void getthemelist(ThemeVO vo, Model model) {
		model.addAttribute("themelist", themeService.getthemelist(vo));

	}

//테마 목록 글 상세 조회
	@RequestMapping("/gettheme.do")
	public void gettheme(ThemeVO vo, Model model) {
		ThemeVO result = themeService.gettheme(vo);
		model.addAttribute("theme", result);
	}

}