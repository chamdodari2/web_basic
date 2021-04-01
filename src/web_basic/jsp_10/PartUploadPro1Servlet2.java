package web_basic.jsp_10;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/jsp_10/PartUploadPro2")
@MultipartConfig(
  fileSizeThreshold=0,
  location="D:\\upload"
		)
public class PartUploadPro1Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out =response.getWriter();			
		String writer = request.getParameter("writer");
	//	Part part = request.getPart("partFile1");
		String uploadeFileNameList = "";
		for(Part part : request.getParts()) {
			if(!part.getName().equals("writer")) {
				String contentDisposition = part.getHeader("content-disposition");
				String uploadFileName = getUploadFileName(contentDisposition);
				part.write(uploadFileName);
				uploadeFileNameList += " " + uploadFileName;
				out.print("작성자  " + writer+"  님이  " + uploadFileName + "  파일을 업로드 하였습니다.");
			}
		}
		
		
		//String contentDisposition = part.getHeader("content-disposition");
		//	System.out.println("size = " parts); 사이즈도 확인하고싶당
		//	String uploadFileName = part.getSubmittedFileName();  //책에있는거보다 이게 낫다.
		//	System.out.printf(writer,part.getSubmittedFileName());
		//	System.out.println(part.getSize());
		//	part.write(uploadFileName);
			//out.print("작성자  " + writer+"  님이  " + uploadFileName + "  파일을 업로드 하였습니다.");
	}

	private String getUploadFileName(String contentDisposition) {
		String uploadFileName = null;
		String[] contentSplitStr = contentDisposition.split(";");  //얘로 구분해?
		int firstQutosIndex = contentSplitStr[2].indexOf("\"");
		int lastQutosIndex = contentSplitStr[2].lastIndexOf("\"");
		uploadFileName = contentSplitStr[2].substring(firstQutosIndex+1,lastQutosIndex);
		return uploadFileName;
	}

}
