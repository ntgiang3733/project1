
package prj.project1.service;

import java.sql.SQLException;
import java.util.ArrayList;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import prj.project1.dao.UsersDAO;
import prj.project1.model.Users;

@Path("/users")
public class UserService {
    
    UsersDAO ud = new UsersDAO();
    
    
    /*
        LẤY DANH SÁCH TOÀN BỘ TÀI KHOẢN
    */
    //url:.../Project1/rest/users
    @GET
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public ArrayList<Users> getUsers_JSON() throws SQLException, ClassNotFoundException{
        ArrayList<Users> listU = ud.getListUsers();
        return listU;
    }
    
    
    /*
        LẤY THÔNG TIN TÀI KHOẢN THEO ID
    */
    //url:.../Project1/rest/users/{uID}
    @GET
    @Path("/{uID}")
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public Users getProduct(@PathParam("uID")long uID) throws SQLException, ClassNotFoundException{
        return ud.getUser(uID);
    }
    
    
    /*
        ĐĂNG NHẬP
    */
    ///url:.../Project1/rest/users/email/password
    @GET
    @Path("/{email}/{password}")
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public Users sortBy(@PathParam("email")String email,@PathParam("password")String password) 
            throws SQLException, ClassNotFoundException{
        Users u = ud.login(email, password);
        return u;
    }
    
    
    /*
        ĐĂNG KÝ
    */
    //url:.../Project1/rest/users
    @POST
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public boolean  addUser(Users u) throws SQLException, ClassNotFoundException{
        return ud.insertUser(u);
    }
    
    
    
    /*
        XÓA TÀI KHOẢN
    */
   //url:.../Project1/rest/users
    @DELETE
    @Path("/{id}")
    @Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
    public boolean  deleteProduct(@PathParam("id")long id) throws SQLException, ClassNotFoundException{
        return ud.delete(id);
    }
    
}
