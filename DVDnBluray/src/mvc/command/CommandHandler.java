package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// CommandHandler interface ( 로직 처리후 View Page 의 URI 를 리턴함 )
public interface CommandHandler {
	
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}