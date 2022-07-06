
public class Test {

	public static void main(String[] args) {
		DAO dao = new DAO();
		DTO dto = new DTO(12312, 12);
		
		System.out.println("이건 아마 메소드일걸" + dao.getSum(dto.getSalary(), dto.getDays()));
		
		
	}//m
	
}//c
