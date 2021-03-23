package web_basic.chap04;

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
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("user-id");  //id에 있는 내용을 가져온다
		String password = request.getParameter("pwd1");  //비밀번호도 가져오겠당
		System.out.println("id : " + id + "password : " + password);
		
		
		//한글 깨짐 처리
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out =  response.getWriter();
		out.printf("아이디 = %s <br> 비밀번호 = %s",id,password);
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		

		String subject = request.getParameter("subject"); // 선택한 과목(하나만) 가져오기
		String[] gubuns = request.getParameterValues("gubun"); // 선택한 수강분야(여러개)
		/*
		 * for(int i = 0;i<gubun.length;i++) { System.out.println("<td>");
		 * System.out.println(gubuns[i]); System.out.println("</td>"); }
		 */
		PrintWriter out = response.getWriter();

	//	out.printf("아이디 %s<br>비밀번호%s<br>", id, pw);
		out.println("<h2>수강과목 : </h2>");
		String t = null;
		if(subject==null) {
			out.println("선택한 수강과목이 없음");
			
		}else if (subject.equals("eng")) {
			t = "영어";
			out.println(t);
		} else if (subject.equals("ch")) {
			t = "중국어회화";
			out.println(t);
		} else {
			t = "일어회화";
			out.println(t);
		}

		out.println("<h2>수강분야 : </h2>");
		String g = null;
		if (gubuns == null) {
			out.println("선택한 수강분야가 없음");

		} else {
			for (String gubun : gubuns) {
				if (gubun.equals("grm")) {
					g = "문법";
					out.println(g);
				}
				if (gubun.equals("wr")) {
					g = "작문";
					out.println(g);
				}
				if (gubun.equals("rd")) {
					g= "독해";
					out.println(g);
				}
			}
		}


	

	}
}