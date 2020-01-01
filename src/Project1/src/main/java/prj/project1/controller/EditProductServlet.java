
package prj.project1.controller;

import prj.project1.dao.ProductDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import prj.project1.model.Product;


public class EditProductServlet extends HttpServlet {

    

    ProductDAO pd=new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String product_ID = request.getParameter("product_ID");
        String url = "";
        try {
            switch (command) {
                case "delete":
                    pd.delete(Long.parseLong(product_ID));
                    url = "/admin/ad-header.jsp";
                    break;
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       request.setCharacterEncoding("utf-8");
       response.setCharacterEncoding("utf-8");
       String id= request.getParameter("product_ID");
       String product_name=request.getParameter("product_name");
       String category_id=request.getParameter("category_id");
       String product_price =request.getParameter("product_price");
       String product_description=request.getParameter("product_description");
       String command = request.getParameter("command");
       String err="";
       
       long product_ID= (long)Long.parseLong(id);
       
       String url="/index.jsp";
        try {
            if(product_name.equals("")){
                product_name=pd.getProduct(product_ID).getProductName();
            }
            if(product_description.equals("")){
                product_description=pd.getProduct(product_ID).getProductDescription();
            }
            if(product_price.equals("")){
                product_price=String.valueOf(pd.getProduct(product_ID).getProductPrice());
            }
            if(category_id.equals("")){
                category_id=String.valueOf(pd.getProduct(product_ID).getCategoryID());
            }
            switch (command){
                    case "edit":
                        request.setAttribute("product_name", product_name);
                        request.setAttribute("category_id", category_id);
                        request.setAttribute("product_price", product_price);
                        request.setAttribute("product_description", product_description);
                        Product p = new Product(13,Long.parseLong(category_id),product_name,"1.jpg",Integer.parseInt(product_price),product_description);
                        pd.update(p);
                        url="/admin/ad-header.jsp";
                        break;
                    case "delete":
                        pd.delete(product_ID);
                        url="/admin/ad-header.jsp";
                        break;
            }
            RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (SQLException | ClassNotFoundException | ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    

}
