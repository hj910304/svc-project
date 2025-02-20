package com.example.demo;

import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.ResultSet; 
import java.sql.Statement;
import java.util.ArrayList;

public class DAO_comment{
	private String url="jdbc:h2:mem:testdb";
	private String uid="sa";
	private String upw="";
	public DAO_comment() {
		
		try {
			
			Class.forName("org.h2.Driver");
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	public ArrayList<DTO_comment> memberSelect(int idx){
		
		ArrayList<DTO_comment> dtos=new ArrayList<DTO_comment>();
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			
			con=DriverManager.getConnection(url,uid,upw);
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from svc_comments");
			
			while(rs.next()) {
				int seq=rs.getInt("seq");
				int id=rs.getInt("id");
				
				if(id!=idx) {
					
					continue;
				}
				
				String nickname=rs.getString("nickname");
				String content=rs.getString("content");
				String reg_date=rs.getString("reg_date"); 
				
				DTO_comment dto_comment=new DTO_comment(seq,id,nickname,content,reg_date);
				dtos.add(dto_comment);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(con!=null)con.close();
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		}
		return dtos;
	}
	public ArrayList<DTO_comment> Add_comment(int idx,String reg_nickname, String reg_content){
		ArrayList<DTO_comment> dtos=new ArrayList<DTO_comment>();
		
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		try {
			
			con=DriverManager.getConnection(url,uid,upw);
			stmt=con.createStatement();
			StringBuilder sb = new StringBuilder();
			String sql = sb.append("insert into svc_comments values( default, ")
		             //.append(" id = ")
		             .append(idx)
		             
		             .append(", '")
		             .append(reg_nickname)
		             .append("' , '")
		             .append(reg_content)
		             .append("' , '")
		             .append("2019-01-03")
		             .append("');").toString();
		  
	    	 
	    	 
	         stmt.executeUpdate(sql);
			
			
			con=DriverManager.getConnection(url,uid,upw);
			stmt=con.createStatement();
			rs=stmt.executeQuery("select * from svc_comments");
			
			while(rs.next()) {
				int seq=rs.getInt("seq");
				int id=rs.getInt("id");
				
				if(id!=idx) {
					
					continue;
				}
				
				String nickname=rs.getString("nickname");
				String content=rs.getString("content");
				String reg_date=rs.getString("reg_date"); 
				
				DTO_comment dto_comment=new DTO_comment(seq,id,nickname,content,reg_date);
				dtos.add(dto_comment);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			
			try {
				if(rs!=null)rs.close();
				if(stmt!=null)stmt.close();
				if(con!=null)con.close();
			}
			catch(Exception e) {
				
				e.printStackTrace();
			}
		}
		
		
		
		return dtos;
	}
	
}