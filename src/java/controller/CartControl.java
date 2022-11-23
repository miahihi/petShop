/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DAO.dao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import models.Cart;
import models.Item;
import models.shopProduct;

/**
 *
 * @author my do
 */
public class CartControl extends HttpServlet {

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
//        request.getRequestDispatcher("view/shop.jsp").forward(request, response);
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
        dao dao = new dao();
//        List<shopProduct> list = dao.getAllShopProduct();
        Cookie[] arr = request.getCookies();
        String txt="";
        if(arr!=null){
            for (Cookie c : arr) {
                if (c.getName().equals("cart")) {
                    txt+=c.getValue();
                    c.setMaxAge(0);
                    response.addCookie(c);
                }
  
            }
        }
        String num= request.getParameter("num");
        String id= request.getParameter("id");
        String cid= request.getParameter("cid");
        if(txt.isEmpty()){
            txt+=id+"_"+num;
        }else{
            txt=txt+"!"+id+"_"+num;
        }
        Cookie c = new Cookie("cart", txt);
        c.setMaxAge(3*24*60*60);
        response.addCookie(c);
        response.sendRedirect("detail?pid="+id+"&cid="+cid);
//        request.getRequestDispatcher("ShopControl").forward(request, response);
//        processRequest(request, response);
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