package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn; // java -- connection --> DB
	private PreparedStatement pstmt; // query 대기 & 설정
	private ResultSet rs; // 결과값 받기

	public UserDAO() {
		try {
			String dbURL = "jdbc:mariadb://localhost:3306/BB";
			String dbID = "root";
			String dbPassword = "803100";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 로그인 영역
	public int login(String userID, String userPassword) {
		String sql = "select userPassword from user where userID = ?";
		try {
			pstmt = conn.prepareStatement(sql); // sql쿼리문을 대기 시킨다
			pstmt.setString(1, userID); // 첫번째 '?'에 매개변수로 받아온 'userID'를 대입
			rs = pstmt.executeQuery(); // 쿼리를 실행한 결과를 rs에 저장
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) {
					return 1; // 로그인 성공
				} else
					return 0; // 비밀번호 틀림
			}
			return -1; // 아이디 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 오류
	}

	public int join(User user) {
		String sql = "insert into user values(?, ?, ?, ?, ?)"; // 'user' 테이블에 데이터를 입력하는 쿼리문
		try {
			pstmt = conn.prepareStatement(sql); // 'sql' 쿼리문을 대기
			pstmt.setString(1, user.getUserID()); // '1'번째 물음표에 실제 사용자가 입력한 'UserID'를 셋팅
			pstmt.setString(2, user.getUserPassword());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate(); // 실제 DB에서 'insert'를 정상적으로 입력하면 'Query 1 OK' 라고
											// 뜨는데 그 숫자를 받아온다. 따라서 정상적으로 데이터가 입력되었다면 반드시 1 이상의 숫자가 리턴될 것이다.
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
 