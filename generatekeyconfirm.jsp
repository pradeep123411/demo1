<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<center>&nbsp;</center>
<br><br><br>
  <%
  		   int mid = Integer.parseInt(request.getParameter("mid"));
		  
          
  
  
   try {
	   
	   
	   
	   
	   
	   Random rr = new Random();
	   String str = "";
		str = String.valueOf(rr.nextInt(10)) + String.valueOf(rr.nextInt(10))
				+ String.valueOf(rr.nextInt(10))
				+ String.valueOf(rr.nextInt(10))
				+ String.valueOf(rr.nextInt(10))
				+ String.valueOf(rr.nextInt(10))
		+ String.valueOf(rr.nextInt(10));
	   
	   
	   
	   
	   
	   
	   
	   
	   
     
       Statement st1 = connection.createStatement();
       String query1 ="update user set sk='"+str+"' where uid="+mid+" ";
	   st1.executeUpdate (query1);
	  
	 
	   
           
	   connection.close();




	       
          
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());

          }
   
   
   response.sendRedirect("listusers.jsp");
		 
		  
		  
%>



</body></html>