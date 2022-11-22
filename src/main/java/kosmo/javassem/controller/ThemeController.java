package kosmo.javassem.controller;

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
         return "/theme/"+step;
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
   
   
// 주제 입력   
   
}