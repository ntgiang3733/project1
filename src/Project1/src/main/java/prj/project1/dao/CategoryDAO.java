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
import prj.project1.model.Category;
/**
 *
 * @author GD
 */
public class CategoryDAO {
    
    
    public ArrayList<Category> getListCategory() throws 
            SQLException,ClassNotFoundException{
        Connection connection= SQLConnect.getSQLServerConnection();
        String sql="SELECT * FROM CATEGORY";
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        ArrayList<Category> list=new ArrayList<>();
        while(rs.next()){
            Category category=new Category();
            category.setCategoryID(rs.getInt("category_id"));
            category.setCategoryName(rs.getString("category_name"));
            list.add(category);
        }
        return list;
    }
    
    public static void main(String[] args) throws SQLException,ClassNotFoundException {
        CategoryDAO dao=new CategoryDAO();
        for(Category ds : dao.getListCategory()){
            System.out.println(ds.getCategoryID()+"-"+ds.getCategoryName());
        }
    }
    
    
    public boolean insert(Category c) throws SQLException,ClassNotFoundException{
        try{
            Connection connection = SQLConnect.getSQLServerConnection();
            String sql="INSERT INTO CATEGORY VALUE(?,?)";
            PreparedStatement ps=connection.prepareCall(sql);
            ps.setLong(1, c.getCategoryID());
            ps.setString(2, c.getCategoryName());
            int temp=ps.executeUpdate();
            return temp==1;
            
        }catch(SQLException ex){
            Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        
        return false;
    }
    
    
    public boolean update(Category c) throws 
            SQLException, ClassNotFoundException{
        try{
            Connection connection= SQLConnect.getSQLServerConnection();
            String sql="UPDATE CATEGORY SET CATEGORY_NAME=?WHERE CATEGORY_ID?";
            PreparedStatement ps=connection.prepareCall(sql);
            ps.setString(1, c.getCategoryName());
            ps.setLong(2, c.getCategoryID());
            int temp = ps.executeUpdate();
            return temp==1;
        }catch(SQLException | ClassNotFoundException e){
            return false;
        }
    }
    
    public boolean delete(long category_id) throws 
            SQLException,ClassNotFoundException{
        try{
            Connection connection= SQLConnect.getSQLServerConnection();
            String sql="DELETE FROM CATEGORY WHERE CATEGORY_ID=?";
            PreparedStatement ps=connection.prepareCall(sql);
            ps.setLong(1, category_id);
            int temp=ps.executeUpdate();
            return temp==1;
        }catch(SQLException|ClassNotFoundException e){
            return false;
        }
    }
}


