package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;
import member.model.Member;
import memeber.dao.MemberDAO;

// 회원 등록 서비스
public class JoinService {
	
	private MemberDAO memberDAO = new MemberDAO();
	
	public void join(Member memberDTO) {
		Connection connection = null;
		
		try {
			connection = ConnectionProvider.getConnection();
			connection.setAutoCommit(false);			
			
			memberDAO.insert(connection, memberDTO); // 회원 추가
			
			connection.commit();			
		} catch(SQLException e) { // 회원 추가 에러시 롤백
			JdbcUtil.rollback(connection);
			throw new RuntimeException(e);			
		} // end-of-try catch
	} // end-of-join()

}