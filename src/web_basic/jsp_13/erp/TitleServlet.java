package web_basic.jsp_13.erp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TitleServlet")
public class TitleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TitleService service;

    public TitleServlet() {
    	service = new TitleService();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	List<Title> lists = service.showTitles();
	System.out.println(lists);
	
	request.setAttribute("list",lists);
	request.getRequestDispatcher("jsp_13/titlelist.jsp").forward(request,response);
//	PrintWriter out = response.getWriter();
//	
//	for(Title t : lists) {
//		System.out.printf("%s - %s<br>",t.gettNo(),t.gettName());
//		
//	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
