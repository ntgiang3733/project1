
package prj.project1.controller;

import prj.project1.dao.BillDAO;
import prj.project1.dao.BillDetailDAO;
import prj.project1.dao.UsersDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import prj.project1.model.Bill;
import prj.project1.model.BillDetail;
import prj.project1.model.Cart;
import prj.project1.model.Item;

public class CheckoutServlet extends HttpServlet {

    private final BillDAO billDAO=new BillDAO();
    private final BillDetailDAO billDetailDAO=new BillDetailDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String payment=request.getParameter("payment");
        String address=request.getParameter("address");
        HttpSession session=request.getSession();
        Cart cart=(Cart) session.getAttribute("cart");
        String email=(String)session.getAttribute("email");
        UsersDAO userD=new UsersDAO();
        try{
            long ID=new Date().getTime();
            Bill bill=new Bill();
            bill.setBillID(ID);
            bill.setID(userD.getUser(email).getID());
            bill.setTotal(cart.total());
            bill.setPayment(payment);
            bill.setAddress(address);
            bill.setDate(new Timestamp(new Date().getTime()));
            
            for(Map.Entry<Long,Item> list:cart.getCartItems().entrySet()){
                billDetailDAO.insertBillDetail(new BillDetail(new Date().getTime(),ID,
                list.getValue().getProduct().getProductID(),
                list.getValue().getProduct().getProductPrice(),
                list.getValue().getQuantity()));
            }
            billDAO.insertBill(bill);
        }catch(SQLException | ClassNotFoundException e){
        }
        response.sendRedirect("/Project/index.jsp");
    }


}
