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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Minh-PC
 */
public class LoginController extends HttpServlet {

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
        /*
        if co cookies thi getRequestDispatcher den home vs acc trong cookies else getRequestDispatcher login
         */

        Cookie cookies[] = request.getCookies();

        String user = null;
        String pass = null;
        if (cookies != null) {
            for (Cookie cooky : cookies) {
                if (cooky.getName().equals("user_cookie")) {
                    user = cooky.getValue();
                }
                if (cooky.getName().equals("pass_cookie")) {
                    request.setAttribute("password", cooky.getValue());
                    pass = cooky.getValue();
                }
            }
        }
        UserDBContext db = new UserDBContext();
        User acc = db.checkLogin(user, pass);
        if (acc == null) {
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", acc);
            response.sendRedirect("home");
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
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String remember = request.getParameter("remember");

        UserDBContext db = new UserDBContext();
        User acc = db.checkLogin(username, password);

        if (db.checkUser(username) == null) {
            request.setAttribute("w_name", "Username không đúng");
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        } else if (acc == null) {
            request.setAttribute("wrong", "Mật khẩu không đúng");
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", acc);
//            Cookie c = new Cookie("user_cookie", username);
//            Cookie p = new Cookie("pass_cookie", password);
//            if (remember != null) {
//                c.setMaxAge(10);
//                p.setMaxAge(10);
//            } else {
//                c.setMaxAge(0);
//                p.setMaxAge(0);
//            }
//            response.addCookie(c);
//            response.addCookie(p);

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
