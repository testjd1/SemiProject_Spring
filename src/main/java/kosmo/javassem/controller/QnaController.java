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

import kosmo.javassem.domain.PageMaker;
import kosmo.javassem.domain.QnaVO;
import kosmo.javassem.domain.SearchCriteria;
import kosmo.javassem.service.QnaService;

@Controller
@RequestMapping("/qna")
public class QnaController {
   
   @Autowired
   private QnaService boardService;

      
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
         public void getBoardList(@ModelAttribute("scri") SearchCriteria scri, Model m) {
            
          m.addAttribute("list", boardService.getBoardList(scri));
         
         PageMaker pageMaker = new PageMaker();
         pageMaker.setCri(scri);
         pageMaker.setTotalCount(boardService.listCount(scri));
         
         m.addAttribute("pageMaker", pageMaker);     
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

      // 관리자 글 삭제
      @RequestMapping("/deleteBoardm.do")
      public String deleteBoardm(QnaVO vo) {
         boardService.deleteBoardm(vo);
         return "redirect:/qna/getQnaList.do";
      }
      
      // 글 상세 조회(비번 침)
      @RequestMapping("/getQna.do")
      public String getBoard(QnaVO vo, Model model){
         System.out.println(">>" + vo);
         QnaVO list =  boardService.getBoard(vo);
         if(list==null) {
            return "redirect:/qna/getQnaList.do";
         }
         System.out.println(">>>" + list);
         model.addAttribute("board", list); // Model 정보 저장      
         return "/qna/getQna";
      }
      
      // ADMIN 글 상세 조회(비번 안 침)
      @RequestMapping("/getQnaM.do")
      public void getBoardM(QnaVO vo, Model model) {
         System.out.println(">>" + vo);
         QnaVO list =  boardService.getBoardM(vo);
         System.out.println(">>>" + list);
         model.addAttribute("board", list); // Model 정보 저장         
      }
      
      //------------------------------------------
      @RequestMapping("/test.do")
      public void test(String name){
         System.out.println("/test 요청");
      }
      
      
      //my qna 값 my page에 출력
      @GetMapping("/myqna.do")
      public void listqna (QnaVO vo, Model model) {
         System.out.println("[/qna/myqna.do 요청]" + vo);
         List<QnaVO> list = boardService.listqna(vo);
         System.out.println(list.size());
         model.addAttribute("listqna", list);
      }
      
      
      
      
      

   }