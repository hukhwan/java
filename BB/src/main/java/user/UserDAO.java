package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn; //java -- connection --> DB
	private PreparedStatement pstmt;  //query ��� & ����
	private ResultSet rs;  //����� �ޱ�
	
	public UserDAO(){
		try {
			String dbURL = "jdbc:mariadb://localhost:3306/BB";
			String dbID = "root";
			String dbPassword = "803100";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//�α��� ����
	public int login(String userID, String userPassword) {
		String sql = "select userPassword from user where userID = ?";
		try {
			pstmt = conn.prepareStatement(sql); //sql�������� ��� ��Ų��
			pstmt.setString(1, userID); //ù��° '?'�� �Ű������� �޾ƿ� 'userID'�� ����
			rs = pstmt.executeQuery(); //������ ������ ����� rs�� ����
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1; //�α��� ����
				}else
					return 0; //��й�ȣ Ʋ��
			}
			return -1; //���̵� ����
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //����
	}
	
}
/*
 * package user;
 * 
 * import java.sql.Connection;
 * import java.sql.DriverManager;
 * import java.sql.PreparedStatement;
 * import java.sql.ResultSet;
 * 
 * public class */
 