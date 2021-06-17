package dash;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	
	//getList 메소드 - 존재하는 게시글 리스트를 불러오는 메소드
	public ArrayList<tasks> getList(int pageNumber){
		String sql = "select * from dash where dashID < ? and dashAvailable = 1 order by dashID desc limit 10";
		ArrayList<tasks> list = new ArrayList<tasks>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				tasks tasks = new tasks();
				tasks.setDashID(rs.getInt(1));
				tasks.setDashTitle(rs.getString(2));
				tasks.setDashDate(rs.getString(3));
				tasks.setDashContent(rs.getString(4));
				tasks.setDashAvailable(rs.getInt(5));
				tasks.setDashDifficulty(rs.getString(6));
				list.add(tasks);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	//nextPage - 페이징 처리 메소드
	//게시글이 10개에서 11개로 넘어갈때 다음버튼을 만들어 페이징 처리를 위한 메소드
	public boolean nextPage(int pageNumber) {
		String sql = "select * from tasks where dashID < ? and dashAvailable = 1";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
//	public int write(String dashTitle, String dashContent, String dashDifficulty) {
//		String sql = "insert into dash(aaaa,bbbb,ccc,sd) values(?, ?, ?, ?, ?, ?)";
//		try {
//			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, getNext());
//			pstmt.setString(2, dashTitle);
//			pstmt.setString(3, getDate());
//			pstmt.setString(4, dashContent);
//			pstmt.setInt(5, 1); //글 유효번호
//			pstmt.setString(6, dashDifficulty);
//			return pstmt.executeUpdate();
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
//		return -1;
//	}
	
	
	public int checked(String dashCheck) {
		String sql="UPDATE dash SET dashCheck = (?)";
		try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,dashCheck);
				return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	
}











