package mvc.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.Member;
import member.service.JoinService;

// 회원 가입 핸들러
public class JoinHandler implements CommandHandler {
	
	private static final String FORM_VIEW = "/view/joinForm.jsp"; // 회원 가입 뷰 경로
	private String ViewPage = "/index.jsp";
	private JoinService joinService = new JoinService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
				
		if( request.getMethod().equalsIgnoreCase("GET") ) { // GET 방식 요청
			return processForm(request, response);			
		} else if ( request.getMethod().equalsIgnoreCase("POST") ) { // POST 방식 요청
			return processSubmit(request, response);
		} else { // GET 또는 POST 요청이 아닌 경우 405-Error code 전송
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		} // end-of-if else
		
	} // end-of-process()
	
	// GET 방식 요청 처리 : 회원 가입 폼으로 이동
	public String processForm(HttpServletRequest request, HttpServletResponse response) {
		return FORM_VIEW;		
	}
	
	// POST 방식 요청 처리 : 회원 가입 처리 후 index page 로 이동
	public String processSubmit(HttpServletRequest request, HttpServletResponse response) {
		
		Member memberDTO = new Member(		request.getParameter("name"),
																request.getParameter("id"),
																request.getParameter("password"),
																Integer.parseInt(	request.getParameter("firstSSN") ),
																Integer.parseInt( request.getParameter("secondSSN") ),																
																request.getParameter("cellPhone"),
																request.getParameter("email"),
																request.getParameter("address")		);
		
		joinService.join(memberDTO);
		
		return ViewPage;
	}	

}