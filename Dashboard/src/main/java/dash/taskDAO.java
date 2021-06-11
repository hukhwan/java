package dash;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class taskDAO {

	private Connection conn;
	private ResultSet rs;
	
	public taskDAO() {
		try {
			String dbURL = "jdbc:mariadb://localhost:3306/dash";
			String dbID = "root";
			String dbPassword = "803100";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);					
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//날짜.
	public String getDate() {
		String sql = "select now()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	//게시글 번호부여
	public int getNext() {
		String sql = "select dashID from dash order by dashID desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	//글쓰기
	public int write(String dashTitle, String dashContent, String dashDifficulty) {
		String sql = "insert into dash values(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, dashTitle);
			pstmt.setString(3, getDate());
			pstmt.setString(4, dashContent);
			pstmt.setInt(5, 1); //글 유효번호
			pstmt.setString(6, dashDifficulty);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}











