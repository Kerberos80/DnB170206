package jdbc;

import java.io.IOException;
import java.io.StringReader;
import java.sql.DriverManager;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

//DataBase Connection Pool 초기화 listener
@WebListener
public class DBCPInitListener implements ServletContextListener {

    public DBCPInitListener() { }
	
    public void contextDestroyed(ServletContextEvent arg0)  { }
	
    public void contextInitialized(ServletContextEvent servletContextEvent)  {
    	
    	// 커넥션풀 config file load
    	String poolConfig = servletContextEvent.getServletContext().getInitParameter("poolConfig");
    	Properties properties = new Properties();
    	try { 	properties.load(new StringReader(poolConfig)); }
    	catch(IOException e) { throw new RuntimeException("config load fail", e); }
    	
    	// JDBC 드라이버 로드
    	loadJDBCDriver(properties);
    	
    	// 커넥션풀 초기화
    	initConnectionPool(properties);

    } // contextInitialized()
    
    // JDBC 드라이버 로드
 	private void loadJDBCDriver(Properties properties) {
 		
 		String driverClass = properties.getProperty("jdbcDriver");
 		System.out.println(driverClass);
 		try { Class.forName(driverClass); }
 		catch(ClassNotFoundException e) { throw new RuntimeException("fail to load JDBC Driver", e); }
 		
 	} // loadJDBCDriver()
 	
 	// 커넥션풀 초기화 및 설정
 	private void initConnectionPool(Properties properties) {
 		
 		try {
 			String jdbcUrl = properties.getProperty("jdbcUrl");
 			String dbUser = properties.getProperty("dbUser");
 			String dbPassword = properties.getProperty("dbPassword");			
 			
 			ConnectionFactory connectionFactory = new DriverManagerConnectionFactory(jdbcUrl, dbUser, dbPassword);
 			
 			PoolableConnectionFactory poolableConnectionFactory = new PoolableConnectionFactory(connectionFactory, null);
 						
 			// 커넥션풀의 커넥션 유효성 검사
 			String validationQuery = properties.getProperty("validationQuery");
 			if(validationQuery != null && validationQuery.isEmpty()) 
 				poolableConnectionFactory.setValidationQuery(validationQuery);
 			
 			// poolConfig 설정
 			GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
 			poolConfig.setTimeBetweenEvictionRunsMillis(1000L*60L*5L); // 유휴 커넥션 검사 주기(mili-second 단위)
 			poolConfig.setTestWhileIdle(true); // true : 유휴 커넥션의 유효성 검사
 			int minIdle = getIntProperty(properties, "minIdle", 5);
 			poolConfig.setMinIdle(minIdle); // 커넥션 풀의 최소 유휴 	커넥션 수
 			int maxTotal = getIntProperty(properties, "maxTotal", 50);
 			poolConfig.setMaxTotal(maxTotal); // 커넥션 풀의 최대 커넥션 수
 			
 			// connectionPool 생성
 			GenericObjectPool<PoolableConnection> connectionPool = 
 					new GenericObjectPool<>(poolableConnectionFactory, poolConfig);
 			poolableConnectionFactory.setPool(connectionPool);
 			
 			// 커넥션풀 드라이버 로드
 			Class.forName("org.apache.commons.dbcp2.PoolingDriver");
 			PoolingDriver driver = (PoolingDriver)DriverManager.getDriver("jdbc:apache:commons:dbcp:");
 			
 			// 드라이버에 커넥션풀 등록			
 			String poolName = properties.getProperty("poolName");
 			driver.registerPool(poolName, connectionPool);			
 		} catch(Exception e) { throw new RuntimeException(e); }
 		
 	} // initConnectionPool()
 	
 	// minIdle property, maxTotal property ... 추출
 	private int getIntProperty(Properties property, String propertyName, int defaultValue) {
 		
 		String value = property.getProperty(propertyName);
 		if(value == null) return defaultValue;
 		return Integer.parseInt(value);
 		
 	} // getIntProperty()
	
}