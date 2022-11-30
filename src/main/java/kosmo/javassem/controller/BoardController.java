package kosmo.javassem.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.domain.PageMaker;
import kosmo.javassem.domain.QnaVO;
import kosmo.javassem.domain.SearchCriteria;
import kosmo.javassem.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;

	//
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/board/" + step;
	}

	// 글 목록 검색
	@RequestMapping("/getBoardList.do")
	public void getBoardList(@ModelAttribute("scri") SearchCriteria scri, Model m) {
		m.addAttribute("notice",boardService.notice());
		m.addAttribute("list", boardService.getBoardList(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(boardService.listCount(scri));
		
		m.addAttribute("pageMaker", pageMaker);
		// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
		// return "views/getBoardList.jsp"; // View 이름 리턴
	}

	// 글 등록
	@RequestMapping(value = "/insertBoard.do", method = RequestMethod.POST)
	public String insertBoard(BoardVO vo) throws IOException {
		if(vo.getPing()==null) {
			boardService.insertBoard(vo);
		}
		if(vo.getPing()!=null) {
			boardService.insertBoard2(vo);
		}
		return "redirect:/board/getBoardList.do";
	}

	// 글 수정
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") BoardVO vo) {
		boardService.updateBoard(vo);
		return "redirect:/getBoard.do?seq=" + vo.getSeq();
	}

	// 글 삭제
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		boardService.deleteBoard(vo);
		return "redirect:/board/getBoardList.do";
	}

	// 관리자 글 삭제
	@RequestMapping("/deleteBoardm.do")
	public String deleteBoardm(BoardVO vo) {
		boardService.deleteBoardm(vo);
		return "redirect:/board/getBoardList.do";
	}

	// 글 상세 조회
	@RequestMapping("/getBoard.do")
	public void getBoard(BoardVO vo, Model model) {
		BoardVO list = boardService.getBoard(vo);
		model.addAttribute("board", list); // Model 정보 저장
		
		BoardVO listg = boardService.getBoardg(vo);
		if(listg != null) {
			model.addAttribute("board", listg); // Model 정보 저장
		}
		
		
	}

	// my board 값 my page에 출력

	@GetMapping("/myboard.do")
	public void listboard (BoardVO vo, Model model) {
		System.out.println("[/board/myboard.do 요청]" + vo);
		List<BoardVO> list = boardService.listboard(vo);
		System.out.println(list.size());
		model.addAttribute("listboard", list);
	}

	// ------------------------------------------
	@RequestMapping("/test.do")
	public void test(String name) {
		System.out.println("/test 요청");
	}

}