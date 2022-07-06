package student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class StudentDAO {
	
	Connection conn; // 연결객체
	PreparedStatement ps; //전송객체
	ResultSet rs; //결과객체
	
	public Connection getConn() {
		String url = "jdbc:oracle:thin:@221.144.89.105:3301:XE";
		String user = "hanul";
		String password = "0000";
		//oracle.jdbc.driver.OracleDriver ※이거 꼭!! 확인 하기!!
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			
		} catch (Exception e) {//전체 Exception으로 바꿔주기 
			e.printStackTrace();
			System.out.println("getConn Error!!!");
		} 
		return conn;
	}//getConn()
	
	public void dbClose() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close(); 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}//dbClose()

//	ArrayList<StudentDTO> 를 10건 리턴하는 메소드 작성
//	getManualList();

//	접근제한자 리턴타입 메소드이름() {
//	}
	public void selectOne() {
		getConn();
//		String sql = " SELECT u.student_no, s.student_name, u.user_id, u.last_name, u.first_name FROM user_info u LEFT OUTER JOIN student s ON u.student_no = s.student_no ";
		String sql = " SELECT 1 as num1 FROM dual ";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println(rs.getInt("num1"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("selectOne !!!");
		} finally {
			dbClose();
		}
	}
	
	public ArrayList<StudentDTO> getList() {
		ArrayList<StudentDTO> list = new ArrayList<>();
		conn = getConn();
		String sql = " SELECT u.*, s.student_name FROM user_info u LEFT OUTER JOIN student s ON u.student_no = s.student_no ";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while ( rs.next() ) {
				
					list.add(new StudentDTO(rs.getInt("student_no"), rs.getString("student_name"), 
							rs.getString("user_id"), rs.getString("user_pw"), rs.getString("first_name"), rs.getString("last_name")));
//					System.out.println(rs.getInt("student_no")+rs.getString("student_name")+rs.getString("user_id")
//						+rs.getString("user_pw")+rs.getString("last_name")+rs.getString("first_name"));
			}
			System.out.println(list.size());
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("SOS!!getList!!");
		} finally {
			dbClose();
		}
		return list;
	}
	
	
	
	
	
	
	// HttpServletRequest req = Controller.req;
		// String abc = Controller."";
		// 1 .String student_no , user_id ; ☆☆☆★★★★★
		public StudentDTO getStudentInfo(String student_no , String user_id) {// 해당하는 메소드가 실행될때 필요한 변수를 어떤곳에 입력받아서 사용하기.
			StudentDTO dto = null;
			getConn();
			String sql = " SELECT u.* , s.student_name  FROM USER_INFO u left outer join STUDENT s on u.STUDENT_NO = s.STUDENT_NO "
					+ " where  u.STUDENT_NO= ? AND u.USER_ID=? ";
			try {
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, student_no);
				ps.setString(2, user_id);
				
			//	ps.setString(1, req.getParameter("studentno")); req를 이용하면 항상 req.getparamter가 있는경우에만 이용이가능
															  //재활용이나 여러 플랫폼에서 활용하기엔 불편함
			//	ps.setString(2, req.getParameter("user_id"));
				rs = ps.executeQuery();
				
				while(rs.next()) {
					dto = new StudentDTO(
							rs.getInt("student_no"),
							rs.getString("student_name"), 
							rs.getString("user_id"), 
							rs.getString("user_pw"), 
							rs.getString("first_name"), 
							rs.getString("last_name") 
							);
					dto.setAdmin_yn(rs.getString("admin_yn"));
					dto.setMoney(rs.getInt("money"));
					dto.setCreate_ymd(rs.getString("create_ymd"));
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbClose();
			}
			
			return dto;
		}

		public int modifyInfo(StudentDTO dto) {
			getConn();
//									student_no, student_name, user_id, user_pw, first_name, last_name 
			String sql = " UPDATE user_info SET first_name = ?, last_name = ? WHERE  student_no = ? AND user_id = ? ";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, dto.getFirst_name());
				ps.setString(2, dto.getLast_name());
				ps.setInt(3, dto.getStudent_no());
				ps.setString(4, dto.getUser_id());
				return ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("modify!!");
			} finally {
				dbClose();
			}
			return 0;
		}
		
		public void deleteInfo(String student_no, String user_id ) {
			
			getConn();
			String sql = "DELETE FROM user_info WHERE student_no = ? AND user_id = ? ";
			try {
				ps = conn.prepareStatement(sql);
				ps.setString(1, student_no);
				ps.setString(2, user_id);
				ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				dbClose();
			}
			
			
			
		}
	
	
	
	
	
	
	
	
	
	
////	ArrayList<StudentDTO> list
////	HttpServletRequest req = Controller.req;
////	1. String student_no, user_id => 재활용이 가능하게 메소드를 만든다.
////	2. HttpServletRequest req
////	public StudentDTO getStudentInfo(HttpServletRequest req) {// 해당
//	public StudentDTO getStudentInfo(String student_no, String user_id) {// 해당
//		StudentDTO dto = null;
////		int student_no, String student_name, String user_id, String user_pw, String first_name, String last_name
//		
//		conn = getConn();
//		int stdNum = Integer.parseInt(student_no);
//		String sql = " SELECT * FROM user_info WHERE student_no = ? AND user_id = ? ";
//		원인을 알았지비!!! sql문이 잘못됐지비!!! 아아아아악!!!!! 멍청이!! ㅠㅅㅠ
//		try {
//			ps = conn.prepareStatement(sql);
//			ps.setInt(1, stdNum);
//			ps.setString(2, user_id);
////			ps.setInt(1, req.getParameter("student_no")); req를 이용하면 항상 req.getParameter가 있는 경우에만 이용이 가능
////															재활용이나 여러 플랫폼에서 활용하기엔 불편함
////			ps.setString(2, req.getParameter("user_id"));
//			rs = ps.executeQuery();
//			while(rs.next()) {
//				dto = new StudentDTO(rs.getInt("student_no")
//						, rs.getString("student_name")
//						, rs.getString("user_id")
//						, rs.getString("user_pw")
//						, rs.getString("first_name")
//						, rs.getString("last_name"));
//				dto.setAdmin_yn(rs.getString("admin_yn"));
//				dto.setMoney(rs.getInt("money"));
//				dto.setCreate_ymd(rs.getString("create_ymd"));
////				System.out.println("DAO에서 DTO한건 내용 한건 조회중" + rs.getString("student_name"));
////				dto.setStudent_no(rs.getInt("student_no"));
////				dto.setStudent_name(rs.getString("student_name"));
////				dto.setUser_id(rs.getString("user_id"));
////				dto.setUser_pw(rs.getString("user_pw"));
////				dto.setFirst_name(rs.getString("first_name"));
////				dto.setLast_name(rs.getString("last_name"));
//				System.out.println("다녀왔습니다!!");
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			dbClose();
//		}
//		
//		
//		
//		
//		
//		return dto;
//	}
	
//	public ArrayList<StudentDTO> getManualList() {//정보 
//		StudentDTO dto = new StudentDTO();
//		↑객체를 새로 생성을 하면 list.add(dto); 로 넣어줘야하고
//		list.add(new StudentDTO(11, "HTJ", "123", "Taeja", "Hwang"));
//		list.add(new) ← new 로 바로 생성을 하면 되니 이렇게 만들어주자!!
		

//		ArrayList<StudentDTO> list = new ArrayList<>();
//		for(int i = 0; i <= 10; i++) {
//			list.add(new StudentDTO("황아인", "HTJ", "123", "Taeja", "Hwang", 11));//이렇게 바로 들어가도 된다.
//		}
//		return list;
//	}
	
	
	
}
