/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.project1.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author GD
 */
public class SQLConnect {
    
    public  static  Connection getSQLServerConnection() throws SQLException, ClassNotFoundException{
        boolean sqlserver=true;
        if(sqlserver){
            String hostName="localhost";
            String sqlInstanceName="SQLEXPRESS";
            String database="moonstore";
            String userName="sa";
            String password="3733";

            return getSQLServerConnection(hostName,sqlInstanceName,database,userName,password);
        }else{
            String hostName = "localhost";
            String dbName = "project";
            String userName = "root";
            String password = "3733";

            return getSQLServerConnection(hostName, dbName, userName, password);
        }
        
        
        
    }
    
    //trường hợp sử dụng SQLServer
    public  static Connection getSQLServerConnection(String hostName,
            String sqlInstanceName, String database, String userName, String password)
            throws ClassNotFoundException, SQLException{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String connectionURL= "jdbc:sqlserver://"+hostName+":1433"+";instance="
                +sqlInstanceName+";databaseName="+database;
        Connection conn =DriverManager.getConnection(connectionURL,userName, password);
        return conn;
    }
    
    //trường hợp sử dụng MySQL
    public static Connection getSQLServerConnection(String hostName, String dbName,
         String userName, String password) throws SQLException,
         ClassNotFoundException {
     Class.forName("com.mysql.jdbc.Driver");
     String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName +"?useSSL=false";
     Connection conn = DriverManager.getConnection(connectionURL, userName,
             password);
     return conn;
 }
}
