/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ArticleDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Article;
import model.ArticlePage;

/**
 *
 * @author MyPC
 */
@WebServlet(name = "SearchController", urlPatterns = {"/SearchController"})
public class SearchController extends HttpServlet {

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
        try {
            ArticleDAO db = new ArticleDAO();
            
            //get searchStr
            String searchStr = request.getParameter("searchStr");
            
            //get page
            String page = request.getParameter("page");
            if (page == null) {
                page = "1";
            }
            int pageInt = 1;
            try {
                pageInt = Integer.parseInt(page);
            } catch (NumberFormatException e) {
                request.setAttribute("error", "error: page must be an integer");
            }
            
            int maxPageItem = 3;
            
            //total pages
            int totalItem = db.getTotalItemSearch(searchStr);
            int totalPage = (totalItem+maxPageItem-1)/maxPageItem;
            
            //search
            ArrayList<Article> result = db.searchByTitle(searchStr, pageInt, maxPageItem);
            
            //send data
            request.setAttribute("searchStr", searchStr);
            request.setAttribute("totalPage", pageInt>totalPage||pageInt<=0?0:totalPage);
            request.setAttribute("result", result);
            request.setAttribute("page", page);
            request.setAttribute("imagePath", db.getImagePath());
            
            //recent articles
            request.setAttribute("newest", db.getNewestArticle());
            request.setAttribute("last5", db.get5LastArticles());
            request.getRequestDispatcher("views/search.jsp").forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("views/error.jsp").forward(request, response);
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
