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
@WebServlet("/chap04/Register")
public class RegisterServlet2 extends HttpServlet {
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
	
		//String[] gubuns = request.getParameterValues("gubun"); // 선택한 수강분야(여러개)

		// for(int i = 0;i<gubuns.length;i++) {
		// System.out.println("<td>");
		// System.out.println(gubuns[i]); System.out.println("</td>"); }

		String id = request.getParameter("user-id");
		String pw = request.getParameter("pwd1");
		String pw2 = request.getParameter("pwd2");
		out.println();
		out.println("<b>아이디</b>:	" + id);
		out.print("<br>");
		out.println("<b>패스워드</b>:	"+pw);
		out.print("<br>");
//		if (pw.equals(pw2)) {
//
//			out.println("(일치)");
//		} else {
//			out.println("(불일치");
//		}

		String class1 = request.getParameter("class1"); // 선택한 과목(하나만) 가져오기

		out.println("<b>학과선택</b>:	"); 
	
		if(class1.equals("archi")) {
			out.println("건축공학과"); 
		}else if(class1.equals("mechanic")) {
			out.println("기계공학과"); 
		}else if(class1.equals("indust")) {
			out.println("산업공학과"); 
		}else if(class1.equals("elec")) {
			out.println("전기전자공학과"); 
		}else if(class1.equals("computer")) {
			out.println("컴퓨터공학과"); 
		}else if(class1.equals("chemical")) {
			out.println("화학공학과"); 
		}else if(class1.equals("history")) {
			out.println("사학과"); 
		}else if(class1.equals("lang")) {
			out.println("어문학부"); 
		}else if(class1.equals("philo")) {
			out.println("철학"); 
		}
		out.print("<br>");

		String interest =request.getParameter("interest");
		out.println("<b>수강과목 선택</b>:	");


		if(interest.equals("grammar")) {
			out.println("문법"); 
		}else if(interest.equals("speaking")) {
			out.println("회화"); 
		}else if(interest.equals("voca")) {
			out.println("어휘"); 
		}else if(interest.equals("listening")) {
			out.println("리스닝"); 
		}else if(interest.equals("news")) {
			out.println("뉴스청취"); 
			out.print("<br>");
		}	
		out.print("<br>");
		String intro = request.getParameter("intro");	
			out.println("<b>먹고싶은 치킨은</b> : "+intro);
		

	
}
	}