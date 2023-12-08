package ex06;

public class MemberDTO {
	private String name;
	private String imgPath;
	
	public MemberDTO() {}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
		this.imgPath = "image/" + name + ".png";
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {

		this.imgPath = imgPath;
	}
	

	// 다른 생성자를 정의할 때 자바빈을 써야한다면 무조건 기본생성자를 만들어야 한다.
	
//	public MemberDTO(String name) {
//		this.name = name;
//		this.imgPath = "image/" + name + ".png";
//	}
	
	

}
