<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String username=request.getParameter("username");      

        String Password=request.getParameter("password");
        application.setAttribute("uname",username);


	    
try
{
	   String sql="SELECT * FROM user where uname='"+username+"' and password='"+Password+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("user_main.jsp");
           }
	    else
	    {
	    response.sendRedirect("wronglogin.jsp");
          }
}

catch(Exception e)
{out.print(e);}
%>

