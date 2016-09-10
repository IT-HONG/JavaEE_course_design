package com.sise.FileManager;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.sise.DBHelperControl.DBHelper;

public class DownLoadServlet extends HttpServlet {
	public void right() {
		String msg = "文件上传成功！";
		int type = JOptionPane.YES_NO_CANCEL_OPTION;
		String title = "信息提示";
		JOptionPane.showMessageDialog(null, msg, title, type);
	}
	// 用户上传文件时候出现错误后的提示方法
			public void wrong1() {
				String msg = "您要下载的资源已被删除！！";
				int type = JOptionPane.YES_NO_CANCEL_OPTION;
				String title = "信息提示";
				JOptionPane.showMessageDialog(null, msg, title, type);
			}

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 String fileName = request.getParameter("filename");//get tomcat 's string formatter is ISO-8859-1
    	    byte[] fileNames = java.net.URLEncoder.encode(fileName,"ISO-8859-1").getBytes();//get inner tomcat 's byte content
    	    fileName = new String(fileNames,"GBK");//get url 's string formatter is utf-8
    	    fileName = java.net.URLDecoder.decode(fileName,"GBK");//decode string to chinese word
    	    System.out.println(fileName);
//        //上传的文件都是保存在/WEB-INF/upload目录下的子目录当中
//        String fileSaveRootPath=this.getServletContext().getRealPath("/WEB-INF/upload");
//        System.out.println(fileSaveRootPath);
//        //通过文件名找出文件的所在目录
//        String path = findFileSavePathByFileName(fileName,fileSaveRootPath);
//        System.out.println(path);
//        //得到要下载的文件
        String s1 = "select * from cm_documents where dc_name='"+fileName+"'";
		ResultSet rs = DBHelper.query(s1);
		String path=null;
		
			try {
				while (rs.next()) {
					path=rs.getString("url");
					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}  
			System.out.println(path);
        File file = new File(path + "\\" + fileName);
        //如果文件不存在
        if(!file.exists()){
        	this.wrong1();
            request.getRequestDispatcher("/message.jsp").forward(request, response);
            return;
        }
        //处理文件名
        String realname = fileName.substring(fileName.indexOf("_")+1);
        //设置响应头，控制浏览器下载该文件
        response.setHeader("content-disposition", "attachment;filename=" + URLEncoder.encode(realname, "UTF-8"));
        //读取要下载的文件，保存到文件输入流
        FileInputStream in = new FileInputStream(path + "\\" + fileName);
        //创建输出流
        OutputStream out = response.getOutputStream();
        //创建缓冲区
        byte buffer[] = new byte[1024];
        int len = 0;
        //循环将输入流中的内容读取到缓冲区当中
        while((len=in.read(buffer))>0){
            //输出缓冲区的内容到浏览器，实现文件下载
            out.write(buffer, 0, len);
        }
        //关闭文件输入流
        in.close();
        //关闭输出流
        out.close();
    }
    
    public String findFileSavePathByFileName(String filename,String saveRootPath){
        int hashcode = filename.hashCode();
        int dir1 = hashcode&0xf;  //0--15
        int dir2 = (hashcode&0xf0)>>4;  //0-15
        String dir = saveRootPath + "\\" + dir1 + "\\" + dir2;  //upload\2\3  upload\3\5
        File file = new File(dir);
        if(!file.exists()){
            //创建目录
            file.mkdirs();
        }
        return dir;
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}