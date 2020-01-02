/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.project1.dao;

import prj.project1.connect.SQLConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import prj.project1.model.BillDetail;
/**
 *
 * @author GD
 */
public class BillDetailDAO {
    
    public void insertBillDetail(BillDetail bd) throws 
            SQLException,ClassNotFoundException{
        Connection connection= SQLConnect.getSQLServerConnection();
        String sql="INSERT INTO BILL_DETAIL VALUES(?,?,?,?,?)";
        PreparedStatement ps=connection.prepareCall(sql);
        ps.setLong(1, bd.getBillDetailID());
        ps.setLong(2, bd.getBillID());
        ps.setLong(3, bd.getProductID());
        ps.setLong(4, bd.getPrice());
        ps.setInt(5, bd.getQuantity());
        ps.executeUpdate();
    }
    
    public static void main(String[] args) throws  
            SQLException,ClassNotFoundException{
        new BillDetailDAO().insertBillDetail(new BillDetail(1,1,1,2,2));
    }
}
