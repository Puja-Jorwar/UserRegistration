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
import javax.servlet.http.HttpSession;

@WebServlet("/register")
public class Register extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("server started...!");
		String username = req.getParameter("username");
		String password = req.getParameter("password");

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

			PreparedStatement preparedStatement = connection.prepareStatement("insert into customer values(?,?)");

			preparedStatement.setString(1, username);
			preparedStatement.setString(2, password);

			preparedStatement.execute();

			HttpSession session = req.getSession();
			RequestDispatcher dispacher = req.getRequestDispatcher("customer.jsp");
			dispacher.forward(req, resp);
			System.out.println("Request Forwarded...!");

		} catch (IOException | SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
	}

}
