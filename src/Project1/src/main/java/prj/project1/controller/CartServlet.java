/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.project1.controller;

import prj.project1.dao.ProductDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import prj.project1.model.Cart;
import prj.project1.model.Item;
import prj.project1.model.Product;

/**
 *
 * @author GD
 */
public class CartServlet extends HttpServlet {

    private final ProductDAO productDAO=new ProductDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession();
        String command = request.getParameter("command");
        String productID=request.getParameter("product_ID");
        Cart cart=(Cart)session.getAttribute("cart");
        ArrayList<Long> listBuy=null;
        String url="/cart.jsp";
        
        try{
            Long idProduct=(long)Long.parseLong(productID);
            Product product=productDAO.getProduct(idProduct);
            long idBuy=0;
            if(request.getParameter("cartID")!=null){
               idBuy=Long.parseLong(request.getParameter("cartID")) ;
           }
            switch(command){
                case "plus":
                    if(listBuy==null){
                        listBuy=new ArrayList<>();
                       session.setAttribute("cartID", idBuy);
                    }
                    if(cart.getCartItems().containsKey(idProduct)){
                        cart.plusToCart(idProduct, new Item(product,cart.getCartItems().get(idProduct).getQuantity()));
                    }else{
                        cart.plusToCart(idProduct, new Item(product,1));
                        listBuy.add(idBuy);
                    }
                    break;
                case "sub":
                    if(listBuy==null){
                        listBuy=new ArrayList<>();
                       session.setAttribute("cartID", idBuy);
                    }
                    if(cart.getCartItems().containsKey(idProduct)){
                        cart.subToCart(idProduct, new Item(product,cart.getCartItems().get(idProduct).getQuantity()));
                    }else{
                        cart.subToCart(idProduct, new Item(product,1));
                        listBuy.add(idBuy); 
                    }
                    break;
                case "remove":
                    cart.removeToCart(idProduct);
                    break;
            }
            RequestDispatcher rd= getServletContext().getRequestDispatcher(url);
           rd.forward(request, response);
        }catch(NumberFormatException | SQLException | ClassNotFoundException e){

        }
        
    }
}
