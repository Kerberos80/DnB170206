package mvc.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
// import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import mvc.command.NullHandler;

// @WebServlet("*.DnB")
public class Controller extends HttpServlet {	
	
	// < command, handlerInstance > 매핑 정보
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
	
	// commandHandler mapping 정보 로드 및 commandHandlerInstance 생성
	public void init() throws ServletException {		
		
		// commandHandler.properties 로드
		String configFile = getInitParameter("configFile"); 
		Properties property = new Properties();
		String configFilePath = getServletContext().getRealPath(configFile);		
		try(FileReader fileReader = new FileReader(configFilePath)) { // try-with-resource
			property.load(fileReader);
		} catch(IOException e) { throw new ServletException(e); }
		
		// commandHandlerInstance 저장
		Iterator<Object> keyIterator = property.keySet().iterator();
		while( keyIterator.hasNext() ) {
			String command = (String)keyIterator.next();
			String handlerClassName = property.getProperty(command);
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler commandHandlerInstance = (CommandHandler)handlerClass.newInstance();
				commandHandlerMap.put(command, commandHandlerInstance);				
			}
			catch(ClassNotFoundException | InstantiationException | IllegalAccessException e) { throw new ServletException(e); }			
		} // while	
		
	} // init()    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		process(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		process(request, response);
	}
	
	// request 분석 -> handler 호출 -> view 로 이동 
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 요청 URI 로부터 command 추출
		String command = request.getRequestURI();
		if( command.indexOf(request.getContextPath()) == 0 ) 
			command = command.substring(request.getContextPath().length());
		
		// command 에 해당하는 commandHandlerInstance 추출
		CommandHandler commandHandler = commandHandlerMap.get(command);
		
		// 존재하지 않는 명령어
		if( commandHandler == null ) commandHandler = new NullHandler();
		
		// 핸들러 호출
		String viewPage = null;
		try { viewPage = 	commandHandler.process(request, response); }
		catch(Throwable e) { throw new ServletException(e); }
		
		// 해당 view 로 이동
		if( viewPage != null ) {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher(viewPage);
			requestDispatcher.forward(request, response);			
		}	
		
	} // process()
	
}