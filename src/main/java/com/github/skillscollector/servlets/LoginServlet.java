package com.github.skillscollector.servlets;

import com.github.skillscollector.model.dao.UserDao;
import com.github.skillscollector.model.entities.User;
import org.hibernate.SessionFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        SessionFactory sessionFactory = (SessionFactory) this.getServletContext().getAttribute("session_factory");
        userDao = new UserDao(sessionFactory);
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/views/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        List<User> user =  userDao.getAllByUsernameAndPassword(username, password);

        if(user == null) {
            req.setAttribute("error", "Błędny login lub hasło");
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
            return;
        }

        req.getSession().invalidate();
        req.getSession(true);
        req.setAttribute("user", user);
        resp.sendRedirect("/user/skills");



    }
}
