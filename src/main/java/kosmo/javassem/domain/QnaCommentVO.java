package kosmo.javassem.domain;

import lombok.Data;

@Data
public class QnaCommentVO {
	
    private int seq; 		//글번호
    private String userid;  //ID
    private String comm; //댓글 내용
    private String pass;    //password
    private String commtime; //작성일

}
