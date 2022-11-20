package kosmo.javassem.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosmo.javassem.domain.BoardVO;
import kosmo.javassem.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
   
   @Autowired
   private BoardService boardService;

      //
      @RequestMapping("/{step}.do")
      public String viewPage(@PathVariable String step) {
         return "/board/"+step;
      }
   
      // 글 목록 검색
      @RequestMapping("/getBoardList.do")
      public void getBoardList(BoardVO vo, Model model) {
         System.out.println("getBoardList.do 요청");
         model.addAttribute("boardList", boardService.getBoardList(vo));
         // ViewResolver를 지정하지 않으면 아래처럼 페이지명 지정
         // return "views/getBoardList.jsp"; // View 이름 리턴
      }
   
      // 글 등록
      @RequestMapping(value = "/insertBoard.do" , method = RequestMethod.POST)
      public String insertBoard(BoardVO vo) throws IOException {
         boardService.insertBoard(vo);
         return "redirect:/board/getBoardList.do";
      }

      // 글 수정
      @RequestMapping("/updateBoard.do")
      public String updateBoard(@ModelAttribute("board") BoardVO vo) {
         boardService.updateBoard(vo);
         return "redirect:/getBoard.do?seq="+vo.getSeq();
      }

      // 글 삭제
      @RequestMapping("/deleteBoard.do")
      public String deleteBoard(BoardVO vo) {
         boardService.deleteBoard(vo);
         return "redirect:/getBoardList.do";
      }

      // 글 상세 조회
      @RequestMapping("/getBoard.do")
      public void getBoard(BoardVO vo, Model model) {
         System.out.println(">>" + vo);
         BoardVO list =  boardService.getBoard(vo);
         System.out.println(">>>" + list);
         model.addAttribute("board", list); // Model 정보 저장         
      }
      
      //------------------------------------------
      @RequestMapping("/test.do")
      public void test(String name){
         System.out.println("/test 요청");
      }

   }