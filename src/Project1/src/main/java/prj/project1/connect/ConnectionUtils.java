/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.project1.connect;

import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author GD
 */
public class ConnectionUtils {
    public  static  Connection getMyConnection()throws SQLException, ClassNotFoundException{
        return SQLConnect.getSQLServerConnection();
    }
    
    //test connection...
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println("Get connection ...");
        
        //lấy đối tượng Connection kết nối vào database.
        Connection conn= ConnectionUtils.getMyConnection();
        
        System.out.println("Get connection "+conn);
        System.out.println("Done!");
    }
}