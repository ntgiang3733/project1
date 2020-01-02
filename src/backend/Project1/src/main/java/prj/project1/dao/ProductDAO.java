
package prj.project1.dao;


import prj.project1.connect.SQLConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import prj.project1.model.Product;

/**
 *
 * @author GD
 */
public class ProductDAO {
    public  ArrayList<Product> getListProductByCategory(long category_id) throws 
            SQLException,ClassNotFoundException{
        Connection connection=SQLConnect.getSQLServerConnection();
        //String sql="SELECT * FROM PRODUCT WHERE CATEGORY_ID='"+category_id+"'";
        String sql="";
        if(category_id==1000){
            sql="SELECT * FROM PRODUCT";
        }else{
            sql="SELECT * FROM PRODUCT WHERE CATEGORY_ID='"+category_id+"'";
        }
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        ArrayList<Product> list=new ArrayList<>();
        while(rs.next()){
            Product product=new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getInt("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    
    public  ArrayList<Product> sortBy(long category_id,String value)throws 
            SQLException,ClassNotFoundException{
        Connection connection=SQLConnect.getSQLServerConnection();
        String sql="";
        switch (value) {
            case "name1":
                if(category_id==1000){
                    sql="select * from product order by product_name";
                }else{
                    sql="select * from product where category_id='"+category_id+"' order by product_name" ;
                }
                break;
            case "name2":
                if(category_id==1000){
                    sql="select * from product order by product_name desc";
                }else{
                    sql="select * from product where category_id='"+category_id+"' order by product_name desc" ;
                }
                break;
            case "price1":
                if(category_id==1000){
                    sql="select * from product order by product_price";
                }else{
                    sql="select * from product where category_id='"+category_id+"' order by product_price" ;
                }
                break;
            case "price2":
                if(category_id==1000){
                    sql="select * from product order by product_price desc";
                }else{
                    sql="select * from product where category_id='"+category_id+"' order by product_price desc" ;
                }
                break;
            case "all":
                if(category_id==1000){
                    sql="select * from product";
                }else{
                    sql="select * from product where category_id='"+category_id+"'" ;
                }
                break;
            default:
                if(category_id==1000){
                    sql="select * from product where product_name like N'%"+value+"%'";
                }else{
                    sql="select * from product where category_id='"+category_id+"' and product_name like N'"+value+"'" ;
                }
                break;
        }
        
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs= ps.executeQuery();
        ArrayList<Product> list=new ArrayList<>();
        while(rs.next()){
            Product product=new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setCategoryID(rs.getLong("category_id"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getInt("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    
    
    public  Product getProduct(long productID) throws 
            SQLException,ClassNotFoundException{
        Connection connection = SQLConnect.getSQLServerConnection();
        String sql="SELECT * FROM PRODUCT WHERE PRODUCT_ID='"+productID+"'";
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        Product product=new Product();
        while(rs.next()){
            product.setProductID(rs.getLong("product_id"));
            product.setCategoryID(rs.getLong("category_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getInt("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            
        }
        return product;
    }
    
    public ArrayList<Product> getListByNav(long categoryID,int firstResult,int maxResult)throws 
            SQLException,ClassNotFoundException{
        Connection connection= SQLConnect.getSQLServerConnection();
        String sql="SELECT * FROM PRODUCT WHERE CATEGORY_ID='"+categoryID+"' LIMIT ?,?";
                PreparedStatement ps= connection.prepareCall(sql);
                ps.setInt(1, firstResult);
                ps.setInt(2, maxResult);
                ResultSet rs= ps.executeQuery();
                ArrayList<Product> list= new ArrayList<>();
                while(rs.next()){
                    Product product = new Product();
                    product.setProductID(rs.getLong("product_id"));
                    product.setProductName(rs.getString("product_name"));
                    product.setProductImage(rs.getString("product_image"));
                    product.setProductPrice(rs.getInt("product_price"));
                    product.setProductDescription(rs.getString("product_description"));
                    list.add(product);
                }
                return list;
    }
    
    public ArrayList<Product> getListProduct() throws 
            SQLException,ClassNotFoundException{
        Connection connection = SQLConnect.getSQLServerConnection();
        String sql="SELECT * FROM product";
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        ArrayList<Product> list =new ArrayList<>();
        while(rs.next()){
            Product product=new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getInt("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    
    
    
    public long countProduct() throws 
            SQLException,ClassNotFoundException{
        Connection connection=SQLConnect.getSQLServerConnection();
        String sql="SELECT MAX(PRODUCT_ID) FROM PRODUCT ";
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        long count=0;
        while(rs.next()){
            count=rs.getInt(1);
        }
        return count+1;
    }
    
    public int countProductByCategory(long categoryID) throws 
            SQLException,ClassNotFoundException{
        Connection connection=SQLConnect.getSQLServerConnection();
        String sql="SELECT COUNT(PRODUCT_ID) FROM PRODUCT WHERE CATEGORY_ID='"+categoryID+"'";
        PreparedStatement ps=connection.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        int count=0;
        while(rs.next()){
            count=rs.getInt(1);
        }
        return count;
    }
    
    public boolean insert(Product p) throws SQLException,ClassNotFoundException{
        Connection connection = SQLConnect.getSQLServerConnection();
        String sql="INSERT INTO PRODUCT VALUES(?,?,?,?,?,?)";
        try{
            PreparedStatement ps=connection.prepareCall(sql);
            ps.setLong(1, p.getProductID());
            ps.setLong(2, p.getCategoryID());
            ps.setString(3, p.getProductName());
            ps.setString(4, p.getProductImage());
            ps.setInt(5, p.getProductPrice());
            ps.setString(6, p.getProductDescription());
            ps.executeUpdate();
            return true;
        }catch(SQLException ex){
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE,null,ex);
        }
        return false;
    }
    
    
    public boolean update(Product p) throws SQLException,ClassNotFoundException{
        try{
            Connection connection= SQLConnect.getSQLServerConnection();
            String sql="UPDATE PRODUCT SET CATEGORY_ID=?,PRODUCT_NAME=?,PRODUCT_PRICE=?,PRODUCT_DESCRIPTION=? WHERE PRODUCT_ID=?";
            PreparedStatement ps=connection.prepareCall(sql);
            ps.setLong(1, p.getCategoryID());
            ps.setString(2, p.getProductName());
            ps.setDouble(3, p.getProductPrice());
            ps.setString(4, p.getProductDescription());
            ps.setLong(5, p.getProductID());
            int temp=ps.executeUpdate();
            return temp==1;
        }catch(SQLException|ClassNotFoundException e){
            return false;
        }
    }
    
    public boolean delete(long product_id) throws SQLException, ClassNotFoundException{
        try{
            Connection connection=SQLConnect.getSQLServerConnection();
            String sql="DELETE FROM PRODUCT WHERE PRODUCT_ID=?";
            PreparedStatement ps=connection.prepareCall(sql);
            ps.setLong(1, product_id);
            int temp=ps.executeUpdate();
            return temp==1;
        }catch(SQLException|ClassNotFoundException e){
            return false;
        }
    }
    
    public static void main(String[] args) throws 
            SQLException,ClassNotFoundException{
        ProductDAO dao= new ProductDAO();
        //System.out.println(dao.sortBy(1000, "name2"));
        
    }
}
