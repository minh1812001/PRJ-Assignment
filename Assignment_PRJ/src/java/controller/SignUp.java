/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.SendMail;
import dal.UserDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Minh-PC
 */
public class SignUp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


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
        request.getRequestDispatcher("view/signup.jsp").forward(request, response);
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
        String role_id = request.getParameter("role_id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String re_password = request.getParameter("re-password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String full_name = request.getParameter("full_name");
        int nrole_id = Integer.parseInt(role_id);
        nrole_id = 1;
        UserDBContext db = new UserDBContext();
        if (db.checkUser(username) != null) {
            request.setAttribute("w_username", "Username " + username + " đã tồn tại!");
            request.getRequestDispatcher("view/signup.jsp").forward(request, response);

        } else if (db.checkEmail(email) != null) {
            request.setAttribute("w_email", "Email " + email + " đã tồn tại!");
            request.getRequestDispatcher("view/signup.jsp").forward(request, response);
        } else {
            if (!password.equals(re_password)) {
                request.setAttribute("w_pass", "Mật khảu không khớp.Vui lòng nhaaph lại.");
                request.getRequestDispatcher("view/signup.jsp").forward(request, response);
            } else {
                java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
                db.insert(nrole_id,username, password, email, phone, full_name, date);
                HttpSession session = request.getSession();
                User acc = new User();
                acc.setUsername(username);
                acc.setPassword(password);
                acc.setFull_name(full_name);
                acc.setEmail(email);
                acc.setPhone(phone);
                acc.setCreated_date(date);
                session.setAttribute("acc", acc);

                response.sendRedirect("home");
            }
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
