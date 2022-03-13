/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.UserDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
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
public class UpdateUserController extends HttpServlet {

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
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserDBContext udb= new UserDBContext();
        User u = udb.getUserByUserId(userId);
        request.setAttribute("uss", u);
        request.getRequestDispatcher("view/updateuser.jsp").forward(request, response);
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
        UserDBContext udb= new UserDBContext();
        int userId = Integer.parseInt(request.getParameter("userId"));    
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String full_name = request.getParameter("full_name");
        Date dob = Date.valueOf(request.getParameter("dob"));
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        boolean gender = request.getParameter("gender").equals("male");
        String avatar = request.getParameter("avatar");
        int role_id = Integer.parseInt(request.getParameter("role_id"));
        Date created_date = Date.valueOf(request.getParameter("created_date"));
        User u = new User();
        u.setId(userId);
        u.setRole_id(role_id);
        u.setDob(dob);
        u.setEmail(email);
        u.setPhone(phone);
        u.setFull_name(full_name);
        u.setUsername(username);
        u.setPassword(password);
        u.setCreated_date(created_date);
        u.setGender(gender);
        u.setAvatar(avatar);
        udb.update(u);
        request.setAttribute("uss", u);
        request.getRequestDispatcher("view/updateuser.jsp").forward(request, response);
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
