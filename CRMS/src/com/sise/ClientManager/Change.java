package com.sise.ClientManager;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sise.DBHelperControl.DBHelper;

public class Change extends HttpServlet {

    private static final String CONTENT_TYPE="text/html,charset=GBK";

    public Change() {
	super();
    }

    public void destroy() {
	super.destroy(); // Just puts "destroy" string in log
	// Put your code here
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	response.setContentType(CONTENT_TYPE);
	request.setCharacterEncoding("GBK");
	response.setCharacterEncoding("GBK");
	
	PrintWriter out=response.getWriter();
	
	String id=request.getParameter("cid");
	String name=request.getParameter("cname");
	String address=request.getParameter("cadd");
	String tel=request.getParameter("ccall");
	String mail=request.getParameter("cmail");
	String time=request.getParameter("year")+"-"+request.getParameter("month")+"-"+request.getParameter("day");
	String n_time=request.getParameter("n_year")+"-"+request.getParameter("n_month")+"-"+request.getParameter("n_day");
	String linkman=request.getParameter("linkman");
	String level=request.getParameter("level");
	String industry=request.getParameter("c_industry");
	String province=request.getParameter("province");
	String city=request.getParameter("city");
	String bank=request.getParameter("bank");
	String bank_id=request.getParameter("bank_id");
	String credit=request.getParameter("credit");
	String integration=request.getParameter("integration");
	String sql="update cm_client set cid='"+id+"',cname='"+name+"',cadd='"+address+"',ccall='"+tel+"',cmail='"+mail+"',add_time='"+time
		  +"',next_time='"+n_time+"',linkman='"+linkman+"',c_level='"+level+"',c_industry='"+industry+"',province='"+province+
		  "',city='"+city+"',bank='"+bank+"',bank_id='"+bank_id+"',credit='"+credit+"',integration='"+integration+"'where cid='"+id+"'";
	
	System.out.println(sql);
	
	out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
	out.println("<HTML>");
	out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
	out.println("  <BODY>");
	DBHelper.update(sql);
	out.println("<script>alert(\"�ύ�ɹ�\")</script>");
	out.println("  </BODY>");
	out.println("</HTML>");
	out.flush();
	out.close();
//	response.sendRedirect("AllClient.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	doGet(request, response);
    }

    public void init() throws ServletException {
    }

}
