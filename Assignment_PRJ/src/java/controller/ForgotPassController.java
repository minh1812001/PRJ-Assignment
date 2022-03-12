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
public class ForgotPassController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        request.getRequestDispatcher("view/forgotpass.jsp").forward(request, response);
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
        request.setCharacterEncoding("utf-8");

        String username = request.getParameter("username");
        String email = request.getParameter("email");

        UserDBContext db = new UserDBContext();
        User ubyname = db.getUserByUsername(username);
        if (ubyname == null) {
            request.setAttribute("username", username + " không tồn tại");
            request.getRequestDispatcher("view/forgotpass.jsp").forward(request, response);
        } else {
            if (!email.endsWith(ubyname.getEmail())) {
                request.setAttribute("email", "Email không khớp với tài khoản");
                request.getRequestDispatcher("view/forgotpass.jsp").forward(request, response);
            } else {
                String newpass = db.generateRandomPassword();
                SendMail m = new SendMail();
                m.sentEmail(ubyname.getEmail(), "Thông báo từ FM Farm!!!", "Mật khẩu mới của bạn là :" + newpass);
                User u = new User(ubyname.getId(), ubyname.getRole_id(), ubyname.getUsername(), newpass, ubyname.getEmail(), ubyname.getPhone(), ubyname.getFull_name(),
                        ubyname.getDob(), ubyname.isGender(), ubyname.getAvatar(), ubyname.getCreated_date());
                db.changePass(ubyname);
                response.sendRedirect("login");
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
