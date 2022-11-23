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
import java.util.List;
import models.Cart;
import models.shopCategory;
import models.shopProduct;

/**
 *
 * @author my do
 */
public class ShopControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    dao dao = new dao();

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
        processRequest(request, response);

        List<shopCategory> listC = dao.shopCtg();
        request.setAttribute("listCtg", listC);
        String cateid = request.getParameter("cid");
        if (cateid==null) {
            cateid="0";
        }
        request.setAttribute("tag", cateid);

        List<shopProduct> list = dao.getShopProductByCtg(cateid);
        List<shopProduct> listAll = dao.getAllShopProduct();
        int npp = 6;
        int cp, tp;
        String curp = request.getParameter("cp");
        if (curp == null) {
            cp = 1;
        } else {
            cp = Integer.parseInt(curp);
        }
        int start = (cp - 1) * npp;
        if (cateid == null || cateid.equals("0")) {
            tp = ((listAll.size() % 6 == 0) ? (listAll.size() / 6) : ((listAll.size() / 6) + 1));
            int end = Math.min(listAll.size(), cp * npp);

            List<shopProduct> listpp = dao.getShopProductByPage(listAll, start, end);
            request.setAttribute("list", listpp);
            request.setAttribute("tp", tp);
            request.setAttribute("cp", cp);

            request.getRequestDispatcher("view/shop.jsp").forward(request, response);
        } else {
            tp = ((list.size() % 6 == 0) ? (list.size() / 6) : ((list.size() / 6) + 1));
            int end = Math.min(list.size(), cp * npp);

            List<shopProduct> listpp = dao.getShopProductByPage(list, start, end);
            request.setAttribute("list", listpp);
            request.setAttribute("tp", tp);
            request.setAttribute("cp", cp);

            request.getRequestDispatcher("view/shop.jsp").forward(request, response);
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
