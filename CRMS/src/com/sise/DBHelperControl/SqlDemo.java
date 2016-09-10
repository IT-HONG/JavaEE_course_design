package com.sise.DBHelperControl;

import java.sql.ResultSet;
import java.sql.SQLException;


public class SqlDemo {

	public static void main(String[] args) throws SQLException {
		
		String s1="select * from cm_link_record";
    	ResultSet rs=DBHelper.query(s1);
    	if(rs.next()){
    		System.out.print(rs.getString(1)+" "+rs.getString(2));
    	}
	}

}
