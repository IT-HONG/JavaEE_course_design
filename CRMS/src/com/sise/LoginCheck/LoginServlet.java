package com.sise.LoginCheck;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.sise.DBHelperControl.DBHelper;

public class LoginServlet extends HttpServlet {
	// 用户分别出现错误后的提示方法
		public void wrong1() {
			String msg = "用户名不能为空！";
			int type = JOptionPane.YES_NO_CANCEL_OPTION;
			String title = "信息提示";
			JOptionPane.showMessageDialog(null, msg, title, type);
		}

		public void wrong2() {
			String msg = "用户密码不能为空，登录失败！";
			int type = JOptionPane.YES_NO_CANCEL_OPTION;
			String title = "信息提示";
			JOptionPane.showMessageDialog(null, msg, title, type);
		}

		public void wrong3() {
			String msg = "该用户尚未注册，登录失败！";
			int type = JOptionPane.YES_NO_CANCEL_OPTION;
			String title = "信息提示";
			JOptionPane.showMessageDialog(null, msg, title, type);
		}

		public void wrong4() {
			String msg = "用户密码不正确，登录失败！";
			int type = JOptionPane.YES_NO_CANCEL_OPTION;
			String title = "信息提示";
			JOptionPane.showMessageDialog(null, msg, title, type);
		}

		public void wrong5() {
			String msg = "用户权限不正确，登录失败！";
			int type = JOptionPane.YES_NO_CANCEL_OPTION;
			String title = "信息提示";
			JOptionPane.showMessageDialog(null, msg, title, type);
		}

		public LoginServlet() {
			super();
		}

		public void destroy() {
			super.destroy();
		}

		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			request.setCharacterEncoding("GBK");
			String userName = request.getParameter("TxtUserName");
			String password = request.getParameter("TxtPassword");
			String role = request.getParameter("role");
			if ("".equals(userName)) {
				this.wrong1();
				response.sendRedirect(request.getContextPath() + "/login.jsp");

			} else if ("".equals(password)) {
				this.wrong2();
				response.sendRedirect(request.getContextPath() + "/login.jsp");
			} else {
				try {
					String s1 = "select * from user";
					ResultSet rs = DBHelper.query(s1);
					int N = 0;
					int P = 0;
					while (rs.next()) {
						if (userName.equals(rs.getString("Uid"))) {
							N = 100000;
							if (password.equals(rs.getString("Upw"))) {
								P = 100000;
								if (role.equals(rs.getString("role"))) {
									LoginBean nn = new LoginBean();// 实例化保存个人信息的JavaBean
									nn.setUserName(userName);// 保存用户名
									nn.setPassword(password);// 保存密码
									nn.setRole(role);// 保存用户角色
									HttpSession session = request.getSession();// 获取session对象
									ArrayList login = new ArrayList();// 实例化列表对象
									login.add(nn);// 把个人信息保存到列表中
									session.setAttribute("login", login);// 把列表保存到session对象中，以便在别的页面中获取个人信息
									response.sendRedirect("http://localhost:8080/CRMS/admin_index.jsp");
								} else {
									wrong5();
									response.sendRedirect(request.getContextPath()
											+ "/login.jsp");
								}
							} else {

							}

						} else {
							N++;
						}
					}
					if (N < 100000) {
						wrong3();
						response.sendRedirect("http://localhost:8080/CRMS/login.jsp");
					} else if (P < 100000) {
						wrong4();
						response.sendRedirect("http://localhost:8080/CRMS/login.jsp");
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		}

		public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			doGet(request, response);
		}

		public void init() throws ServletException {
		}

}
