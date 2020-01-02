/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.project1.dao;


import prj.project1.connect.SQLConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import prj.project1.model.Bill;

/**
 *
 * @author GD
 */
public class BillDAO {
    public void insertBill(Bill bill) throws SQLException, ClassNotFoundException{
        Connection connection=SQLConnect.getSQLServerConnection();
        String sql="INSERT INTO BILL VALUES(?,?,?,?,?,?)";
        PreparedStatement ps=connection.prepareCall(sql);
        ps.setLong(1, bill.getBillID());
        ps.setLong(2, bill.getID());
        ps.setLong(3, bill.getTotal());
        ps.setString(4, bill.getPayment());
        ps.setString(5, bill.getAddress());
        ps.setTimestamp(6, bill.getDate());
        ps.executeUpdate();
    }
    
    public ArrayList<Bill> getListBill() throws SQLException, ClassNotFoundException{
        try{
            Connection connection= SQLConnect.getSQLServerConnection();
            String sql="SELECT* FROM bill";
            PreparedStatement ps=connection.prepareCall(sql);
            ResultSet rs=ps.executeQuery();
            ArrayList<Bill> list=new ArrayList<>();
            while(rs.next()){
                Bill bill=new Bill();
                bill.setBillID(rs.getLong("bill_id"));
                bill.setID(rs.getLong("user_id"));
                bill.setTotal(rs.getLong("total"));
                bill.setPayment(rs.getString("payment"));
                bill.setAddress(rs.getString("address"));
                bill.setDate(rs.getTimestamp("date"));
                list.add(bill);
            }
            return list;
        }catch(SQLException ex){
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return null;
    }
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        new BillDAO().insertBill(new Bill(1,1,1,"s","s",new Timestamp(new Date().getTime())));
    }
    
}
