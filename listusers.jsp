<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>AdminMain list users::Arrribute Assisted Re Ranking</title>
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
.style2 {
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #FF00FF}
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
          <li "><a href="about.html"><span>About Us</span></a></li>
          <li class="active"><a href="admin.html"><span>Admin</span></a></li>
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
          <h2>View All End Users </h2>
          <div class="clr"></div>
          <p align="center" class="style1">&nbsp;</p>
<p align="center">&nbsp;</p>
<table width="700" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
 <td align="justify" bgcolor="#FFFFFF" width="49" valign="baseline" height="0"><div align="center" class="style2">UID</div></td>
  <td align="justify" bgcolor="#FFFFFF" width="94" valign="baseline" height="0"><div align="center" class="style2">Username</div></td>
 
  <td align="justify" bgcolor="#FFFFFF" width="63" valign="baseline" height="0"><div align="center" class="style2">E-Mail</div></td>
   <td align="justify" bgcolor="#FFFFFF" width="47" valign="baseline" height="0"><div align="center" class="style2">Mobile</div></td>
   <td align="justify" bgcolor="#FFFFFF" width="57" valign="baseline" height="0"><div align="center" class="style2">Location</div></td>
   <td align="justify" bgcolor="#FFFFFF" width="36" valign="baseline" height="0"><div align="center" class="style2">DOB</div></td>
  
   <td align="justify" bgcolor="#FFFFFF" width="62" valign="baseline" height="0"><div align="center" class="style2">Address</div></td>
   <td align="justify" bgcolor="#FFFFFF" width="47" valign="baseline" height="0"><div align="center" class="style2">Gender</div></td>
   <td align="justify" bgcolor="#FFFFFF" width="55" valign="baseline" height="0"><div align="center" class="style2">Pincode</div></td>
   <td align="justify" bgcolor="#FFFFFF" width="70" valign="baseline" height="0"><div align="center" class="style2">Secret Key</div></td>
  </tr>





<%
 
      	
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;

      	try 
	{
           
           String query="select * from user"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		s9=rs.getString(9);
		s10=rs.getString(10);
		s11=rs.getString(11);
		
		
		
%>

<tr>
	<td align="center" bgcolor="#FFFFFF" width="49" valign="baseline" height="0"><span class="style3">
	  <%out.println(s1);%>
	  &nbsp;</span></td>
	<td align="center" bgcolor="#FFFFFF" width="94" valign="baseline" height="0"><span class="style3">
	  <%out.println(s2);%>
	  &nbsp;</span></td>
	
	<td align="center" bgcolor="#FFFFFF" width="63" valign="baseline" height="0"><span class="style3">
	  <%out.println(s4);%>
	  &nbsp;</span></td>
	<td align="center" bgcolor="#FFFFFF" width="47" valign="baseline" height="0"><span class="style3">
	  <%out.println(s5);%>
	  &nbsp;</span></td>
	<td align="center" bgcolor="#FFFFFF" width="57" valign="baseline" height="0"><span class="style3">
	  <%out.println(s6);%>
	  &nbsp;</span></td>
	<td align="center" bgcolor="#FFFFFF" width="36" valign="baseline" height="0"><span class="style3">
	  <%out.println(s7);%>
	  &nbsp;</span></td>
	<td align="center" bgcolor="#FFFFFF" width="62" valign="baseline" height="0"><span class="style3">
	  <%out.println(s8);%>
	  &nbsp;</span></td>
	<td align="center" bgcolor="#FFFFFF" width="47" valign="baseline" height="0"><span class="style3">
	  <%out.println(s9);%>
	  &nbsp;</span></td>
	<td align="center" bgcolor="#FFFFFF" width="55" valign="baseline" height="0"><span class="style3">
	  <%out.println(s10);%>
	  &nbsp;</span></td>
	
	<%
	if(s11.equalsIgnoreCase("Rejected"))
	{
	
	%>
	
	<td align="center" bgcolor="#FFFFFF" width="70" valign="baseline" height="0"><a href="generatekeyconfirm.jsp?mid=<%=s1%>" class="style3"> Generate key &nbsp;</a></td>
	<%
	}
	else
	{
	%>
		<td align="center" bgcolor="#FFFFFF" width="120" valign="baseline" height="0"><%out.println(s11);%>&nbsp;</td>
	<%
	}
    %>
</tr>


<%

	   }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

<tr>
	<td align="justify" bgcolor="#FFFFFF" width="49" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#FFFFFF" width="94" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#FFFFFF" width="63" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#FFFFFF" width="47" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#FFFFFF" width="57" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#FFFFFF" width="36" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#FFFFFF" width="62" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#FFFFFF" width="47" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#FFFFFF" width="55" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#FFFFFF" width="70" valign="baseline" height="0">&nbsp;</td>
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
          <h2 class="star"><span class="star style1">Admin Operations </span></h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="Upload.jsp">Upload Images </a></li>
            <li><a href="gallery.jsp">View All Images </a></li>
            <li><a href="viewshistory.jsp">View Search History </a></li>
            <li><a href="viewranking.jsp">View Image Ranking </a></li>
            <li><a href="listusers.jsp">View End Users </a></li>
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
