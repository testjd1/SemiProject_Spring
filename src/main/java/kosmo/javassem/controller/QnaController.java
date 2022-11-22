package kosmo.javassem.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.domain.QnaVO;
import kosmo.javassem.service.QnaService;

@Controller
@RequestMapping("/qna")
public class QnaController {
	
	@Autowired
	private QnaService boardService;

		//
		@RequestMapping("/{step}.do")
		public String viewPage(@PathVariable String step) {
			return "/qna/"+step;
		}
		
		@RequestMapping("/qna.do")
	    public String openQna(@PathVariable("qna") String url) {
	   	System.out.println("cc경로:" + url);
	   	return "/qna/" + url;
	    }
	
		// 글 목록 검색
		@RequestMapping("/getQnaList.do")
		public void getQnaList(String searchCondition, String searchKeyword, Model m) {
			HashMap map=new HashMap();
	    	map.put("searchKeyword", searchKeyword);
	    	map.put("searchCondition", searchCondition);
	    	
	    	List<QnaVO> list=boardService.getBoardList(map);
			m.addAttribute("qnaList", list);
			// ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
			// return "views/getBoardList.jsp"; // View 이름 리턴 
		}
	
		// 글 등록
	    @RequestMapping(value = "/insertQna.do" , method = RequestMethod.POST)
		public String insertBoard(QnaVO vo) throws IOException {
			boardService.insertBoard(vo);
			return "redirect:/qna/getQnaList.do";
		}

		// 글 수정
		@RequestMapping("/updateBoard.do")
		public String updateBoard(@ModelAttribute("board") QnaVO vo) {
			boardService.updateBoard(vo);
			return "redirect:/getQna.do?seq="+vo.getSeq();
		}

		// 글 삭제
		@RequestMapping("/deleteBoard.do")
		public String deleteBoard(QnaVO vo) {
			boardService.deleteBoard(vo);
			return "redirect:/qna/getQnaList.do";
		}

		// 글 상세 조회
		@RequestMapping("/getQna.do")
		public void getBoard(QnaVO vo, Model model) {
			System.out.println(">>" + vo);
			QnaVO list =  boardService.getBoard(vo);
			System.out.println(">>>" + list);
			model.addAttribute("board", list); // Model 정보 저장			
		}
		
		//------------------------------------------
		@RequestMapping("/test.do")
		public void test(String name){
			System.out.println("/test 요청");
		}

	}
