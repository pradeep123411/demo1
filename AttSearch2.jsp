

<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
  <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Fashionline | About</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 18px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="about.html"><span>About Us</span></a></li>
          <li><a href="admin.html"><span>Admin</span></a></li>
          <li><a href="user.html"><span>User</span></a></li>
          <li><a href="register.html"><span>Register</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html" class="style1">An Attribute-assisted Reranking Model for Web Image Search</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
         <p align="center" class="style8">&nbsp;</p>
<p align="center" class="style8"><span class="style11"><strong>Re-Ranked Image..........</strong>.</span></p>
<table width="641" height="165" border="0" align="center">
     <tr>
       <td width="699">
         <div align="left">
  <%


	try 
{
	
		
		
	
		int id =  Integer.parseInt(request.getParameter("imgid"));
		
		String ss3=(String)session.getAttribute("s3");
		
		 String s1="",s2="";

		Statement stmt1=connection.createStatement();
	    String strQuery1 = "select iname,icolor from images where id="+id+" ";
	    ResultSet rs1 = stmt1.executeQuery(strQuery1);
	    if(rs1.next()==true)
	    {
	    	s1=rs1.getString(1);
	    	s2=rs1.getString(2);
		
			 Statement stmt=connection.createStatement();
			    String strQuery = "select id,count from images where iname='"+s1+"' and icolor='"+s2+"' ";
			    ResultSet rs = stmt.executeQuery(strQuery);
			    while(rs.next()){
			    	
			    	int i=rs.getInt(1);
			    	int c=rs.getInt(2);
			    
			    
			    	c=c+1;
			    	 Statement st3 = connection.createStatement();
					   String query3 ="update images set count="+c+" where id="+i+"";
					   st3.executeUpdate (query3); 
				   %>
  
  <a href="AttSearch3.jsp?imgid=<%=rs.getInt(1)%>"><input  name="image" type="image" src="images.jsp?imgid=<%=rs.getInt(1)%>" width="100" height="100" alt="Submit"></a>&nbsp; <blink>View</blink>
  <%
				
			    }
			    
		
	    }
		
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
 </div></td>
     </tr>
</table>
	
	  
	  
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User Operations </span></h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            
            <li><a href="ViewMyDetails.jsp">View Your Details </a></li>
            <li><a href="Search.jsp">Search Images(Text Based) </a></li>
            <li><a href="#">Search Images(Attribute Based)</a></li>
            <li><a href="Request.jsp">Request Secret Key </a></li>
            <li><a href="index.html">Log Out </a></li>
            <li></li>
            </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <ul class="ex_menu"><li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>I</span></h2>
        </div>
      <div class="col c2">
        <h2>&nbsp;</h2>
      </div>
      <div class="col c3">
        <h2>&nbsp;</h2>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
