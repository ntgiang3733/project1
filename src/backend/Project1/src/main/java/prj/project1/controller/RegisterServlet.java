
package prj.project1.controller;

import prj.project1.dao.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import prj.project1.model.Users;

public class RegisterServlet extends HttpServlet {

    
    UsersDAO usersDAO=new UsersDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       request.setCharacterEncoding("utf-8");
       response.setCharacterEncoding("utf-8");
       String name=request.getParameter("name");
       String email=request.getParameter("email");
       String password =request.getParameter("password");
       String name_err="",email_err="",password_err="";
       if(name.equals("")){
           name_err="Nhập tên (bắt buộc)";
       }
       if(name_err.length()>0){
           request.setAttribute("name_err", name_err);
       }
       if(email.equals("")){
           email_err="Nhập email(bắt buộc)";
       }else{
           try {
               if(usersDAO.checkMail(email)==true){
                   email_err="Email đã được sử dụng, vui lòng đăng ký email khác !";
               }
           } catch (SQLException | ClassNotFoundException ex) {
               Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
           }
       }
       if(email_err.length()>0){
           request.setAttribute("email_err", email_err);
       }
       if(password.equals("")){
           password_err="Nhập mật khẩu (bắt buộc)";
       }
       if(password_err.length()>0){
           request.setAttribute("password_err", password_err);
       }
       
       
       request.setAttribute("name", name);
       request.setAttribute("email", email);
       request.setAttribute("password", password);
       String url="/register.jsp";
        try {
            if(name_err.length()==0&&email_err.length()==0&&password_err.length()==0){
                Date date=new Date();
                Users users=new Users(date.getTime(),name,email,password,false);
                usersDAO.insertUser(users);
              
                url="/index.jsp";
            }else{
                url="/register.jsp";
            }
            RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (SQLException | ClassNotFoundException | ServletException | IOException e) {
            e.printStackTrace();
        }
    }

}
