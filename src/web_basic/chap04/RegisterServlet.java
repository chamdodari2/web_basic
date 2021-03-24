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
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// String id = request.getParameter("user-id"); //id에 있는 내용을 가져온다
		// String password = request.getParameter("pwd1"); //비밀번호도 가져오겠당
		// String password2 = request.getParameter("pwd2"); //비밀번호도 가져오겠당
		// System.out.println("id : " + id + "password : " + password);

		// 한글 깨짐 처리
		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();
		// out.printf("아이디 = %s <br> 비밀번호 = %s",id,password);///////////////////
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String subject = request.getParameter("subject"); // 선택한 과목(하나만) 가져오기
		String[] gubuns = request.getParameterValues("gubun"); // 선택한 수강분야(여러개)

		// for(int i = 0;i<gubuns.length;i++) {
		// System.out.println("<td>");
		// System.out.println(gubuns[i]); System.out.println("</td>"); }

		String id = request.getParameter("user-id");
		String pw = request.getParameter("pwd1");
		String pw2 = request.getParameter("pwd2");
		out.println("아이디: " + id);
		if (pw.equals(pw2)) {

			out.println("패스워드: " + pw + "일치");
		} else {
			out.println("불일치");
		}
		// out.println(pw);

		out.println("<h2>신청과목 : </h2>"); // 하나만 선택가능
		String t = null;
		if (subject == null) {
			out.println("선택한 신청과목이 없음");

		} else if (subject.equals("speking")) {
			t = "회화";
			out.println(t);
		} else if (subject.equals("grammar")) {
			t = "문법";
			out.println(t);
		} else {
			t = "작문";
			out.println(t);
		}

		out.println("<h2>메일링 : </h2>");
		
		if (gubuns == null) {
			out.println("선택된 메일링이 없습니");
			}else {
			for (String gubun : gubuns) {
				if (gubun.equals("news")) {
					gubun = "뉴스";
					out.println("메일링 주제" + gubun);
				}
				if (gubun.equals("dialog")) {
					gubun = "5분회화";
					out.println("메일링 주제" + gubun);
				}
				if (gubun.equals("pops")) {
					gubun = "모닝팝스";
					out.println("메일링 주제" + gubun);
				}
			}
		
			
		}

		out.println();
		String member = "";
		member = request.getParameter("member");
		out.print("member = " + member);

	}
}