package com.sise.feedbackManager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.connect.ConnectionManager;;

public class FeedbackCheck extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public FeedbackCheck() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("GBK");
		response.setCharacterEncoding("GBK");
		PrintWriter out = response.getWriter();
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String mail=request.getParameter("mail");
		String theme=request.getParameter("theme");
		String type=request.getParameter("type");
		String content=request.getParameter("text");
		if(name.equals("")){
			JOptionPane.showMessageDialog(null, "������Ϊ�գ�", "��Ϣ��ʾ", JOptionPane.YES_NO_CANCEL_OPTION);
			response.sendRedirect("http://localhost:7001/vacation_project/client_feedback.jsp");
		}else if (phone.equals("")) {
			JOptionPane.showMessageDialog(null, "��ϵ��ʽ����Ϊ�գ�", "��Ϣ��ʾ", JOptionPane.YES_NO_CANCEL_OPTION);
			response.sendRedirect("http://localhost:7001/vacation_project/client_feedback.jsp");
		}else if(phone.length()!=11){
			JOptionPane.showMessageDialog(null, "��ϵ��ʽ�ĳ��ȱ���Ϊ11λ��", "��Ϣ��ʾ", JOptionPane.YES_NO_CANCEL_OPTION);
			response.sendRedirect("http://localhost:7001/vacation_project/client_feedback.jsp");
		}else if (mail.equals("")) {
			JOptionPane.showMessageDialog(null, "���䲻��Ϊ�գ�", "��Ϣ��ʾ", JOptionPane.YES_NO_CANCEL_OPTION);
			response.sendRedirect("http://localhost:7001/vacation_project/client_feedback.jsp");
		}else if (content.equals("")) {
			JOptionPane.showMessageDialog(null, "�������ݲ���Ϊ�գ�", "��Ϣ��ʾ", JOptionPane.YES_NO_CANCEL_OPTION);
			response.sendRedirect("http://localhost:7001/vacation_project/client_feedback.jsp");
		}else {
			JOptionPane.showMessageDialog(null, "��л��ķ��������ǽ������Ľ��Լ������ʮ�����⣬���ǵ����޶�����", "��Ϣ��ʾ", JOptionPane.YES_NO_CANCEL_OPTION);
			response.sendRedirect("http://localhost:7001/vacation_project/client_feedback.jsp");
		}
		//��ȡ��ǰʱ��
		Date date=new Date();
		DateFormat f=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=f.format(date);
		ConnectionManager cm=new ConnectionManager();
		PreparedStatement ps;
		int i;
		try {
			ps=cm.getConnection().prepareStatement("insert into cm_client_feedback(f_client,phone,email,theme,type,s_time,tip) values('"+name+"','"+phone+"','"+mail+"','"+theme+"','"+type+"','"+time+"','"+content+"')");
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
