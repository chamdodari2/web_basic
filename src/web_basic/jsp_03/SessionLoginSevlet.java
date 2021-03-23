package web_basic.jsp_03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/jsp_03/sessionlogin")
public class SessionLoginSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");   
		response.setContentType("text/html;charset=utf-8");     	//응답해줄때 깨지지않게 해주기 
		
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");  				   //클라이언트가 입력한 값 가져와서 저장하려면 일단 가져오기
		String password = request.getParameter("password");  	  //이 이름은 ㅇㅇ와 같아야한다. 로그인.jsp에 저장해놓은 input name 봐야한다.
		
		Enumeration<String>  en = request.getParameterNames();
		while(en.hasMoreElements()) {  //그다음요소가 존재하느냐
			String e = en.nextElement(); 
			System.out.println(e);   //키값만 출력된다
		
		}
		Map<String, String[]> entry =request.getParameterMap();
		for(Entry<String, String[]> e : entry.entrySet()) 
			System.out.printf("%s - 5%s%n",e.getKey(),Arrays.toString(e.getValue()));   //하나씩 가져와서 출력쓰 벨류값도 같이 가져올것으로 예상
		
		  //db 연동하고싶으면 여기서 서비스 만들어서 쿼리 날리면 된다(?)
		if(id.equals("java") && password.equals("java")) {       //입력한 값이 일치한다면? 
			HttpSession sesson = request.getSession();  
			sesson.setAttribute("id",id);  						 //여기에 실어야겠지?  id 라는 이름으로 id를 넣어줄게
			
			//클라이언트의 주소도 변경해줄게 ( login.jsp 페이지에서 -> menu.jsp 로 이동하도록 forwarding 시켜줄게! ) 앞으로 포워딩하는방법 많이배운다 쓴당
			RequestDispatcher dispatcher = request.getRequestDispatcher("menu.jsp");  //여기 만들어놓은 화면으로 이동시켜줄게!
			dispatcher.forward(request,response);  									 //위에 menu.jsp 와 같이 명시된대로  이동시켜라!
			
		}else {
			out.printf("<script>");
			out.println("alert('아이디나 비밀번호가 일치하지 않습니다.')"); 					  //이사이에 쌍따옴표 넣으면 마감으로 인식하니까 홑따옴표를 넣어서 감싸주거나 역슬래시 적어줘야한다. 마감문자로 생각하지말고 그냥 출력해! 라고 해주는것
			out.println("history.back()"); 										 //야! 네가 직전에 있던곳 으로 이동해라!   -- 자바스크립트임(?)
			out.println("</script>");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
