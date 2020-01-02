/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.project1.controller;

import prj.project1.dao.ProductDAO;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import prj.project1.model.Product;

/**
 *
 * @author GD
 */
public class AddProductServlet extends HttpServlet {

    ProductDAO pd=new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       request.setCharacterEncoding("utf-8");
       response.setCharacterEncoding("utf-8");
       String product_name=request.getParameter("product_name");
       String category_id=request.getParameter("category_id");
       String product_price =request.getParameter("product_price");
       String product_description=request.getParameter("product_description");
       String err="";
       if(product_name.equals("")||category_id.equals("")||product_price.equals("")||product_description.equals("")){
           err="nhập tất cả thông tin sản phẩm (bắt buộc)";
       }
       if(err.length()>0){
           request.setAttribute("err", err);
       } 
       request.setAttribute("product_name", product_name);
       request.setAttribute("category_id", category_id);
       request.setAttribute("product_price", product_price);
       request.setAttribute("product_description", product_description);
       
       String url="/index.jsp";
        try {
            if(err.length()==0){
                Product p = new Product(pd.countProduct(),(long)Long.parseLong(category_id),product_name,"1.jpg",(int)Integer.parseInt(product_price),product_description);
                pd.insert(p);
                url="/admin/ad-header.jsp";
            }else{
                url="/admin/ad-addproduct.jsp";
            }
            RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (SQLException | ClassNotFoundException | ServletException | IOException e) {
            e.printStackTrace();
        }
        
    }
}
