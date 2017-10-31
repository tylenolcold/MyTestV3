package com.yumine.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {
		public Connection getCon() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				String urlString = "jdbc:mysql://localhost/question_database?characterEncoding=utf-8";
				String userString = "root";
				String passwordString = "0000";
				
				Connection connection = DriverManager.getConnection(urlString, userString, passwordString);
				
				return connection;
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return null;
			}
		}
}
