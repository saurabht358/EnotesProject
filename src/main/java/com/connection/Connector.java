package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connector {
	 
		private static Connection connection;
		public static Connection getCon()  {
			if(connection==null) {
				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					String url = "jdbc:mysql://localhost:3308/enotes2";
					String username = "root";
					String password = "User@123";
					
					connection = DriverManager.getConnection(url,username,password);
					return connection;
					
				}catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
			}
			return connection;
		 
	}
}
