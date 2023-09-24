package com.servlet;

import com.conn.dbConnect;
import com.dao.StuffDAO;
import com.entity.Stuff;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Date;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        StuffDAO dao = new StuffDAO(dbConnect.getConn());
        boolean flag = dao.deleteStuff(id);
        HttpSession session = req.getSession();
        if (flag) {
            session.setAttribute("success", "Operation Success!");
            resp.sendRedirect("index.jsp");
        } else {
            session.setAttribute("error", "Operation Error!");
            resp.sendRedirect("delete.jsp");
        }
    }
}
