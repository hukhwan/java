package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;  // 자바와 데이터베이스를 연결.
	private PreparedStatement pstmt;   //쿼리문 대기 및 설정.
	private ResultSet rs; //결과값 받아오기

	//기본 생성자 
	//UserDAO가 실행되면 자동으로 생성되는 부분
	//메소드마다 반복되는 코드 삽입.
	public UserDAO() {
		try {
			String dbURL = "jdbc:mariadb://localhost:3306/BBS";
			String dbID = "root";
			String dbPassword = "803100";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//로그인 메소드 영역
	public int login(String userID, String userPassword) {  			 //userID, userPassword = login.jsp에서 입력한 input values.
		String sql = "select userPassword from user where userID = ?";   //어떤걸 선택? userPassword. 어디서? user 테이블에서. 어떤조건. userID가 ?인것.
																		 //user테이블에서 userID가 무엇(받아올값)인 userPassword를 return해라. 
		try {
			pstmt = conn.prepareStatement(sql); // sql쿼리문을 대기시킴
			pstmt.setString(1, userID); // 첫번째 ?에 매개변수로 받아온 userID를 대입.
			rs = pstmt.executeQuery(); // "select userPassword from user where userID = 매개변수userID" return (입력된 아이디에
										// 해당되는 패스워드 return)
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) { // if rs(result)값 첫번째 값이 userPassword와 일치하면
					return 1; // 로그인 성공 일치하니까
				} else
					return 0; // 비밀번호 틀림 값이 들어왔는데 패스워드랑 다른거니까. 결과값이 존재하지만 결과값이 userPassword와 일치하지는 않음
			}
			return -1; // 아이디 없음 쿼리문을 실행하였지만 결과값이 나오지 않았다.
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 오류
	}
	
	//회원가입 메소드 영역
	public int join(User user) {
		String sql = "insert into user values(?, ?, ?, ?, ?)"; // (userID, userPassword, userName, userGender, userEmail)
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
}

