package web_basic.jsp_03;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/jsp_03/RedirectServlet")
public class RedirectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("req", "requestValue"); //리퀘스트 객체(기본객체)에다가 벨류 저장쓰해라!
		HttpSession session = request.getSession();			//이렇게 한줄+
		session.setAttribute("reqSess", "sessionValue");  //두줄적어줘야 속성값 null 안뜬다  --> 세션에다 담아라!!
		response.sendRedirect("redirect.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
