package com.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ConnectionManager {
	private static final String DIRVER_CLASS="com.mysql.jdbc.Driver";			//����MySQL��
	private static final String DATABASE_URL="jdbc:mysql://172.16.101.116/client_relations?" +
												"useUnicode=true&characterEncoding=GBK";
	private static final String DATABASE_USER="root";				//�û���
	private static final String DATABASE_PASSWORD="123456";			//����
	//����ݿ����ӷ���
	public static Connection getConnection(){
		Connection connection=null;//��������
		try {
			Class.forName(DIRVER_CLASS);
			connection=DriverManager.getConnection(
					DATABASE_URL,DATABASE_USER,DATABASE_PASSWORD);//��ȡ����
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	//�رն����ͷ���Դ
	public static void close(Connection connection,ResultSet rs,PreparedStatement ps){
		try {
			if (rs!=null) {
				rs.close();
				rs=null;
			}
			if (ps!=null) {
				ps.close();
				ps=null;
			}
			if (connection!=null&&(!connection.isClosed())) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
