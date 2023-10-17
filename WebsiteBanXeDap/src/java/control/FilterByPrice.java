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
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author MSI GF
 */
@WebServlet(name = "FilterByPrice", urlPatterns = {"/filterByPrice"})
public class FilterByPrice extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FilterByPrice</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FilterByPrice at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DAO d = new DAO();
        List<Product> listA = new ArrayList<>();
        String checkbox1 = request.getParameter("checkbox");
        String[] checkbox = checkbox1.split(",");
        if (checkbox.length != 0) {
            for (String x : checkbox) {
                
                if (x.equals("1")) {
                    List<Product> list = d.getProductByPrice(0, 1000);
                    addProductToList(listA, list);

                }
                if (x.equals("2")) {
                    List<Product> list = d.getProductByPrice(1000, 5000);
                    addProductToList(listA, list);

                }
                if (x.equals("3")) {
                    List<Product> list = d.getProductByPrice(5000, 10000);
                    addProductToList(listA, list);

                }
                if (x.equals("4")) {
                    List<Product> list = d.getProductByPrice(10000, 100000);
                    addProductToList(listA, list);
                }
                
                
            }

        } 
        if(checkbox1.equals("")){
            listA = d.getAllProduct();
        }
        PrintWriter out = response.getWriter();
        for (Product o : listA) {
            out.println("  <div class=\"col-lg-4 col-md-6 col-sm-12 pb-1\">\n"
                    + "                                <div class=\"card product-item border-0 mb-4\">\n"
                    + "                                    <a href=\"detail?pid=" + o.getId() + "\" class=\"btn btn-sm text-dark p-0\">\n"
                    + "                                        <div class=\"card-header product-img position-relative overflow-hidden bg-transparent border p-0\">\n"
                    + "                                            <img class=\"img-fluid w-100\" src=\"" + o.getImage() + "\" alt=\"\">\n"
                    + "                                        </div>\n"
                    + "                                        <div class=\"card-body border-left border-right text-center p-0 pt-4 pb-3\">\n"
                    + "                                            <h6 class=\"text-truncate mb-3\">" + o.getName() + "</h6>\n"
                    + "                                            <div class=\"d-flex justify-content-center\">\n"
                    + "                                                <h6><strong>$" + o.getPrice() + "</strong></h6>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                        <div class=\"card-footer d-flex justify-content-between bg-light border\">\n"
                    + "\n"
                    + "                                            <a href=\"\" class=\"btn btn-sm text-dark p-0\"><i class=\"fas fa-shopping-cart text-primary mr-1\"></i>Add To Cart</a>\n"
                    + "                                        </div>\n"
                    + "                                </div>\n"
                    + "                            </div>");
        }

    }

    public void addProductToList(List<Product> listA, List<Product> list) {
        for (Product product : list) {

            listA.add(product);

        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
