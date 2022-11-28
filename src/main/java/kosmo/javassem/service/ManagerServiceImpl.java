package kosmo.javassem.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kosmo.javassem.dao.ManagerDAOImpl;
import kosmo.javassem.domain.ManagerVO;



@Service
public class ManagerServiceImpl implements ManagerService {
   @Autowired
   private ManagerDAOImpl managerDAO;
   
   // 일별 매출 합계
      @Override
      public List<ManagerVO> totalDateList(ManagerVO vo) {
         return managerDAO.totalDateList(vo);
      }
      
      // 지점별 매출 합계
      @Override
      public List<ManagerVO> totalBranchH() {
         return managerDAO.totalBranchH();
      }
      @Override
      public List<ManagerVO> totalBranchA() {
         return managerDAO.totalBranchA();
      }
      @Override
      public List<ManagerVO> totalBranchG() {
         return managerDAO.totalBranchG();
      }
      @Override
      public List<ManagerVO> totalBranchT() {
         return managerDAO.totalBranchT();
      }
      
   
      // 테마별 매출 합계
      @Override
      public List<HashMap> totalThemeH() {
         return managerDAO.totalThemeH();
      }
      @Override
      public List<HashMap> totalThemeI() {
         return managerDAO.totalThemeI();
      }
      
      @Override
      public List<HashMap> totalThemeC() {
         return managerDAO.totalThemeC();
      }
      
      @Override
      public List<HashMap> totalThemeF() {
         return managerDAO.totalThemeF();
      }
      
      @Override
      public List<HashMap> totalThemeE() {
         return managerDAO.totalThemeE();
      }
      
      
   // 지점별 매출 합계
      @Override
      public List<ManagerVO> totalTime10() {
         return managerDAO.totalTime10();
      }
     
      public List<ManagerVO> totalTime12() {
    	  return managerDAO.totalTime12();
      }
      
      public List<ManagerVO> totalTime14() {
    	  return managerDAO.totalTime14();
      }
      
      public List<ManagerVO> totalTime16() {
    	  return managerDAO.totalTime16();
      }
      
      public List<ManagerVO> totalTime18() {
    	  return managerDAO.totalTime18();
      }
      
      public List<ManagerVO> totalTime20() {
    	  return managerDAO.totalTime20();
      }
      
      
}