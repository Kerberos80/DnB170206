package memeber.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import member.model.Member;

// 회원 관련 DAO
public class MemberDAO {
	
	String query;	
	
	// 회원 id 로 검색 : 회원가입 시 ID 충복 체크, 회원정보수정 때 사용 
	public Member selectById(Connection connection, String id) throws SQLException {
		
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try {			
			query = "select * from member where id = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();
			
			Member member = null;
			
			if( resultSet.next() ) {
				member = new Member(	resultSet.getString("name"),
													resultSet.getString("id"),
													resultSet.getString("password"),
													resultSet.getInt("firstSSN"),
													resultSet.getInt("secondSSN"),
													resultSet.getString("cellPhone"),
													resultSet.getString("email"),
													resultSet.getString("address") );
			}			
			return member;			
		} finally { // 자원 해제
			JdbcUtil.close(resultSet);
			JdbcUtil.close(preparedStatement);			
		} // end of finally
		
	} // end of selectById()
	
	// 회원 추가
	public void insert(Connection connection, Member member) throws SQLException {
		
		query = "insert into member values(?,?,?,?,?,?,?,?)";
		
		// try-with-resource	
		try( PreparedStatement preparedStatement = connection.prepareStatement(query) ) {
			preparedStatement.setString( 1, member.getName() );
			preparedStatement.setString( 2, member.getId() );
			preparedStatement.setString( 3, member.getPassword() );
			preparedStatement.setInt( 4, member.getFirstSSN() );
			preparedStatement.setInt( 5, member.getSecondSSN() );
			preparedStatement.setString( 6, member.getCellPhone() );
			preparedStatement.setString( 7, member.getEmail() );
			preparedStatement.setString( 8, member.getAddress() );
		}
		
	} // end-of insert()
}