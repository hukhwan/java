package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {

	private Connection conn;
	private ResultSet rs;

	// 기본생성자
	public BbsDAO() {
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

	// DB 접근할때 method끼리 충돌이 일어나지 않도록 PreparedStatement는 각각 method내에서 추가
	// getDate - 작성일자 Method
	public String getDate() {
		String sql = "select now()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ""; // DB 오류
	}

	// 게시글 번호부여 Method
	public int getNext() {
		// 현재 게시글을 내림차순으로 조회하여, 가장 마지막 글의 번호를 구함.
		String sql = "select bbsID from bbs order by bbsID desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; // 첫번째 게시물인 경우
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;  // DB 오류
	}
	
	//글쓰기 Method
	public int write(String bbsTitle, String userID, String bbsContent) {
		String sql = "insert into bbs values(?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1); //글의 유효번호
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	
	//게시글 리스트 Method 내일.
	public ArrayList<Bbs> getList(int pageNumber){
		String sql = "select * from bbs where bbsID < ? and bbsAvailable = 1 order by bbsID desc limit 10";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getString(6));
				list.add(bbs);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}







