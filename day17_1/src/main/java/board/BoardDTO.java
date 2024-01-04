package board;

import java.sql.Date;

//	IDX       NOT NULL NUMBER         
//	CATEGORY  NOT NULL VARCHAR2(100)  
//	TITLE     NOT NULL VARCHAR2(500)  
//	WRITER    NOT NULL VARCHAR2(100)  
//	CONTENT   NOT NULL VARCHAR2(4000) 
//	WRITEDATE          DATE

public class BoardDTO {
	private int idx;
	private String category;
	private String title;
	private String writer;
	private String content;
	private Date writeDate;
	
	private int reply_count;
	

	public int getReply_count() {
		return reply_count;
	}
	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	
	
}
