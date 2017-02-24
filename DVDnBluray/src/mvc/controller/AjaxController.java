package mvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("*.ajax")
public class AjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;     

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	public String doProcess(HttpServletRequest request, HttpServletResponse response) throws IOException {
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();			
		
		//jsonObject.put("id", "kerberos");
		jsonObject.put("id", "");
		String jsonString = jsonObject.toJSONString();
		
		// jsonArray.add(jsonObject);
		// String jsonArrayString = jsonArray.toJSONString();		
		System.out.println(jsonString);
		
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(jsonObject);
		// System.out.println("jsonObject : " + jsonObject );
				
		return null;		
	}
}