package com.user.db;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectionUser {

	
	
	private static String url="jdbc:mysql://sliit.mysql.database.azure.com:3306/userdb?useSSL=true&requireSSL=false";
	private static String user = "paf@sliit";
	private static String password = "PASSWORD@123";
	private static Connection con;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		System.out.println("Connection Success");
		System.out.println("conected");
		return con;
	}
	
}
