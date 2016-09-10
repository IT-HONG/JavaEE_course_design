/**
 * 
 */
package com.sise.DBHelperControl;

/**  
* ��Ŀ��ƣ�lab13   
* ����ƣ�DBConfig   
* �ӿ���������ݿ����ýӿ�     
* �����ˣ������  
* ����ʱ�䣺2013-11-25 ����2:36:16   
* �޸��ˣ�Administrator   
* �޸�ʱ�䣺2013-11-25 ����2:36:16   
* �޸ı�ע��   
* @version 1.0.0   
*
 */
public interface DBConfig {
	//MySql��ݿ�����
//	String driver="com.mysql.jdbc.Driver";
//	String url="jdbc:mysql://localhost:3306/db_mysise";
//	String user="root";
//	String password="root";

	//SqlServer2005/2008��ݿ����ã���ο���ομ����
	
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://172.16.101.116:3306/client_relations";
	String user="root";
	String password="123456";
	
	
}
