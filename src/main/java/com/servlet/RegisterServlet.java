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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        Date birthday = Date.valueOf(req.getParameter("birthday"));
        int age = Integer.parseInt(req.getParameter("age"));
        String language = req.getParameter("language");
        String university = req.getParameter("university");

        Stuff stuff = new Stuff(name, birthday, age, language, university);
        StuffDAO dao = new StuffDAO(dbConnect.getConn());
        HttpSession session = req.getSession();
        boolean flag = dao.createStuff(stuff);
        if (flag) {
            session.setAttribute("success", "Operation Success!");
            resp.sendRedirect("index.jsp");
        } else {
            session.setAttribute("error", "Operation Error!");
            resp.sendRedirect("create.jsp");
        }
    }

}
