package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import kosmo.javassem.domain.ManagerVO;

public interface ManagerDAO {
   
   // 일별 매출 합계
      public List<ManagerVO> totalDateList(ManagerVO vo);
      
   // 지점별 매출 합계
      public List<ManagerVO> totalBranchH();   
      public List<ManagerVO> totalBranchA();   
      public List<ManagerVO> totalBranchG();   
      public List<ManagerVO> totalBranchT();
   
   // 테마별 매출 합계
      public List<HashMap> totalThemeH();
      public List<HashMap> totalThemeI();         
      public List<HashMap> totalThemeC();         
      public List<HashMap> totalThemeF();         
      public List<HashMap> totalThemeE();  

   // 지점별 매출 합계
      public List<ManagerVO> totalTime10();   
      public List<ManagerVO> totalTime12();   
      public List<ManagerVO> totalTime14();   
      public List<ManagerVO> totalTime16();   
      public List<ManagerVO> totalTime18();   
      public List<ManagerVO> totalTime20();   
    
}