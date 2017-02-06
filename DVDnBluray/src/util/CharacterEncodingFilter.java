package util;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

// 케릭터 인코딩 필터(web.xml 에서 utf-8 등 지정한 케릭터셋으로 인코딩)
public class CharacterEncodingFilter implements Filter {
	
	private String encoding;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		encoding = filterConfig.getInitParameter("encoding");
		if(encoding == null) 	encoding = "UTF-8"; // 디폴트로 UTF-8 을 사용함
		
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
			throws IOException, ServletException {
		
		request.setCharacterEncoding(encoding);
		
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy() { }
	
}