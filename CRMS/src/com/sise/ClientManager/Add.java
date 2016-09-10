package com.sise.ClientManager;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sise.DBHelperControl.DBHelper;

public class Add extends HttpServlet {
    
    private static final String CONTENT_TYPE="text/html,charset=GBK";

    public Add() {
	super();
    }

    public void destroy() {
	super.destroy(); // Just puts "destroy" string in log
	// Put your code here
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	response.setContentType(CONTENT_TYPE);
	PrintWriter out = response.getWriter();
	request.setCharacterEncoding("GBK");
	response.setCharacterEncoding("GBK");
	
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
	
	String sql="insert into cm_client "
		+ " values('"+id+"','"+name+"','"+address+"','"+tel+"','"+mail+"','"+time+"','"+n_time+"','"+linkman+"','"+level+"','"+industry+"','"+city+"','"
		+province+"','"+bank+"','"+bank_id+"','"+credit+"','"+integration+"')";
	
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
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	doGet(request, response);
    }

    public void init() throws ServletException {
	// Put your code here
    }

}
