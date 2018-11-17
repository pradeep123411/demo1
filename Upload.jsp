<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>AdminMain upload images::Arrribute Assisted Re Ranking</title>
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
<script language="javascript" type="text/javascript">



function valid()
{





var na3=document.s.name.value;
if(na3=="")

{
alert("Please Enter Image Name");
document.s.name.focus();
return false;
}

if(document.s.color.selectedIndex==0)
{
alert("Select the Color of the Image");
return false;
}

var na4=document.s.desc.value;
if(na4=="")

{
alert("Please Enter Image Description");
document.s.desc.focus();
return false;
}

if(document.s.type.selectedIndex==0)
{
alert("Select the Image Type");
return false;
}


var na5=document.s.use.value;
if(na5=="")

{
alert("Please Enter Image Usage");
document.s.use.focus();
return false;
}


var na6=document.s.image.value;
if(na6=="")

{
alert("please choose image");
document.s.image.focus();
return false;
}

}

</script>


</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li ><a href="about.html"><span>About Us</span></a></li>
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
          <h2><span>Uplaod Images </span></h2>
          <div class="clr"></div>
           
		  
        </div>
        <div class="article">
         
		 <form name="s" method="post" enctype="multipart/form-data" action="upload2.jsp" onSubmit="return valid()">
	
	<table height="351" align="center">
	<tr>
	  <td><div align="center" class="style1"><font size="+3" style="Arial Black" >......</font><font size="+3" style="Arial Black" >.</font></div> </td>
	  </tr>
	<tr>
	<td><table>
	
	
	
	<tr>
	<td height="39">
	  <span class="style1"><font size="+1">Image Name:* </font> </span></td>
	<td><input type="text" id="name" name="name" style="width:100%"></td>
	</tr>
	<tr>
	<td height="61">
	  <span class="style1"><font size="+1">Image Color :*</font> </span></td>
	<td><label>
	  <select id="color" name="color" style="width:100%">
	  <option value="0" selected>select</option>
												<option>Red</option>
												<option>Blue</option>
												<option>Green</option>
												<option>Yellow</option>
												<option>White</option>
												<option>Black</option>
												<option>Orange</option>
												<option>Gray</option>
												<option>Voilet</option>
												<option>Rose</option>
												<option>Light_Rose</option>
	    </select>
	</label></td>
	</tr>
	<tr>
	<td>
	  <span class="style1"><font size="+1">Image Description :*</font> </span></td>
	<td><label>
	  <textarea  id="desc" name="desc" style="width:100%"></textarea>
	</label></td>
	</tr>
	
	<tr>
	<td height="39"><span class="style1"><font size="+1">Image Type :*</font> </span></td>
	<td>
	<select id="type" name="type" style="width:100%">
												<option value="0">select</option>
												<option>JPG</option>
												<option>JPEG</option>
												<option>PNG</option>
												<option>BMP</option>
												<option>GIF</option>
					</select>	</td>
	</tr>
	<tr>
	<td>
	  <span class="style1"><font size="+1">Attribute Name1  :*</font> </span></td>
	<td><label>
	  <input type="text" id="use" name="use" style="width:100%">
	</label></td>
	</tr>
	
	<tr>
	  <td height="47"><font size="+1">Attribute Name2</font></td>
	  <td><input type="text" name="att2" /></td>
	  </tr>
	<tr>
	  <td height="39"><font size="+1">Attribute Name3</font></td>
	  <td><input type="text" name="att3" /></td>
	  </tr>
	<tr>
	  <td height="46"><font size="+1">Attribute Name4</font></td>
	  <td><input type="text" name="att4" /></td>
	  </tr>
	<tr>
	  <td height="42"><font size="+1">Attribute Name5</font></td>
	  <td><input type="text" name="att5" /></td>
	  </tr>
	<tr>
	<td>
	  <span class="style1"><font size="+1">Choose File:*</font> </span></td>
	<td>
	<input type="file" id="userImage" name="image" style="width:100%" onChange="readURL(this);" >
	<br />
	<img src="images/imgicon.png" width="61" height="34" /></td>
	</tr>
	
	<tr>
	<td height="60"></td>
	<td><input type="submit" value="Upload" id="button1"><input type="reset" value="clear"></td>
				</tr>
	</table>	</td>
	</tr>
	</table>
	
	</form>
  

		 
		 
          <div class="clr"></div>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star style1">Admin Operations </h2>
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
