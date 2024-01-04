package member;
//	IDX    NOT NULL NUMBER        
//	USERID NOT NULL VARCHAR2(100) 
//	USERPW NOT NULL VARCHAR2(500) 
//	AGE    NOT NULL NUMBER 

public class MemberDTO {
	
	private int idx;
	private String userid;
	private String userpw;
	private int age;
	
	private int board_count;
	private int reply_count;
	
	
	public int getReply_count() {
		return reply_count;
	}
	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}
	public int getBoard_count() {
		return board_count;
	}
	public void setBoard_count(int board_count) {
		this.board_count = board_count;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	

}
