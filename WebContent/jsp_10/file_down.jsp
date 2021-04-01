<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.net.URLEncoder"%>


<% 

String fileName =request.getParameter("file_name");

String savePath = "upload";
ServletContext context = getServletContext();
String sDownloadPath = context.getRealPath(savePath);
String sFilePath = sDownloadPath + "//" + fileName;
byte b[] = new byte[4096];
FileInputStream in = new FileInputStream(sFilePath);
String sMimeType = getServletContext().getMimeType(sFilePath);
System.out.println("sMimeType>>>" + sMimeType);
if(sMimeType == null)
	sMimeType = "application/octet-stream";

response.setContentType(sMimeType);
String agent = request.getHeader("User-Agent");
boolean ieBrowser = (agent.indexOf("MSIE") > -1) || (agent.indexOf("Trident") > -1);

if(ieBrowser){
	fileName = URLEncoder.encode(fileName,"UTF-8").replaceAll("//+","%20");
}else{
	fileName = new String (fileName.getBytes("UTF-8"),"iso-8859-1");
	
}response.setHeader("Content-Disposition", "attachment;filename="+fileName);
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>