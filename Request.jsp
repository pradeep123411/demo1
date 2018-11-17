 <%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main::Requesting Secret Key</title>
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
.style3 {
	font-size: 12px;
	color: #FF0000;
	font-weight: bold;
}
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
          <li ><a href="about.html"><span>About Us</span></a></li>
          <li><a href="admin.html"><span>Admin</span></a></li>
          <li class="active"><a href="user.html"><span>User</span></a></li>
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
          <h2>Request Secret Key </h2>
          <div class="clr"></div>


<p>&nbsp;</p>
<form name="form1" method="post" action="Request.jsp">
  <table width="408" border="0" align="center">
    <tr>
      <td width="233"><span class="style3">Enter Your Password to Get Secret Key:-</span></td>
      <td width="165"><label>
        <input type="password" name="t1">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="Submit"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label></label></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>


<%


	try 
{
	
		
		
		
		String uname=(String)application.getAttribute("uname");
	
		String field= request.getParameter("t1");	
		
		if(field.equalsIgnoreCase(""))
		{
			
		}
		else
		{
		 Statement stmt=connection.createStatement();
		    String strQuery = "select sk from user where uname='"+uname+"' and password='"+field+"' ";
		    ResultSet rs = stmt.executeQuery(strQuery);
		    if(rs.next()==true){
		    	
		    	String sk =rs.getString(1);
		    	 out.println("Your Secret Key is->"+sk);
		    }
		    else
		    {
		    
		    
		    out.println("Secret Key Mismatch....");
			  %><p><a href="Search.jsp">Back</a></p>

			  </body>
			  </html>
			  <%
	          }
		}
		
		 }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
        <ul class="sb_menu">
            <li><a href="ViewMyDetails.jsp">View Your Details </a></li>
            <li><a href="Search.jsp">Search Images(Text Based) </a></li>
            <li><a href="AttSearch.jsp">Search Images(Attribute Based)</a></li>
            <li><a href="Request.jsp">Request Secret Key </a></li>
            <li><a href="index.html">Log Out </a></li>
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
