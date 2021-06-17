package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;  // �ڹٿ� �����ͺ��̽��� ����.
	private PreparedStatement pstmt;   //������ ��� �� ����.
	private ResultSet rs; //����� �޾ƿ���

	//�⺻ ������ 
	//UserDAO�� ����Ǹ� �ڵ����� �����Ǵ� �κ�
	//�޼ҵ帶�� �ݺ��Ǵ� �ڵ� ����.
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
	
	//�α��� �޼ҵ� ����
	public int login(String userID, String userPassword) {  			 //userID, userPassword = login.jsp���� �Է��� input values.
		String sql = "select userPassword from user where userID = ?";   //��� ����? userPassword. ���? user ���̺���. �����. userID�� ?�ΰ�.
																		 //user���̺��� userID�� ����(�޾ƿð�)�� userPassword�� return�ض�. 
		try {
			pstmt = conn.prepareStatement(sql); // sql�������� ����Ŵ
			pstmt.setString(1, userID); // ù��° ?�� �Ű������� �޾ƿ� userID�� ����.
			rs = pstmt.executeQuery(); // "select userPassword from user where userID = �Ű�����userID" return (�Էµ� ���̵�
										// �ش�Ǵ� �н����� return)
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) { // if rs(result)�� ù��° ���� userPassword�� ��ġ�ϸ�
					return 1; // �α��� ���� ��ġ�ϴϱ�
				} else
					return 0; // ��й�ȣ Ʋ�� ���� ���Դµ� �н������ �ٸ��Ŵϱ�. ������� ���������� ������� userPassword�� ��ġ������ ����
			}
			return -1; // ���̵� ���� �������� �����Ͽ����� ������� ������ �ʾҴ�.
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // ����
	}
	
	//ȸ������ �޼ҵ� ����
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

