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
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;


/**
 *
 * @author MSI GF
 */
@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
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
        //get user, pass from cookie
//        Cookie arr[] = request.getCookies();
//        if(arr != null){
//            for (Cookie c : arr) {
//                if(c.getName().equals("cuser")){
//                    request.setAttribute("username", c.getValue());
//                }
//                if(c.getName().equals("cpassword")){
//                    request.setAttribute("password", c.getValue());
//                }
//            }
//        }
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");
        String password = request.getParameter("password");
        String rem = request.getParameter("rem");
        DAO d = new DAO();
        Account a = d.login(username, password);
        if(a == null){
            request.setAttribute("error", "Sai username hoac password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("account", a);
            Cookie cu = new Cookie("cuser", username);
            Cookie cp = new Cookie("cpassword", password);
            Cookie cr = new Cookie("crem", rem);
            
            if(rem != null){
                //muon luu
                cu.setMaxAge(60*60*24*365); 
                cp.setMaxAge(60*60*24*365);
                cr.setMaxAge(60*60*24*365);
            }else{
                cu.setMaxAge(0); // khong luu
                cp.setMaxAge(0);
                cr.setMaxAge(0);
            }
            
            response.addCookie(cu);
            response.addCookie(cp);
            response.addCookie(cr);
            
            response.sendRedirect("home");
        }
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
