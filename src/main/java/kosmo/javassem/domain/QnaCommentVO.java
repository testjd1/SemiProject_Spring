package kosmo.javassem.domain;

import lombok.Data;

@Data
public class QnaCommentVO {
	
    private int seq; 		//댓글번호
    private String userid;  //ID
    private String comm; //댓글 내용
    private String bno;    //board글번호
    private String commtime; //작성일

}
