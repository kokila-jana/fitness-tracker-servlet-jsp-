package com.fit.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.fit.dao.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/workout")
public class WorkoutServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                          throws ServletException, IOException {

        HttpSession session = request.getSession();

        int userId = (Integer) session.getAttribute("userId");

        String exercise = request.getParameter("exercise");
        int duration = Integer.parseInt(request.getParameter("duration"));
        int calories = Integer.parseInt(request.getParameter("calories"));
        String date = request.getParameter("date");

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "insert into workouts(user_id,exercise,duration,calories,workout_date) values(?,?,?,?,?)"
            );

            ps.setInt(1, userId);
            ps.setString(2, exercise);
            ps.setInt(3, duration);
            ps.setInt(4, calories);
            ps.setString(5, date);

            ps.executeUpdate();

            response.sendRedirect("history.jsp");

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}