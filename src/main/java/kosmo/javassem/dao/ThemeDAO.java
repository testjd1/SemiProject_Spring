package kosmo.javassem.dao;

import java.util.List;

import kosmo.javassem.domain.ThemeVO;

public interface ThemeDAO {
   
   public List<ThemeVO> themeAll(ThemeVO vo) ;
   public ThemeVO themeSang(ThemeVO vo) ;

}