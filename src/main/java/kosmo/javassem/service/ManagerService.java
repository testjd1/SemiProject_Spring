
package kosmo.javassem.service;

import java.util.HashMap;
import java.util.List;

import kosmo.javassem.domain.ManagerVO;



public interface ManagerService {
   // 일별 매출 합계
      List<ManagerVO> totalDateList(ManagerVO vo);
      
   // 지점별 매출 합계
      List<ManagerVO> totalBranchH();
      List<ManagerVO> totalBranchA();
      List<ManagerVO> totalBranchG();
      List<ManagerVO> totalBranchT();
      
   // 테마별 매출 합계
      List<HashMap> totalThemeH();
      List<HashMap> totalThemeI();
      List<HashMap> totalThemeC();
      List<HashMap> totalThemeF();
      List<HashMap> totalThemeE();
      
   // 시간별 매출 합계
      List<ManagerVO> totalTime10();
      List<ManagerVO> totalTime12();
      List<ManagerVO> totalTime14();
      List<ManagerVO> totalTime16();
      List<ManagerVO> totalTime18();
      List<ManagerVO> totalTime20();
      
      
      
      
      
      
}