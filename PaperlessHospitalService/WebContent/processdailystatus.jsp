<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" import="java.util.*,java.text.*,java.util.Date,java.sql.*, java.io.*" %>
<%
    Connection con = null;
Statement stmt = null;

       
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
//get current date time with Date()
Date date = new Date();

String dt=dateFormat.format(date);
	   
     
     String t2=request.getParameter("patid");
     String t3=request.getParameter("sta");
     String t4=request.getParameter("sym");
     String t5=request.getParameter("des");
     String rec_id=null;
     try
     {

         Class.forName("com.ibm.db2.jcc.DB2Driver");
         con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
   
    
          Statement statement = con.createStatement();
          ResultSet rs = statement.executeQuery("SELECT RECORD_ID FROM SAIRAM.HEALTH_RECORD where PATIENT_ID='"+t2+"'");
    
  %>
          
  <%

          while ( rs.next() ) {
               rec_id=rs.getString(1); 
            
  			  
          }
          rs.close();
      } catch (SQLException sqle) {
          out.println(sqle.getMessage());
      } catch (Exception e) {
          out.println(e.getMessage());
      } finally {
          try {
              if ( con != null ) {
                  con.close();
              }
          } catch (SQLException sqle) {
              out.println(sqle.getMessage());
          }
      }
  		if(rec_id!=null)
  		{
  			 PreparedStatement ps = null;
  			 ResultSet rs=null;
  			 Statement statement=null;
  		   try
  			    {
  			         Class.forName("com.ibm.db2.jcc.DB2Driver");
  			       con = DriverManager.getConnection("jdbc:db2://localhost:50000/PAT_DB", "sairam", "prayas");
  			   
  			         String sql;
  			         sql="insert into SAIRAM.DAILY_STATUS values(?,?,?,?,?)";
  			         ps = con.prepareStatement(sql);
  			       	 statement  = con.createStatement();
  			        
  			         ps.setString(1,dt);
  			         ps.setString(2,rec_id);
  			         ps.setString(3,t3);
  			         ps.setString(4,t4);
  			         ps.setString(5,t5);
  			         ps.executeUpdate();
  			       out.println("Sucessful!");
  			 } 
  			    
  			    catch(SQLException se){
  			 	      //Handle errors for JDBC
  			 	      se.printStackTrace();
  			 	   }catch(Exception e){
  			 	      //Handle errors for Class.forName
  			 	      e.printStackTrace();
  			 	   }finally {
  			 	        try {
  			 	            if(rs != null)
  			 	                rs.close();
  			 	            if(statement!= null)
  			 	            	statement.close();
  			 	            if(ps != null)
  			 	                ps.close();
  			 	            if(con != null)
  			 	                con.close();
  			 	        } catch (SQLException e) {}
  			 	   }
  			 	  
  		}
  %>
</body>
</html>