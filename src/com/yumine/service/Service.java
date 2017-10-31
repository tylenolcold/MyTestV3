package com.yumine.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.rmi.CORBA.Stub;

import com.yumine.model.question_table;

public class Service {
	private Connection connection;
	private PreparedStatement pstmt;
	
	public Service() {
		connection  = new com.yumine.conn.Conn().getCon();
	}
	
	public boolean addQuestion(question_table qt) {
		try {
			pstmt = connection.prepareStatement("insert into question_table (text, A, B, C, D) values(?,?,?,?,?)");
			pstmt.setString(1, qt.getText());
			pstmt.setString(2, qt.getA());
			pstmt.setString(3, qt.getB());
			pstmt.setString(4, qt.getC());
			pstmt.setString(5, qt.getD());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		//return true;
	}
	
	public List queryAllQuestion() {
		List questions = new ArrayList();
		try {
			pstmt = connection.prepareStatement("select id, text, A, B, C, D from question_table");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				question_table qt = new question_table();
				qt.setId(rs.getInt(1));
				qt.setText(rs.getString(2));
				qt.setA(rs.getString(3));
				qt.setB(rs.getString(4));
				qt.setC(rs.getString(5));
				qt.setD(rs.getString(6));
				questions.add(qt);
			}
			return questions;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public question_table QueryQuestionById(int id) {
		try {
			pstmt = connection.prepareStatement("select id,text,A,B,C,D from question_table where id = ?");
			pstmt.setInt(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				question_table qt = new question_table();
				qt.setId(rs.getInt(1));
				qt.setText(rs.getString(2));
				qt.setA(rs.getString(3));
				qt.setB(rs.getString(4));
				qt.setC(rs.getString(5));
				qt.setD(rs.getString(6));
				return qt;
			}
			return null;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean UpdateQuestion(question_table qt) {
		try {
			pstmt = connection.prepareStatement("update question_table set text=?, A=?, B=?, C=?, D=? where id=?");
			
			pstmt.setString(1, qt.getText());
			pstmt.setString(2, qt.getA());
			pstmt.setString(3, qt.getB());
			pstmt.setString(4, qt.getC());
			pstmt.setString(5, qt.getD());
			pstmt.setInt(6, qt.getId());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}	
	}
	
	public boolean DeleteQuestion(int id) {
		try {
			pstmt = connection.prepareStatement("delete from question_table where id=?");
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
}
