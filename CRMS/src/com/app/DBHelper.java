package com.app;
import java.sql.*;
public class DBHelper {
 private Connection con;
 private Statement stm;
 private ResultSet rs;
 private String drivename="com.mysql.jdbc.Driver";
 private String url="jdbc:mysql://172.16.101.116:3306/client_relations";  //ѡ����ݿ�
 public  DBHelper(){
	         
 }
 public Connection getCon(){
	 try{
		 Class.forName(drivename);
	 }catch (ClassNotFoundException e) {
		e.printStackTrace();                              
	}
	 try{                                
		 con=DriverManager.getConnection(url,"root","123456");
	 }catch (Exception e) {
		e.printStackTrace();
		con=null;
	}
	 return con;
 }
 public Statement getStm(){
	 try{
		 con=getCon();
		 stm=con.createStatement();
	 }catch (Exception e) {
		e.printStackTrace(System.err);
	}
	 return stm;
 }
 public Statement getStmed(){
	 try{
		 con=getCon();//��ȡ���Ӷ���
		 stm=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);//SQL���ִ�ж���
	 }catch (Exception e) {
		e.printStackTrace(System.err);
	}
    return stm;
 }
 public ResultSet getAllRs(){
	 String sql="select * from cm_linkman";               //ѡ���
	 try{
		 stm=getStmed();
		 rs=stm.executeQuery(sql);
	 }catch (SQLException e) {
		 e.printStackTrace();
	}
	 return rs;
 }
 
 public ResultSet getPartRs(String subsql,String subsqlvalue){             //��ѯ
	 if(subsql==null)
		 subsql="";
	 if(subsqlvalue==null)
		 subsqlvalue="";
	 String sql="select * from cm_linkman where  "+subsql+" ='"+subsqlvalue+"'";
	 try{
		 stm=getStmed();
		 rs=stm.executeQuery(sql);
	 }catch (SQLException e) {
		 e.printStackTrace();
	}
	 return rs;
 }
 public int insert(String sql){            //����
	 int num=-1;
	 if(sql==null)
		 sql="";
	 try{
		 stm=getStmed();
		 num=stm.executeUpdate(sql);
		 
	 }catch (Exception e) {
		 e.printStackTrace();
	}
	 return num;
 }
 public int delete(String sql){            //ɾ��
	 int num=0;
	 if(sql==null)sql="";
	 try{
		 stm=getStmed();
		 num=stm.executeUpdate(sql);
	 }catch (Exception e) {
		 e.printStackTrace();
	}
	 return num;
 }
 
 public int getChange(String sql){ 
	 int i = 0;
	 try{
		 stm=getStmed();
		i = stm.executeUpdate(sql);
	 }catch (SQLException e) {
		 e.printStackTrace();
	}
	 return i;
 }
 
 
 public void closed(){
	 try{
		 if(rs!=null)rs.close();
	 }catch (Exception e) {
		e.printStackTrace();
	}
	 
	 try{
		 if(stm!=null)stm.close();
	 }catch (Exception e) {
		e.printStackTrace();
	}
	 
	 try{
		 if(con!=null)con.close();
	 }catch (Exception e) {
		e.printStackTrace();
	}
 }
}
