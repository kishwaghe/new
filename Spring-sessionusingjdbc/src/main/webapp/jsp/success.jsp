<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
out.print(" welcome to success");
String username= (String)session.getAttribute("username");
String password= (String)session.getAttribute("password");
if(username==null)
{
	out.print("session is null");	

}
else
{
	out.print(username);
	out.print(password);
	
}%>
<%-- <%=request.getAttribute("password") %> --%>
<a href="logout">Logout</a>
<a href="profile">Profile</a>

</body>
</html>