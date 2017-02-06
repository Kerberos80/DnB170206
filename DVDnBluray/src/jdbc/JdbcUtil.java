package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

// database Close & Rollback 클래스
public class JdbcUtil {
	
	// ResultSet closer
	public static void close(ResultSet resultSet) {
		if(resultSet != null) {
			try { 	resultSet.close(); } 
			catch(SQLException ex) { }
		}
	}
	
	// Statement closer
	public static void close(Statement statement) {
		if(statement != null) {
			try { statement.close(); }
			catch(SQLException ex) { }
		}
	}
	
	// PreparedStatement closer
	public static void close(PreparedStatement preparedStatement) {
		if(preparedStatement != null) {
			try { preparedStatement.close(); }
			catch(SQLException ex) { } 
		}
	}
	
	// Connection closer
	public static void close(Connection connection) {
		if(connection != null) {
			try { connection.close(); }
			catch(SQLException ex) { }
		}
	}
	
	// Rollback 처리
	public static void rollback(Connection connection) {
		if(connection != null) {
			try { connection.rollback(); }
			catch(SQLException ex) { }
		}
	}
	
}