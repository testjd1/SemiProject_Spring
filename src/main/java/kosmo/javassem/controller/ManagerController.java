package kosmo.javassem.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import kosmo.javassem.domain.ManagerVO;
import kosmo.javassem.domain.ReservationVO;
import kosmo.javassem.service.ManagerService;



@Controller
@RequestMapping(value ="manager")
public class ManagerController {
  
   @Autowired
   private ManagerService managerService;

   
       //DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
      
      @RequestMapping("/{url}.do")
      public String userJoin(@PathVariable String url) {
      System.out.println("경로:" + url);
       return "/manager/" + url;
      }
      
     @GetMapping("index_m.do")
     public void totalDateList(ManagerVO vo, Model m) {
        

     // 지점별 매출 계산
        List<ManagerVO> totalBranchH = managerService.totalBranchH();
        List<ManagerVO> totalBranchA = managerService.totalBranchA();
        List<ManagerVO> totalBranchG = managerService.totalBranchG();
        List<ManagerVO> totalBranchT = managerService.totalBranchT();
        System.out.println("출력 브랜치:" );

        Gson gson1 = new Gson();
        JsonArray jArray1 = new JsonArray();
              
        Iterator<ManagerVO> it2 = totalBranchH.iterator();
        Iterator<ManagerVO> it3 = totalBranchA.iterator();
        Iterator<ManagerVO> it4 = totalBranchG.iterator();
        Iterator<ManagerVO> it5 = totalBranchT.iterator();
        /*
        System.out.println("토탈 값 홍대: " + it2);
        System.out.println("토탈 값 안양: " + it3);
        System.out.println("토탈 값 구미: " + it4);
        */
        //홍대
        while(it2.hasNext()) {
           ManagerVO RsVO = it2.next();
           JsonObject object = new JsonObject();
           String branch = "홍대";
           int total = RsVO.getTotal();
           object.addProperty("branch", branch);
           object.addProperty("total", total);
           jArray1.add(object);
        }
        //안양
        while(it3.hasNext()) {
           ManagerVO RsVO = it3.next();
           JsonObject object = new JsonObject();
           String branch = "안양";
           int total = RsVO.getTotal();
           object.addProperty("branch", branch);
           object.addProperty("total", total);
           jArray1.add(object);
        }
        //구미
        while(it4.hasNext()) {
           ManagerVO RsVO = it4.next();
           JsonObject object = new JsonObject();
           String branch = "구미";
           int total = RsVO.getTotal();
           object.addProperty("branch", branch);
           object.addProperty("total", total);
           jArray1.add(object);
        }
        //토탈
        while(it5.hasNext()) {
           ManagerVO RsVO = it5.next();
           JsonObject object = new JsonObject();
           String branch = "전 지점";
           int total = RsVO.getTotal();
           object.addProperty("branch", branch);
           object.addProperty("total", total);
           jArray1.add(object);
           }
   
              
        String json1 = gson1.toJson(jArray1);
        m.addAttribute("json1", json1);
        // 지점별 매출 계산 끝
        
        
     // 테마 별 매출 계산
        List<HashMap> totalThemeH = managerService.totalThemeH();
        List<HashMap> totalThemeI = managerService.totalThemeI();
        List<HashMap> totalThemeC = managerService.totalThemeC();
        List<HashMap> totalThemeF = managerService.totalThemeF();
        List<HashMap> totalThemeE = managerService.totalThemeE();
        System.out.println("출력 테마 : " );

        Gson gson3 = new Gson();
        JsonArray jArray3 = new JsonArray();
              
        Iterator<HashMap> it6 = totalThemeH.iterator();
        Iterator<HashMap> it7 = totalThemeI.iterator();
        Iterator<HashMap> it8 = totalThemeC.iterator();
        Iterator<HashMap> it9 = totalThemeF.iterator();
        Iterator<HashMap> it10 = totalThemeE.iterator();
        
        /*
        System.out.println("토탈 값 홍대: " + it2);
        System.out.println("토탈 값 안양: " + it3);
        System.out.println("토탈 값 구미: " + it4);
        */
        //호러
        
        while(it6.hasNext()) {
           HashMap RsVO = (HashMap) it6.next();
           System.out.println("출력rsvo " + RsVO);
           System.out.println("출력rsvos " + RsVO.get("SUM"));
        
           JsonObject object = new JsonObject();
           String  theme = "공포";
           int total = Integer.parseInt(String.valueOf( RsVO.get("SUM")));
           System.out.println("토탈 공포: " +total);

           object.addProperty("theme", theme);
           System.out.println("theme넣었음 " );
           object.addProperty("total", total);
           System.out.println("total넣었음 " );

           jArray3.add(object);
        }
        
     //잠입
        while(it7.hasNext()) {
           HashMap RsVO = (HashMap) it7.next();
           System.out.println("출력rsvo " + RsVO);
           System.out.println("출력rsvos " + RsVO.get("SUM"));
        
           JsonObject object = new JsonObject();
           String  theme = "잠입";
           int total = Integer.parseInt(String.valueOf( RsVO.get("SUM")));
           System.out.println("토탈 잠입: " +total);

           object.addProperty("theme", theme);
           System.out.println("theme넣었음 " );
           object.addProperty("total", total);
           System.out.println("total넣었음 " );
           jArray3.add(object);
        }//코믹
        while(it8.hasNext()) {
           HashMap RsVO = (HashMap) it8.next();
           JsonObject object = new JsonObject();
           String  theme = "코믹";
           int total = Integer.parseInt(String.valueOf( RsVO.get("SUM")));
           System.out.println("토탈 코믹: " +total);

           object.addProperty("theme", theme);
           System.out.println("theme넣었음 " );
           object.addProperty("total", total);
           System.out.println("total넣었음 " );
           jArray3.add(object);
        }//판타지
        while(it9.hasNext()) {
           HashMap RsVO = (HashMap) it9.next();
           JsonObject object = new JsonObject();
           String  theme = "판타지";
           int total = Integer.parseInt(String.valueOf( RsVO.get("SUM")));
           System.out.println("토탈 1: " +total);

           object.addProperty("theme", theme);
           System.out.println("theme넣었음 " );
           object.addProperty("total", total);
           System.out.println("total넣었음 " );
           jArray3.add(object);
        }//감성
        while(it10.hasNext()) {
           HashMap RsVO = (HashMap) it10.next();
           JsonObject object = new JsonObject();
           String  theme = "감성";
           int total = Integer.parseInt(String.valueOf( RsVO.get("SUM")));
           System.out.println("토탈 1: " +total);

           object.addProperty("theme", theme);
           System.out.println("theme넣었음 " );
           object.addProperty("total", total);
           System.out.println("total넣었음 " );
           jArray3.add(object);
        }     
        String json3 = gson3.toJson(jArray3);
        m.addAttribute("json3", json3);
        // 테마 별 매출 계산 끝
        
        
        // 시간별 매출 계산
        List<ManagerVO> totalTime10 = managerService.totalTime10();
        List<ManagerVO> totalTime12 = managerService.totalTime12();
        List<ManagerVO> totalTime14 = managerService.totalTime14();
        List<ManagerVO> totalTime16 = managerService.totalTime16();
        List<ManagerVO> totalTime18 = managerService.totalTime18();
        List<ManagerVO> totalTime20 = managerService.totalTime20();
        System.out.println("출력 타임:" );

        Gson gson4 = new Gson();
        JsonArray jArray4 = new JsonArray();
              
        Iterator<ManagerVO> it11 = totalTime10.iterator();
        Iterator<ManagerVO> it12 = totalTime12.iterator();
        Iterator<ManagerVO> it13 = totalTime14.iterator();
        Iterator<ManagerVO> it14 = totalTime16.iterator();
        Iterator<ManagerVO> it15 = totalTime18.iterator();
        Iterator<ManagerVO> it16 = totalTime20.iterator();
        /*
        System.out.println("토탈 값 홍대: " + it2);
        System.out.println("토탈 값 안양: " + it3);
        System.out.println("토탈 값 구미: " + it4);
        */
        //10시
        while(it11.hasNext()) {
           ManagerVO RsVO = it11.next();
           JsonObject object = new JsonObject();
           String time = "10시";
           int total = RsVO.getTotal();
           object.addProperty("time", time);
           object.addProperty("total", total);
           jArray4.add(object);
        }
        //12시
        while(it12.hasNext()) {
           ManagerVO RsVO = it12.next();
           JsonObject object = new JsonObject();
           String time = "12시";
           int total = RsVO.getTotal();
           object.addProperty("time", time);
           object.addProperty("total", total);
           jArray4.add(object);
        }
        //14시
        while(it13.hasNext()) {
           ManagerVO RsVO = it13.next();
           JsonObject object = new JsonObject();
           String time = "14시";
           int total = RsVO.getTotal();
           object.addProperty("time", time);
           object.addProperty("total", total);
           jArray4.add(object);
        }
        //16시
        while(it14.hasNext()) {
           ManagerVO RsVO = it14.next();
           JsonObject object = new JsonObject();
           String time = "16시";
           int total = RsVO.getTotal();
           object.addProperty("time", time);
           object.addProperty("total", total);
           jArray4.add(object);
        }
        //18시
        while(it15.hasNext()) {
           ManagerVO RsVO = it15.next();
           JsonObject object = new JsonObject();
           String time = "18시";
           int total = RsVO.getTotal();
           object.addProperty("time", time);
           object.addProperty("total", total);
           jArray4.add(object);
        }
        //20시
        while(it16.hasNext()) {
           ManagerVO RsVO = it16.next();
           JsonObject object = new JsonObject();
           String time = "20시";
           int total = RsVO.getTotal();
           object.addProperty("time", time);
           object.addProperty("total", total);
           jArray4.add(object);
        }
 
        String json4 = gson4.toJson(jArray4);
        m.addAttribute("json4", json4);
        // 지점별 매출 계산 끝

     }
     
     @ResponseBody
     @GetMapping("managerdate.do")
       public String managerDate(ManagerVO vo, Model m) throws Exception {
       // 일별 매출 계산
         
         System.out.println("출력 (날짜 1): " + vo.getDay1());
         System.out.println("출력 (날짜 2): " + vo.getDay2());

         List<ManagerVO> totalDateList = managerService.totalDateList(vo);
         
         Gson gson2 = new Gson();
         JsonArray jArray2 = new JsonArray();
               
         Iterator<ManagerVO> it = totalDateList.iterator();
         while(it.hasNext()) {
            ManagerVO RsVO = it.next();
            JsonObject object = new JsonObject();
            String regdate = RsVO.getRegdate();
            int total = RsVO.getTotal();
            
             object.addProperty("date", regdate);
            object.addProperty("total", total);
            System.out.println(regdate);
            System.out.println(total);
            jArray2.add(object);
         }
        
         
               
         String json2 = gson2.toJson(jArray2);
         m.addAttribute("json2", json2);
         System.out.println(json2);
         return json2;
     
         // 일별 매출 계산 끝
    }
     
     
      
     
  
   }