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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import prj.project1.model.Users;
/**
 *
 * @author GD
 */
public class UsersDAO {
    
    public boolean checkMail(String email) throws SQLException, ClassNotFoundException{
        Connection connection = SQLConnect.getSQLServerConnection();
        String sql="SELECT * FROM USERS WHERE EMAIL='"+email+"'";
        PreparedStatement ps;
        try{
            ps=connection.prepareCall(sql);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                connection.close();
                return true;
            }
        }catch(SQLException ex){
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
    }
    
    public boolean insertUser(Users u) throws SQLException, ClassNotFoundException{
        Connection connection = SQLConnect.getSQLServerConnection();
        String sql="INSERT INTO USERS VALUES(?,?,?,?,?)";
        try{
            PreparedStatement ps=connection.prepareCall(sql);
            ps.setLong(1, u.getID());
            ps.setString(2, u.getName());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPass());
            ps.setBoolean(5, u.isRole());
            ps.executeUpdate();
            return true;
        }catch(SQLException ex){
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
    }
    
    public Users login(String email,String password) throws SQLException, ClassNotFoundException{
        Connection connection=SQLConnect.getSQLServerConnection();
        String sql="SELECT * FROM USERS WHERE EMAIL='"+email+"' AND PASS='"+password+"'";
        PreparedStatement ps;
        try{
            ps=connection.prepareCall(sql);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                Users u=new Users();
                u.setEmail(rs.getString("email"));
                connection.close();
                return u;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    
    public Users getUser(long ID) throws SQLException, ClassNotFoundException{
        try{
            Connection connection = SQLConnect.getSQLServerConnection();
            String sql="SELECT * FROM USERS WHERE USER_ID=?";
            PreparedStatement ps= connection.prepareCall(sql);
            ps.setLong(1, ID);
            ResultSet rs=ps.executeQuery();
            Users u = new Users();
            while(rs.next()){
                u.setEmail(rs.getString("email"));
            }
            return u;
        }catch(SQLException ex){
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return null;
    }
    
    public Users getUser(String email) throws SQLException, ClassNotFoundException{
        try{
            Connection connection = SQLConnect.getSQLServerConnection();
            String sql="SELECT * FROM USERS WHERE EMAIL=?";
            PreparedStatement ps= connection.prepareCall(sql);
            ps.setString(1, email);
            ResultSet rs=ps.executeQuery();
            Users u = new Users();
            while(rs.next()){
                u.setEmail(rs.getString("email"));
                u.setID(rs.getLong("user_id"));
            }
            return u;
        }catch(SQLException ex){
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return null;
    }
    
    
    public boolean checkAccount(String email, String password) throws SQLException, ClassNotFoundException{
        Connection connection=SQLConnect.getSQLServerConnection();
        String sql="SELECT * FROM USERS WHERE EMAIL='"+email+"' AND PASS='"+password+"'";
        try{
            PreparedStatement ps= connection.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                return true;
            }
        }catch(SQLException ex){
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
    }
    
    public boolean  checkAD(String email, String password)throws SQLException,ClassNotFoundException{
        Connection conn=SQLConnect.getSQLServerConnection();
        String sql="select * from users where email='"+email+"' and pass='"+password+"' and role='1'";
        try{
            PreparedStatement ps= conn.prepareCall(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                return true;
            }
        }catch(SQLException ex){
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
    }
    
    public boolean  checkAD(String email)throws SQLException,ClassNotFoundException{
        Connection conn=SQLConnect.getSQLServerConnection();
        String sql="select * from users where email='"+email+"' and role='1'";
        try{
            PreparedStatement ps= conn.prepareCall(sql);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                return true;
            }
        }catch(SQLException ex){
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
    }
    
    public ArrayList<Users> getListUsers() throws 
            SQLException,ClassNotFoundException{
        Connection connection = SQLConnect.getSQLServerConnection();
        String sql="SELECT * FROM users";
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        ArrayList<Users> list =new ArrayList<>();
        while(rs.next()){
            Users u=new Users();
            u.setID(rs.getLong("user_id"));
            u.setName(rs.getString("name"));
            u.setEmail(rs.getString("email"));
            u.setPass(rs.getString("pass"));
            u.setRole(rs.getBoolean("role"));
            
            list.add(u);
        }
        return list;
    }
    
    public  boolean delete(long user_ID){
        try{
            Connection con = SQLConnect.getSQLServerConnection();
            String sql="DELETE FROM USERS WHERE USER_ID=?";
            PreparedStatement ps=con.prepareCall(sql);
            ps.setLong(1, user_ID);
            int temp=ps.executeUpdate();
            return temp==1;
        }catch(SQLException|ClassNotFoundException e){
            return false;
        }
    }
}
