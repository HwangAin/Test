
public class Test {

	public static void main(String[] args) {
		DAO dao = new DAO();
		DTO dto = new DTO();
		
//		System.out.println("이건 아마 메소드" + dao.getMethod);
		System.out.println("이건 아마 메소드일걸" + dao.userInfo());
		int num = dao.getMethod();
		if( num == 1 ) {
			System.out.println("숫자 뇸뇸");
			
		}else {
			System.out.println("엣헴!!");
			
		}
		
		
		
		
		
	}//m
	
}//c
