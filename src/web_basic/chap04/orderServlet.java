package web_basic.chap04; /////////////서블렛에서 다 확인가능하게해야한당

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/chap04/Register")
@WebServlet("/chap04/order")
public class orderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 한글 깨짐 처리
		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();
		// out.printf("아이디 = %s <br> 비밀번호 = %s",id,password);///////////////////
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
	
	//	String[] gubuns = request.getParameterValues("gubun"); // 선택한 수강분야(여러개)
	
		// for(int i = 0;i<gubuns.length;i++) {
		// System.out.println("<td>");
		// System.out.println(gubuns[i]); System.out.println("</td>"); }
			
		
	//
	
}
	}