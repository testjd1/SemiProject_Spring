package kosmo.javassem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kosmo.javassem.domain.BoardCommentVO;
import kosmo.javassem.service.BoardCommentService;


@RestController
public class BoardCommentController {

	@Autowired
	private BoardCommentService replyService;
   
   @PostMapping("replies/new")
   public String insert(String bno, String userid, String comm) {
      BoardCommentVO vo = new BoardCommentVO();
	  vo.setBno(bno);
	  vo.setComm(comm);
	  vo.setUserid(userid);      
	   
	  System.out.println("-------->입력 요청 : " + vo);
      int result= replyService.insertReply(vo);
      if(result==1) return "success";
      return "fail";
   }
   
   @GetMapping("replies")
   public List<BoardCommentVO> selectAll(Integer seq) {
	   System.out.println("seq=>"+seq+"번 글 불러오기");
	   return replyService.selectAllReply(seq);
   }
   
   @DeleteMapping("replies/{rno}")
   public void delete(@PathVariable Integer rno) {
	   System.out.println(rno+"번 삭제");
	   replyService.deleteReply(rno);
   }



}