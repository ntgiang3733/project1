
package prj.project1.service;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import prj.project1.dao.ProductDAO;
import prj.project1.model.Product;

@Path("/products")
public class ProductService {
    
    ProductDAO pd = new ProductDAO();
    
    
    /*
        LẤY DANH SÁCH TOÀN BỘ SẢN PHẨM
    */
    //url:.../Project1/rest/products
    @GET
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public ArrayList<Product> getProducts_JSON() throws SQLException, ClassNotFoundException{
        ArrayList<Product> listP = pd.getListProduct();
        return listP;
    }
    
    
    /*
        LẤY THÔNG TIN SẢN PHẨM THEO ID
    */
    //url:.../Project1/rest/products/{prdID}
    @GET
    @Path("/{prdID}")
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public Product getProduct(@PathParam("prdID")long prdID) throws SQLException, ClassNotFoundException{
        return pd.getProduct(prdID);
    }
    
    
    /*
        LẤY DANH SÁCH SẢN PHẨM THEO LOẠI SẢN PHẨM VÀ LỌC SẢN PHẨM:
            categoryID = 1000 : tất cả
            categoryID = 1001 : laptop gaming
            categoryID = 1002 : laptop đồ họa
            categoryID = 1003 : laptop văn phòng
    
            value = all : tất cả sản phẩm
            value = name1 : sắp xếp theo tên A-Z
            value = name2 : sắp xếp theo tên Z-A
            value = price1 : sắp xếp theo giá tăng dần
            value = price2 : sắp xếp theo giá giảm dần
            value = ? : tìm kiếm các sản phẩm chứa chuỗi '?'

    */
    //url:.../Project1/rest/products/categoryID/value
    @GET
    @Path("/{categoryID}/{value}")
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public ArrayList sortBy(@PathParam("categoryID")long categoryID,@PathParam("value")String value) 
            throws SQLException, ClassNotFoundException{
        ArrayList<Product> listP = pd.sortBy(categoryID, value);
        return listP;
    }
    
    
    /*
        THÊM SẢN PHẨM
    */
    //url:.../Project1/rest/products
    @POST
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public boolean  addProduct(Product p) throws SQLException, ClassNotFoundException{
        return pd.insert(p);
    }
    
    
    /*
        SỬA SẢN PHẨM
    */
    //url:.../Project1/rest/products
    @PUT
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public boolean  updateProduct(Product p) throws SQLException, ClassNotFoundException{
        return pd.update(p);
    }
    
    
    /*
        XÓA SẢN PHẨM
    */
    //url:.../Project1/rest/products
    @DELETE
    @Path("/{id}")
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public boolean  deleteProduct(@PathParam("id")long id) throws SQLException, ClassNotFoundException{
        return pd.delete(id);
    }
    
}
