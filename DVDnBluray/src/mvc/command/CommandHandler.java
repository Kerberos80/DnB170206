package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// CommandHandler 공통 interface ( 로직 처리후 View Page의 URI 를 리턴함 )
public interface CommandHandler {
	
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception;
	
}