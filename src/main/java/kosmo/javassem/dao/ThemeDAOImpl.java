package kosmo.javassem.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kosmo.javassem.domain.ThemeVO;

@Repository("themeDAO")
public class ThemeDAOImpl implements ThemeDAO {
   @Autowired
   private SqlSessionTemplate mybatis;
   
   public List<ThemeVO> themeAll(ThemeVO vo) {
      System.out.println("===> Mybatis themeAll() 호출");
      return mybatis.selectList("ThemeDAO.themeAll", vo);
   }
   
   public ThemeVO themeSang(ThemeVO vo) {
         System.out.println("===> Mybatis themeSang() 호출");
         return mybatis.selectOne("ThemeDAO.themeSang", vo);
      }

}