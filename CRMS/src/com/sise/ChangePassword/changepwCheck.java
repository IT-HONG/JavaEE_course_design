package com.sise.ChangePassword;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.sise.DBHelperControl.DBHelper;
import com.sise.LoginCheck.LoginBean;

public class changepwCheck extends HttpServlet {
	public void right() {
		String msg = "用户修改密码成功！";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	public void wrong1() {
		String msg = "用户输入两次新密码不相同，请重新输入！";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	public void wrong2() {
		String msg = "用户输入当前密码不正确，请重新输入！";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}

	public changepwCheck() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 String userName="";
         HttpSession session=request.getSession();
         ArrayList login=(ArrayList)session.getAttribute("login");
         if(login==null||login.size()==0){
                response.sendRedirect("http://localhost:8080/CRMS/login.jsp");
         }else{
             for(int i=login.size()-1;i>=0;i--){
                 LoginBean nn=(LoginBean)login.get(i);
                 userName=nn.getUserName();
             }
         }		
		String old_password=request.getParameter("old_pw");
		String new_password=request.getParameter("new_pw");
		String sure_password=request.getParameter("sure_pw");
		
		if (new_password.equals(sure_password)) {
			String sql="update user set Upass='"+new_password+"' where uid='"+userName+"'";
			int result=DBHelper.update(sql);
			if (result!=(-1)) {
				right();
				 response.sendRedirect("http://localhost:8080/CRMS/changepw.jsp");
				
			}else {
				wrong2();
				response.sendRedirect("http://localhost:8080/CRMS/changepw.jsp");
				
			}
		}else{
			 response.sendRedirect("http://localhost:8080/CRMS/changepw.jsp");
			wrong1();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
         doGet(request, response);
	}
	public void init() throws ServletException {
		
	}
}
