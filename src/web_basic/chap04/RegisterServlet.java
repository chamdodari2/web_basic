package web_basic.chap04;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/chap04/registerServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

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

		String subject = request.getParameter("subject"); // 과목에 있는 내용 가져온다
		String[] gubuns = request.getParameterValues("gubun"); // 수강구분에 있는 내용 가져온다
		System.out.println("subject : " + subject + "gubuns : " + gubuns);
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.printf("아이디 %s<br>비밀번호%s<br>", id, pw);
		out.println("<h2>수강과목</h2>");
		String t = null;
		if (subject.equals("eng")) {
			t = "영어";
		} else if (subject.equals("ch")) {
			t = "중국어회화";
		} else {
			t = "일어회화";

		}

		out.println("수강분야");
		if (gubuns == null) {
			out.println("선택한 수강분야가 없음");

		} else {
			for (String gubun : gubuns) {
				if (gubun.equals("grm")) {

				}
				if (gubun.equals("wr")) {

				}
				if (gubun.equals("grm")) {

				}
			}
		}

		out.printf("수강과목 = %s <br> 수강구분 = %s", subject, gubuns);

		System.out.println("subject : " + subject + "gubuns : " + gubuns);

	}
}
