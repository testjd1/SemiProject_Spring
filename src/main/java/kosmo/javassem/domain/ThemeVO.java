package kosmo.javassem.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ThemeVO {

   private int seq;       // 테마 번호
   private String themename;  // 테마 이름
   private String themegenre;   // 테마 장르
   private String thlevel;   // 테마 레벨
   private String runtime; // 진행시간
   private String thcost;   // 인당 테마 가격
   private String peoplecount; // 추천 예약 인원
   private String branch;    // 지점명
   private String content;      // 테마 설명
   private String picture;      // 파일명
   private long b_fsize;      // 파일크기
   @Override
   public String toString() {
      return "ThemeVO [seq=" + seq + ", themename=" + themename + ", themegenre=" + themegenre + ", thlevel="
            + thlevel + ", runtime=" + runtime + ", thcost=" + thcost + ", peoplecount=" + peoplecount + ", branch="
            + branch + ", content=" + content + ", picture=" + picture + ", b_fsize=" + b_fsize + ", file=" + file
            + "]";
   }
   public int getSeq() {
      return seq;
   }
   public void setSeq(int seq) {
      this.seq = seq;
   }
   public String getThemename() {
      return themename;
   }
   public void setThemename(String themename) {
      this.themename = themename;
   }
   public String getThemegenre() {
      return themegenre;
   }
   public void setThemegenre(String themegenre) {
      this.themegenre = themegenre;
   }
   public String getThlevel() {
      return thlevel;
   }
   public void setThlevel(String thlevel) {
      this.thlevel = thlevel;
   }
   public String getRuntime() {
      return runtime;
   }
   public void setRuntime(String runtime) {
      this.runtime = runtime;
   }
   public String getThcost() {
      return thcost;
   }
   public void setThcost(String thcost) {
      this.thcost = thcost;
   }
   public String getPeoplecount() {
      return peoplecount;
   }
   public String getpicture() {
      return picture;
   }
   public void setpicture(String picture) {
      this.picture = picture;
   }
   public long getB_fsize() {
      return b_fsize;
   }
   public void setB_fsize(long b_fsize) {
      this.b_fsize = b_fsize;
   }
   public void setPeoplecount(String peoplecount) {
      this.peoplecount = peoplecount;
   }
   public String getBranch() {
      return branch;
   }
   public void setBranch(String branch) {
      this.branch = branch;
   }

   public String getContent() {
      return content;
   }
   public void setContent(String content) {
      this.content = content;
   }


   MultipartFile file;            // ****************************
   // 화면에서 type='file name='xfile'이라서 변수명 file

   public MultipartFile getFile() {
      return file;
   }

   public void setFile(MultipartFile file) {
      this.file = file;
      // 업로드 파일이 있는 경우
      if(!file.isEmpty()) {
         this.picture = file.getOriginalFilename();
         
         this.b_fsize = file.getSize();
         // 추 후에 파일 저장 위치를 서버의 경로를 얻어서 상대경로로 수정
         File f = new File("D:\\semi\\sosBoard\\src\\main\\webapp\\resources\\images\\"+ picture);
         try {
            file.transferTo(f);
         }catch(IllegalStateException|IOException e) {
            e.printStackTrace();
         }


      }
   }
}