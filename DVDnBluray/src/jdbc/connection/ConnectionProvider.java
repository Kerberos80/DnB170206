package jdbc.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// DriverManager 에 설정된 ConnectionPool 로 부터 Connection 을 가여오는 클래스
public class ConnectionProvider {
	
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:apache:commons:dbcp:dnb");
	}

}