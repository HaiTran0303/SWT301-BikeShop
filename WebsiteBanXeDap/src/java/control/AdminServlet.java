/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Account;
import model.Invoice;

/**
 *
 * @author MSI GF
 */
@WebServlet(name="AdminServlet", urlPatterns={"/admin"})
public class AdminServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("account");
        int uID;
        DAO d = new DAO();
        if(a == null){
            response.sendRedirect("login");
            return;
        }
        uID = a.getId();
        int checkIsAdmin = d.checkAccountAdmin(uID);
        if(checkIsAdmin == 0 ){
            response.sendRedirect("manager");
            return;
        }
        
        double totalMoney1 = d.totalMoneyDay(1);
        double totalMoney2 = d.totalMoneyDay(2);
        double totalMoney3 = d.totalMoneyDay(3);
        double totalMoney4 = d.totalMoneyDay(4);
        double totalMoney5 = d.totalMoneyDay(5);
        double totalMoney6 = d.totalMoneyDay(6);
        double totalMoney7 = d.totalMoneyDay(7);
        
        double totalMoneyMonth1 = d.totalMoneyMonth(1);
        double totalMoneyMonth2 = d.totalMoneyMonth(2);
        double totalMoneyMonth3 = d.totalMoneyMonth(3);
        double totalMoneyMonth4 = d.totalMoneyMonth(4);
        double totalMoneyMonth5 = d.totalMoneyMonth(5);
        double totalMoneyMonth6 = d.totalMoneyMonth(6);
        double totalMoneyMonth7 = d.totalMoneyMonth(7);
        double totalMoneyMonth8 = d.totalMoneyMonth(8);
        double totalMoneyMonth9 = d.totalMoneyMonth(9);
        double totalMoneyMonth10 = d.totalMoneyMonth(10);
        double totalMoneyMonth11 = d.totalMoneyMonth(11);
        double totalMoneyMonth12 = d.totalMoneyMonth(12);
        
        int allReview = d.countAllReview();
        int allProduct = d.countAllProduct();
        double sumAllInvoice = d.sumAllInvoice();
        
        List<Invoice> listAllInvoice = d.getAllInvoice();
        List<Account> listAllAccount = d.getAllAccount();
        
        request.setAttribute("listAllInvoice", listAllInvoice);
        request.setAttribute("listAllAccount", listAllAccount);
        request.setAttribute("sumAllInvoice", sumAllInvoice);
        
        request.setAttribute("allReview", allReview);
        request.setAttribute("allProduct", allProduct);
        
        request.setAttribute("totalMoney1", totalMoney1);
        request.setAttribute("totalMoney2", totalMoney2);
        request.setAttribute("totalMoney3", totalMoney3);
        request.setAttribute("totalMoney4", totalMoney4);
        request.setAttribute("totalMoney5", totalMoney5);
        request.setAttribute("totalMoney6", totalMoney6);
        request.setAttribute("totalMoney7", totalMoney7);
        
        request.setAttribute("totalMoneyMonth1", totalMoneyMonth1);
        request.setAttribute("totalMoneyMonth2", totalMoneyMonth2);
        request.setAttribute("totalMoneyMonth3", totalMoneyMonth3);
        request.setAttribute("totalMoneyMonth4", totalMoneyMonth4);
        request.setAttribute("totalMoneyMonth5", totalMoneyMonth5);
        request.setAttribute("totalMoneyMonth6", totalMoneyMonth6);
        request.setAttribute("totalMoneyMonth7", totalMoneyMonth7);
        request.setAttribute("totalMoneyMonth8", totalMoneyMonth8);
        request.setAttribute("totalMoneyMonth9", totalMoneyMonth9);
        request.setAttribute("totalMoneyMonth10", totalMoneyMonth10);
        request.setAttribute("totalMoneyMonth11", totalMoneyMonth11);
        request.setAttribute("totalMoneyMonth12", totalMoneyMonth12);
        
       
    
        request.getRequestDispatcher("statistic.jsp").forward(request, response);
       
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
