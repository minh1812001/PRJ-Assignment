/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDBContext;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ChangePassController extends HttpServlet {

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
        HttpSession session = request.getSession();
        request.getRequestDispatcher("view/changepass.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        String password = request.getParameter("pass");
        String npassword = request.getParameter("npass");
        String rnpassword = request.getParameter("rnpass");
        User acc = (User) session.getAttribute("acc");
        UserDBContext db = new UserDBContext();

        if (!password.equals(acc.getPassword())) {
            request.setAttribute("old_pass", "Mật khẩu của ban không khớp.Vui lòng nhập lại.");
            request.getRequestDispatcher("view/changepass.jsp").forward(request, response);
        } else {
            if (!npassword.endsWith(rnpassword)) {
                request.setAttribute("new_pass", "Mật khẩu mới của bạn không khớp với nhau.Vui lòng nhập lại.");
                request.getRequestDispatcher("view/changepass.jsp").forward(request, response);

            } else {
                User u = new User(acc.getId(), acc.getRole_id(), acc.getUsername(), npassword, acc.getEmail(), acc.getPhone(), acc.getFull_name(),
                        acc.getDob(), acc.isGender(), acc.getAvatar(), acc.getCreated_date());
                db.changePass(u);
                request.setAttribute("pass_success", "Thay đổi mật khẩu thành công.");
                session.setAttribute("acc", u);
                response.sendRedirect("home");
            }

        }

    }

}
