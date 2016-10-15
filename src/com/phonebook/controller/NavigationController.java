package com.phonebook.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class NavigationController extends HttpServlet{

    public NavigationController() {
    }


    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String op = req.getParameter("acao");

        if ( op != null) {
            int opInt = Integer.parseInt(op);
            switch (opInt) {
                case 1:
                    res.sendRedirect("/pages/add.jsp");
                    break;
                case 2:
                    res.sendRedirect("/pages/list.jsp");
                    break;
                case 3:
                    res.sendRedirect("/pages/search.jsp");
                    break;
                default: res.sendRedirect("inicio.jsp");
            }
        }

        if(req.getParameter("remover") != null) {
            req.setAttribute("id", req.getParameter("id"));
            req.getRequestDispatcher("/pages/remove.jsp").forward(req, res);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
