package kosmo.javassem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import kosmo.javassem.domain.QnaCommentVO;
import kosmo.javassem.service.QnaCommentService;


@RestController
public class qnaCommentController {

	@Autowired
	private QnaCommentService replyService;
   
   @PostMapping("qnareplies/new")
   public String insert(QnaCommentVO vo) {
      System.out.println("입력 요청 : " + vo);
      int result= replyService.insertQnaReply(vo);
      if(result==1) return "success";
      return "fail";
   }
   
   @GetMapping("qnareplies")
   public List<QnaCommentVO> selectAll(Integer seq) {
	   System.out.println("seq=>"+seq+"번 글 불러오기");
	   return replyService.selectAllQnaReply(seq);
   }
   
   @DeleteMapping("qnareplies/{rno}")
   public void delete(@PathVariable Integer rno) {
	   System.out.println(rno+"번 삭제");
	   replyService.deleteQnaReply(rno);
   }



}