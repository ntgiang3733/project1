package prj.project1.controller;

import prj.project1.dao.UsersDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogInServlet extends HttpServlet {

    private UsersDAO usersDAO=new UsersDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if(request.getParameter("command").equals("logout")){
            HttpSession session=request.getSession();
            session.invalidate();
            response.sendRedirect("/Project/index.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       request.setCharacterEncoding("utf-8");
       response.setCharacterEncoding("utf-8");
       String email=request.getParameter("email");
       String password =request.getParameter("password");
       String err="";
       if(email.equals("")||password.equals("")){
           err="Email hoặc mật khẩu không hợp lệ";
       }else try {
           if(usersDAO.checkAccount(email, password)==false){
               err="Email hoặc mật khẩu không đúng";
           }
       } catch (SQLException | ClassNotFoundException ex) {
           Logger.getLogger(LogInServlet.class.getName()).log(Level.SEVERE, null, ex);
       }
       if(err.length()>0){
           request.setAttribute("err",err);
       }
       String url="/login.jsp";
       try{
           if(err.length()==0){
               HttpSession session=request.getSession();
               session.setAttribute("email",email);
               if(usersDAO.checkAD(email, password)){
                   url="/admin/ad-header.jsp";
               }else{
                   url="/index.jsp";
               }
               
           }else{
               url="/login.jsp";
           }
           RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
           rd.forward(request, response);
       }catch(Exception e){
           
       }
       
    }
    
}
