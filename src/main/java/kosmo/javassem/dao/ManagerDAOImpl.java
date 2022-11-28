package kosmo.javassem.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosmo.javassem.domain.ManagerVO;



@Repository("managerDAO") 
public class ManagerDAOImpl implements ManagerDAO{
   
   @Autowired
   private SqlSessionTemplate mybatis;

   // 일별 매출 합계
         public List<ManagerVO> totalDateList(ManagerVO vo) {
             System.out.println("=>ManagerDAOImpl.java::UserMapper::totalDateList");
             return mybatis.selectList("ManagerDAO.totalDateList", vo);
          }
   // 지점별 매출 합계
         public List<ManagerVO> totalBranchH() {
             System.out.println("=>ManagerDAOImpl.java::UserMapper::totalBranchH");
             return mybatis.selectList("ManagerDAO.totalBranchH");
          }
         public List<ManagerVO> totalBranchA() {
             System.out.println("=>ManagerDAOImpl.java::UserMapper::totalBranchA");
             return mybatis.selectList("ManagerDAO.totalBranchA");
          }
         public List<ManagerVO> totalBranchG() {
             System.out.println("=>ManagerDAOImpl.java::UserMapper::totalBranchG");
             return mybatis.selectList("ManagerDAO.totalBranchG");
          }
         public List<ManagerVO> totalBranchT() {
             System.out.println("=>ManagerDAOImpl.java::UserMapper::totalBranchT");
             return mybatis.selectList("ManagerDAO.totalBranchT");
          }
         
   // 테마별 매출 합계
         public List<HashMap> totalThemeH() {
            System.out.println("=>ManagerDAOImpl.java::UserMapper::totalThemeH");
            return mybatis.selectList("ManagerDAO.totalThemeH");
         }
         public List<HashMap> totalThemeI() {
            System.out.println("=>ManagerDAOImpl.java::UserMapper::totalThemeI");
            return mybatis.selectList("ManagerDAO.totalThemeI");
         }      
         public List<HashMap> totalThemeC() {
            System.out.println("=>ManagerDAOImpl.java::UserMapper::totalThemeC");
            return mybatis.selectList("ManagerDAO.totalThemeC");
         }      
         public List<HashMap> totalThemeF() {
            System.out.println("=>ManagerDAOImpl.java::UserMapper::totalThemeF");
            return mybatis.selectList("ManagerDAO.totalThemeF");
         }      
         public List<HashMap> totalThemeE() {
            System.out.println("=>ManagerDAOImpl.java::UserMapper::totalThemeE");
            return mybatis.selectList("ManagerDAO.totalThemeE");
         }    
         
    // 시간별 매출 합계
        public List<ManagerVO> totalTime10() {
            System.out.println("=>ManagerDAOImpl.java::UserMapper::totalTime10");
            return mybatis.selectList("ManagerDAO.totalTime10");
         } 
        public List<ManagerVO> totalTime12() {
        	System.out.println("=>ManagerDAOImpl.java::UserMapper::totalTime12");
        	return mybatis.selectList("ManagerDAO.totalTime12");
        } 
        public List<ManagerVO> totalTime14() {
        	System.out.println("=>ManagerDAOImpl.java::UserMapper::totalTime14");
        	return mybatis.selectList("ManagerDAO.totalTime14");
        } 
        public List<ManagerVO> totalTime16() {
        	System.out.println("=>ManagerDAOImpl.java::UserMapper::totalTime16");
        	return mybatis.selectList("ManagerDAO.totalTime16");
        } 
        public List<ManagerVO> totalTime18() {
        	System.out.println("=>ManagerDAOImpl.java::UserMapper::totalTime18");
        	return mybatis.selectList("ManagerDAO.totalTime18");
        } 
        public List<ManagerVO> totalTime20() {
        	System.out.println("=>ManagerDAOImpl.java::UserMapper::totalTime20");
        	return mybatis.selectList("ManagerDAO.totalTime20");
        } 
        
        
}