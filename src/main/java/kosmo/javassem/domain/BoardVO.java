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
    
    //페이징 변수들
    /*
    private int page;
	private int perPageNum;
	private int rowStart;
	private int rowEnd;
    
	public BoardVO() {
		this.page = 1;
		this.perPageNum = 10;
	}
	
	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum) {
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}
	
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	public int getPerPageNum() {
		return this.perPageNum;
	}
	
	public int getRowStart() {
		rowStart = ((page - 1) * perPageNum) + 1;
		return rowStart;
	}
	
	public int getRowEnd() {
		rowEnd = rowStart + perPageNum - 1;
		return rowEnd;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", rowStart=" + rowStart + ", rowEnd=" + rowEnd
				+ "]";
	}
   */
}