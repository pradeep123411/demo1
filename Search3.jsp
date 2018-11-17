

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
<title>User Main Searching Web Images</title>
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
          <h2><span>Web Image Search </span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
      
	
	
  
  <div align="center"><span class="style8">Image Details............</span> 
    <div id="page_content_right">
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="459" border="0" align="center">
          <tr>
            <td colspan="2"><div align="center">
              <div align="center">
                <%
	  int id =  Integer.parseInt(request.getParameter("imgid"));
	String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null;


String att2=null;
String att3=null;
String att4=null;
String att5=null;

	int c=0;
  try{      
  
    Statement stmt=connection.createStatement();
String strQuery = "select id,iname,icolor,idescription,itype,uses,count,attribute1,attribute2,attribute3,attribute4 from images where id="+id+" " ;
    ResultSet rs = stmt.executeQuery(strQuery);
    if(rs.next()){
	s1=rs.getString(2);
	s2=rs.getString(3);
	s3=rs.getString(4);
	s4=rs.getString(5);
	s5=rs.getString(6);
	c=rs.getInt(7);
	att2=s5=rs.getString(8);
	att3=s5=rs.getString(9);
	att4=s5=rs.getString(10);
	att5=s5=rs.getString(11);
	
	
	//c=c+1;
	 //Statement st3 = connection.createStatement();
	   //String query3 ="update images set count="+c+" where id="+id+"";
	   //st3.executeUpdate (query3);
	
       %>
                <input name="image" type="image" src="images.jsp?imgid=<%=rs.getInt(1)%>" alt="Submit" width="100" height="100">
                
                <%
	 
    }
    rs.close();
    connection.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  %>
              </div></td>
          </tr>
      <tr>
            <td colspan="2">&nbsp;</td>
  </tr>
          <tr>
            <td width="288"><span class="style3 style9"><strong>Image Name :</strong></span></td>
            <td width="161"><span class="style11"><%=s1%></span></td>
          </tr>
          <tr>
            <td><span class="style3 style9"><strong>Image Color :</strong></span></td>
            <td><span class="style11"><%=s2%></span></td>
          </tr>
          <tr>
            <td><span class="style3 style9"><strong>Image Description :</strong></span></td>
            <td><span class="style11"><%=s3%></span></td>
          </tr>
          <tr>
            <td><span class="style3 style9"><strong>Image Type :</strong></span></td>
            <td><span class="style11"><%=s4%></span></td>
          </tr>
          <tr>
            <td><span class="style9 style3"><strong>Attribute1:</strong></span></td>
            <td><span class="style11"><%=s5%></span></td>
          </tr>
          <tr>
            <td><strong>Attribute2:</strong></td>
              <td><span class="style11"><%=att2%></span></td>
          </tr>
          <tr>
            <td><strong>Attribute3:</strong></td>
             <td><span class="style11"><%=att3%></span></td>
          </tr>
          <tr>
            <td><strong>Attribute4:</strong></td>
             <td><span class="style11"><%=att4%></span></td>
          </tr>
          <tr>
            <td>Attribute5:</td>
              <td><span class="style11"><%=att5%></span></td>
          </tr>
          <tr>
            <td><span class="style4">Search Rank:</span></td>
            <td><span class="style12"><%=c%></span></td>
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
          <h2 class="star">&nbsp;</h2>
          <ul class="sb_menu"><li></li>
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
      <h2 class="star"><span>User Operations </span></h2>
      <ul class="sb_menu">
        
        <li><a href="ViewMyDetails.jsp">View Your Details </a></li>
            <li><a href="Search.jsp">Search Images(Text Based) </a></li>
            <li><a href="AttSearch.jsp">Search Images(Attribute Based)</a></li>
            <li><a href="Request.jsp">Request Secret Key </a></li>
            <li><a href="index.html">Log Out </a></li>
        <li></li>
        </ul>
      <div class="clr"> <ul class="sb_menu"><li></li>
      </ul>
      </div>
     
   
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2>&nbsp;</h2>
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
