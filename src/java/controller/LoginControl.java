/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.dao;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.account;

/**
 *
 * @author my do
 */
//@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {

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
//        request.getRequestDispatcher("view/login.jsp").forward(request, response);

        Cookie array[] = request.getCookies();
        if (array != null) {
            for (Cookie o : array) {
                if (o.getName().equals("Cuser")) {
                    request.setAttribute("userC", o.getValue());
                }
                if (o.getName().equals("Cpass")) {
                    request.setAttribute("passC", o.getValue());
                }
            }
        }
        request.getRequestDispatcher("view/login.jsp").forward(request, response);
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
        processRequest(request, response);

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
        request.setCharacterEncoding("UTF-8");

        String u = request.getParameter("user");
        String p = request.getParameter("pass");
        String r = request.getParameter("rem");
        dao dao = new dao();
        account a = dao.login(u, p);
        if (a == null) {
            request.setAttribute("error", "Invalid username or password");
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        } else {
            HttpSession ses = request.getSession();
            ses.setAttribute("account", a);

            Cookie uC = new Cookie("Cuser", u);
            Cookie pC = new Cookie("Cpass", p);
            if (r != null) {
                uC.setMaxAge(3 * 60);
                pC.setMaxAge(3 * 60);
            } else {
                uC.setMaxAge(0);
                pC.setMaxAge(0);
            }
            response.addCookie(uC);
            response.addCookie(pC);

            response.sendRedirect("ShopControl");
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
