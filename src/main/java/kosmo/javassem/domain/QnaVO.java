package kosmo.javassem.domain;

import lombok.Data;

@Data
public class QnaVO {

    private int seq; 		//글번호
    private String userid;  //ID
    private String title;   //제목
    private String regdate; //작성일
    private String content; //내용
    private String pass;    //password
	
}
