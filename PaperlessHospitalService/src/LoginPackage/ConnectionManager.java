package LoginPackage;

import java.sql.*;
import java.util.*;


public class ConnectionManager {

   static Connection con;
   static String url;
         
   public static Connection getConnection()
   {
     
      try
      {
         //String url = "jdbc:odbc:" + "DataSource"; 
         // assuming "DataSource" is your DataSource name

         Class.forName("com.ibm.db2.jcc.DB2Driver");
         
         try
         {            	
            con = DriverManager.getConnection( "jdbc:db2://localhost:50000/logindb", "sairam", "prayas"); 
             								
         // assuming your SQL Server's	username is "username"               
         // and password is "password"
              
         }
         
         catch (SQLException ex)
         {
            ex.printStackTrace();
         }
      }

      catch(ClassNotFoundException e)
      {
         System.out.println(e);
      }

   return con;
}
}