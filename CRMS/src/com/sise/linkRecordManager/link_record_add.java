/**
 * 
 */
package com.sise.linkRecordManager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sise.DBHelperControl.*;

/**   
 *    
 * ��Ŀ��ƣ�ManagerSystem   
 * ����ƣ�link_record_add   
 * ��������   
 * �����ˣ�����
 * ����ʱ�䣺2015��7��9�� ����10:50:50   
 * �޸��ˣ�Lim   
 * �޸�ʱ�䣺2015��7��9�� ����10:50:50   
 * �޸ı�ע��  
 * @version 1.0.0   
 *    
 */

public class link_record_add extends HttpServlet {

	
	public link_record_add() {
		super();
	}

	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("GBK");
		request.setCharacterEncoding("GBK");
	  	response.setCharacterEncoding("GBK");
		PrintWriter out = response.getWriter();
		String s1=request.getParameter("t1");
		String s2=request.getParameter("t2");
		String s3=request.getParameter("t3");
		String s4=request.getParameter("t4");
		String s5=request.getParameter("t5");
		String s6=request.getParameter("t6");
		String s7=request.getParameter("s1");
		String s8=request.getParameter("s2");
		String s10= "select * from cm_link_record";
		int i=0,j=0;
		String s11="";
		ResultSet rs =DBHelper.query(s10);
		try {
			while(rs.next()){
				s11=rs.getString(2);
				i=Integer.parseInt(s11);
				if(i>j){
					j=i;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String s9="insert into cm_link_record values('"+s3+"','"+(j+1)+"','"+s1+"','"+s2+"','"+s7+"','"+s8+"','"+s4+"','"+s5+"','"+s6+"')";
		DBHelper.update(s9);
		System.out.println(i+1+" "+s1+" "+s2+" "+s3+" "+s4+" "+s5+" "+s6+" "+s7+" "+s8);
		DBHelper.close();	
		response.sendRedirect("/ManagerSystem/add.jsp");
		out.flush();
		out.close();
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	
	public void init() throws ServletException {
		
	}

}
