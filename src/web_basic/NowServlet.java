package web_basic;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NowServlet")
public class NowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
///////////////////////////////////////////////////////////////////   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");  // 1. 알려주는거
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Date now = new Date();  //2
		PrintWriter writer = response.getWriter(); //3
		writer.println("<br");		//6. 줄바꿈
		writer.println("<html>"); //4. html 문서를 만들어서 던져줄거얌
		writer.println("<head>"   // 5. 복사해온거   
				+"<title>서블릿 생성 현재 시간</title>" 
				+"</head>"
				+"<body>"
				);
		writer.println("서블릿 생성 시간"+now);//7
		writer.print("<body></html>");
	}

///////////////////////////////////////////////////////////////////	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
