/**
 * 
 */
package com.sise.linkRecordManager;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sise.DBHelperControl.*;

/**   
 *    
 * ��Ŀ��ƣ�ManagerSystem   
 * ����ƣ�link_record_edit   
 * ��������   
 * �����ˣ�����
 * ����ʱ�䣺2015��7��8�� ����5:26:47   
 * �޸��ˣ�Lim   
 * �޸�ʱ�䣺2015��7��8�� ����5:26:47   
 * �޸ı�ע��  
 * @version 1.0.0   
 *    
 */

public class link_record_edit extends HttpServlet {

	
	public link_record_edit() {
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
		String s1= request.getParameter("t1");
		String s2= request.getParameter("t2");
		String s3= request.getParameter("t3");
		String s4= request.getParameter("t4");
		String s5= request.getParameter("t5");
		String s6= (String)request.getSession().getAttribute("id");
		System.out.println(s1+" "+s2+" "+s3+" "+s4+" "+s5+" "+s6);
		String s7="update cm_link_record set type='"+s1+"',way='"+s2
				+"',recordtime='"+s3+"',recordman='"+s4+"',peoples='"+s5+"' where linkid='"+s6+"'";
		DBHelper.update(s7);
		response.sendRedirect("http://localhost:8080/CRMS/linkRecordManager/all_connection.jsp");
		out.flush();
		out.close();
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
