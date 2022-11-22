package kosmo.javassem.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kosmo.javassem.domain.UserMemberVO;
import kosmo.javassem.service.UserMemberService;



@Controller
@RequestMapping(value = "customer")
public class UserMemberController {
  
   @Autowired
   private UserMemberService userService;

   
       //DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
      
      @RequestMapping(value = "/{url}.do")
      public String userJoin(@PathVariable String url) {
      System.out.println("customer 경로:" + url);
       return "/customer/" + url;
      }
      
      // 회원 가입 아이디 중복일때 :9 /  회원가입 완료: 1
      @RequestMapping(value = "insertCustomer.do", method = RequestMethod.POST)
      public String insertCustomer(UserMemberVO vo, HttpSession session, HttpServletRequest request,  Model m) throws IOException {
         System.out.println("=>UserController.java::insertCustomer.do");
        if (userService.checkId(vo) != null) {
           // id exists in DB. Make customer input different id
           //session.setAttribute("sok", 9);
        	m.addAttribute("sok", 9);
           return "/customer/index"; 
        }
        int insertResult = userService.insertCustomer(vo);
        System.out.println("  USER INSERTED::" + insertResult);
        request.setAttribute("ok", insertResult);
        //session.setAttribute("sok",1);
        //request.setAttribute("sok", 1);
        m.addAttribute("sok", 1);
        return "/customer/index";
      }
      
      // 로그아웃
      @RequestMapping(value="logout.do")
     public String logout(HttpServletRequest request,  Model m ) {
         System.out.println("logout.do-------------------------------");
        HttpSession session = request.getSession(true);
        session.invalidate();
        return "/customer/index";
     }
      
      // 로그인
      @RequestMapping(value = "loginCustomer.do")
     public String loginCustomer(UserMemberVO vo, HttpSession session, Model m) {
        System.out.println("=>UserController.java::loginCustomer.do :"+ vo   );
        UserMemberVO loginResult = userService.loginCustomer(vo);
        if (loginResult != null) { // login success!
           session.setAttribute("loginId", vo.getUserid());
           session.setAttribute("loginPass",vo.getPass() );
           return "/customer/index";
        }else {
        // 로그인 실패
        //session.setAttribute("sok", 5);
        	m.addAttribute("sok", 5);
        }
        return "/customer/index";
     }
     // ---user login end
      
     
      
   /*
      // 글 목록 검색
      @RequestMapping("/getBoardList.do")
      public void getBoardList(BoardVO vo, Model model) {
         model.addAttribute("boardList",boardService.getBoardList(vo)) ;    
         
      }
     
   
         
      }

      // 글 수정
      @RequestMapping("/updateBoard.do")
      public void updateBoard(BoardVO vo) {

         
      }

      // 글 삭제
      @RequestMapping("/deleteBoard.do")
      public void deleteBoard(BoardVO vo) {

         
      }

      // 글 상세 조회
      @RequestMapping("/getBoard.do")
      public void getBoard(BoardVO vo, Model model) {
         BoardVO result = boardService.getBoard(vo);
         model.addAttribute("board",result);
      }
*/
   }