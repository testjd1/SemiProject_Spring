package kosmo.javassem.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDateTime;

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
        logCustomer(" logged out at ", session);
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
           logCustomer(" logged in at ", session);
           return "/customer/index";
        }else {
        // 로그인 실패
        //session.setAttribute("sok", 5);
           m.addAttribute("sok", 5);
        }
        return "/customer/index";
     }
     // ---user login end
      
      
      
      
      public void logCustomer(String strToWrite, HttpSession session) {
        try {
           File myObj = new File("fileLog.txt");
           FileWriter myWriter = null;
           if (myObj.createNewFile()) {
              myWriter = new FileWriter("C:\\sosBoard\\src\\main\\fileLog.txt");
              LocalDateTime now = LocalDateTime.now();
              myWriter.write("Customer " + session.getAttribute("loginId") + strToWrite + String.valueOf(now));
              myWriter.write('\n');
           } else {
              // file already exists
              myWriter = new FileWriter("C:\\\\sosBoard\\\\src\\\\main\\\\fileLog.txt", true);
              LocalDateTime now = LocalDateTime.now();
              myWriter.write("Customer " + session.getAttribute("loginId") + strToWrite + String.valueOf(now));
              myWriter.write('\n');
           }
           myWriter.close();
        } catch (IOException e) {
           e.printStackTrace();
        }
     }// logCustomer
      
      
      
      //회원정보 수정 페이지
      @RequestMapping(value="/customerUpdateView.do", method = RequestMethod.GET)
      public String customerUpdateView(UserMemberVO vo,Model m) {
         UserMemberVO list = userService.getCustomer(vo);
         m.addAttribute("customer", list);
         return "/customer/customerUpdateView";
      }
      
      //회원정보 수정
      @RequestMapping(value="customerUpdate.do", method = RequestMethod.GET)
      public String customerUpdate(UserMemberVO vo, HttpSession session) {
         userService.customerUpdate(vo);
         //로그인 되어있던 세션을 끊고
         session.invalidate();
         //메인으로 돌아감
        return "redirect:/customer/index.do";
      }
      
      
      
      
   }//END UserMemberController