<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

    
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>



<html>
<head>
</head>
<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div align="center">
  <%

ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("Gallery/");
		String paramname=null;
		String file=null;
		String a=null,b=null,c=null,d=null,ee=null,fg=null,image=null,att2=null,att3=null,att4=null,att5=null;
	String bin = "";
		FileInputStream fs=null;
 
		File file1 = null;
			
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				if(paramname.equalsIgnoreCase("name"))
				{
					a=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("color"))
				{
					b=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("desc"))
				{
					c=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("type"))
				{
					d=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("use"))
				{
					ee=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("att2"))
				{
					att2=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("att3"))
				{
					att3=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("att4"))
				{
					att4=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("att5"))
				{
					att5=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("userImage"))
				{
					image=multi.getParameter(paramname);
				}
				
				}
			
			
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath("Gallery\\"+image);
			file1 = new File(fPath);
			fs = new FileInputStream(file1);
			list.add(fs);
			
			
				
		String ss=fPath;
		FileInputStream fis = new FileInputStream(ss);
		StringBuffer sb1=new StringBuffer();
		 int i = 0;
         while ((i = fis.read()) != -1) {
                 if (i != -1) {
                       //System.out.println(i);
						 String hex = Integer.toHexString(i);
						// session.put("hex",hex);
						 sb1.append(hex);
						// sb1.append(",");
						
    String binFragment = "";
    int iHex;
 

    for(int i1= 0; i1 < hex.length(); i1++){
        iHex = Integer.parseInt(""+hex.charAt(i1),16);
        binFragment = Integer.toBinaryString(iHex);

        while(binFragment.length() < 4){
            binFragment = "0" + binFragment;
        }
        bin += binFragment;
		//System.out.print(bin);
		}
                 }
			
			
    }
			
			
			
			
			
			
		}		
	}
	
	        FileInputStream fs1 = null;
            //name=dirName+"\\Gallery\\"+image;
			int lyke=0;
			//String as="0";
			
 
 PreparedStatement ps=connection.prepareStatement("insert into images(iname,icolor,idescription,itype,uses,imagess,count,binaryimage,attribute1,attribute2,attribute3,attribute4) values(?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1,a);
               	ps.setString(2,b);
				ps.setString(3,c);	
       			ps.setString(4,d);
       			ps.setString(5,ee);
			   
			 ps.setBinaryStream(6, (InputStream)fs, (int)(file1.length()));
				ps.setInt(7,lyke);
				ps.setString(8,bin);				
				ps.setString(9,att2);
				ps.setString(10,att3);
				ps.setString(11,att4);
				ps.setString(12,att5);
				
       if(f == 0)
			ps.setObject(6,null);
		else if(f ==7)
		{
			fs1 = (FileInputStream)list.get(0);
			ps.setBinaryStream(6,fs1,fs1.available());
		}	
			int x=ps.executeUpdate();
		
			out.println("Image Uploaded Successfully......");
			  %>
</div>
<p align="center"><a href="Upload.jsp">Back</a></p>

</body>
</html>
			  <%
			
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
</body>
</html>

