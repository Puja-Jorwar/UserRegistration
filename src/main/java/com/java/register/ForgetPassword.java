package com.java.register;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/forgetpassword")
public class ForgetPassword extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("username");
		String newPass = req.getParameter("newpass");
		if (userName != null && newPass != null) {

			Connection connection = null;
			try {
				// Load DB credentials from config file (not hardcoded)
				Properties props = new Properties();
				InputStream input = getServletContext().getResourceAsStream("/WEB-INF/classes/db.properties");
				props.load(input);
				String url = props.getProperty("db.url");
				String user = props.getProperty("db.user");
				String dbPass = props.getProperty("db.password");

				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(url, user, dbPass);

				PreparedStatement preparedStatement = connection
						.prepareStatement("update customer set password = ? where username = ?");

				preparedStatement.setString(1, newPass);
				preparedStatement.setString(2, userName);

				int rows = preparedStatement.executeUpdate();

				if (rows > 0) {
					resp.sendRedirect("login.jsp");
				} else {
					resp.getWriter().println("Usernmae not found");

				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (connection != null) {
						connection.close();
					}

				} catch (SQLException e1) {

					e1.printStackTrace();
				}
			}
		}
	}

}
