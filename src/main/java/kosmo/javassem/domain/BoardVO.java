package kosmo.javassem.domain;

import lombok.Data;

@Data
public class BoardVO {

    private int seq;       //글번호
    private String userid;  //ID
    private String title;   //제목
    private String name;   // 작성자
    private String regdate; //작성일
    private String email;   // 이메일
    private String content; //내용
    private String pass;    //password
    private String ping;
   
}