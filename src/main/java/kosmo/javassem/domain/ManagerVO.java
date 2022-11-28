package kosmo.javassem.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class ManagerVO {
      private int seq;       // 테마 순서
      private String userid;  // 고객 아이디
      private String regdate;   // 날짜
      private String time;   // 시간
      private int total; // 총액
      private String name;   // 사용자 이름
      private String tel;   // 전화 번호
      private int peoplecount; // 예약 인원
      private String branch;    // 지점 명
      private String themeseq;   // 사진 번호
      private String themename;   // 테마 명
      private String picture;      // 사진 명
      private String day1;
      private String day2;
     
   @Override
public String toString() {
   return "ManagerVO [seq=" + seq + ", userid=" + userid + ", regdate=" + regdate + ", time=" + time + ", total="
         + total + ", name=" + name + ", tel=" + tel + ", peoplecount=" + peoplecount + ", branch=" + branch
         + ", themeseq=" + themeseq + ", themename=" + themename + ", picture=" + picture + ", day1=" + day1
         + ", day2=" + day2 + "]";
}

}