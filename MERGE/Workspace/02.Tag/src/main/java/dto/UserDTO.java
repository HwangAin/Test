package dto;

public class UserDTO {
	private String name;
	private int num;
	//생성자없이 getter & setter만 만들기
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
}
